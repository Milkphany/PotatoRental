package com.potatorental.service;

import com.potatorental.model.Customer;
import com.potatorental.model.Employee;
import com.potatorental.model.Location;
import com.potatorental.model.Person;
import com.potatorental.repository.AccountDao;
import com.potatorental.repository.LocationDao;
import com.potatorental.repository.PersonsDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import javax.sql.DataSource;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

/**
 * User: Milky
 * Date: 5/4/13
 * Time: 7:58 PM
 */
public class PersonsDaoImpl implements PersonsDao {

    private JdbcTemplate jdbcTemplate;

    private final LocationDao locationDao;
    private final AccountDao accountDao;

    @Autowired
    public PersonsDaoImpl(DataSource dataSource, LocationDao locationDao, AccountDao accountDao) {
        this.accountDao = accountDao;
        jdbcTemplate = new JdbcTemplate(dataSource);
        this.locationDao = locationDao;
    }

    @Override
    public Person getPersonByEmail(String email) {
        String sql = "select * from person where email = ?";
        return getPersonRole(jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<>(Person.class), email));
    }

    @Override
    public Employee getEmployeeByEmail(String email) {
        String sql = "select * from employee where ssn = ?";
        Person person = getPersonByEmail(email);
        return jdbcTemplate.queryForObject(sql, new EmployeeMapper(person), person.getSsn());
    }

    @Override
    public List<Customer> getAllCustomers() {
        String sql = "select * from person, customer where ssn = id";

        return jdbcTemplate.query(sql, new RowMapper<Customer>() {
            @Override
            public Customer mapRow(ResultSet resultSet, int i) throws SQLException {
                Customer customer = new Customer();

                customer.setRating(resultSet.getInt("rating"));
                customer.setEmail(resultSet.getString("email"));
                customer.setAddress(resultSet.getString("address"));
                customer.setZipCode(resultSet.getInt("zipcode"));
                customer.setFirstName(resultSet.getString("firstname"));
                customer.setLastName(resultSet.getString("lastname"));
                customer.setSsn(resultSet.getInt("ssn"));
                customer.setTelephone(resultSet.getBigDecimal("telephone"));

                return customer;
            }
        });
    }

    @Override
    public List<Employee> getAllEmployees() {
        String sql = "select * from person p, employee e where p.ssn = e.ssn";
        return jdbcTemplate.query(sql, new RowMapper<Employee>() {
            @Override
            public Employee mapRow(ResultSet resultSet, int i) throws SQLException {
                Employee employee = new Employee();

                employee.setId(resultSet.getInt("id"));
                employee.setHourlyRate(resultSet.getFloat("hourlyrate"));
                employee.setIsManager(resultSet.getBoolean("manager"));
                employee.setStartDate(resultSet.getDate("startdate"));
                employee.setEmail(resultSet.getString("email"));
                employee.setAddress(resultSet.getString("address"));
                employee.setZipCode(resultSet.getInt("zipcode"));
                employee.setFirstName(resultSet.getString("firstname"));
                employee.setLastName(resultSet.getString("lastname"));
                employee.setSsn(resultSet.getInt("ssn"));
                employee.setTelephone(resultSet.getBigDecimal("telephone"));

                return employee;            }
        });
    }

    @Override
    public void updateEmployee(Employee e) {
        String sql = "update employee e, person p set p.ssn = ?, " +
                "p.lastname = ?, p.firstname = ?, p.telephone = ?, " +
                "p.email = ?, p.pass = ?, e.hourlyrate = ? where " +
                "p.ssn = e.ssn and e.id = ?";

        jdbcTemplate.update(sql, e.getSsn(), e.getLastName(), e.getFirstName(), e.getTelephone(), e.getEmail(),
                e.getPass(), e.getHourlyRate(), e.getId());
    }

    @Override
    public Location getLocationByZipCode(Integer zipCode) {
        String sql = "select * from location where zipcode = ?";
        return jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<>(Location.class), zipCode);
    }

    @Override
    public void recordOrder(int employeeid, int accountid, int movieid) {
        String buy = "insert into purchase (datetime) values (?)";
        int t = jdbcTemplate.update(buy, new Date());

        String rent = "insert into rental values(?, ?, ?, LAST_INSERT_ID())";
        jdbcTemplate.update(rent, accountid, employeeid, movieid);

        String remove = "delete from movieq where accountid = ? and movieid = ?";
        jdbcTemplate.update(remove, accountid, movieid);
    }

    private Person getPersonRole(Person person) {
        String customersql = "select rating from customer where id = ?";
        String employeesql = "select id, startdate, hourlyrate, manager from employee where ssn = ?";

        try {
            return jdbcTemplate.queryForObject(customersql, new CustomerMapper(person), person.getSsn());
        } catch (DataAccessException e) {
            return jdbcTemplate.queryForObject(employeesql, new EmployeeMapper(person), person.getSsn());
        }
    }

    private class EmployeeMapper implements RowMapper<Employee> {

        private Person person;

        public EmployeeMapper(Person person) {
            this.person = person;
        }

        @Override
        public Employee mapRow(ResultSet resultSet, int i) throws SQLException {
            Employee employee = new Employee(person);
            employee.setIsManager(resultSet.getBoolean("manager"));
            employee.setHourlyRate(resultSet.getFloat("hourlyrate"));
            employee.setId(resultSet.getInt("id"));
            employee.setStartDate(resultSet.getDate("startdate"));

            return employee;
        }
    }

    private class CustomerMapper implements RowMapper<Customer> {

        private Person person;

        public CustomerMapper(Person person) {
            this.person = person;
        }

        @Override
        public Customer mapRow(ResultSet resultSet, int i) throws SQLException {
            Customer customer = new Customer(person);
            customer.setRating(resultSet.getInt("rating"));

            return customer;
        }
    }

    @Override
    public void insertCustomer(Customer customer, Location location) {
        String personsql = "insert into person values (?, ?, ?, ?, ?, ?, ?, ?)";
        String customersql = "insert into customer values (?, ?)";

        locationDao.insertLocation(location);
        jdbcTemplate.update(personsql, customer.getSsn(), customer.getLastName(), customer.getFirstName(),
                customer.getAddress(), customer.getZipCode(), customer.getTelephone(), customer.getEmail(), customer.getPass());
        jdbcTemplate.update(customersql, customer.getSsn(), 1);
    }

    @Override
    public boolean updateCustomer(Customer customer) {
        String sql = "update customer c, person p " +
                "set p.lastname = ?, p.firstname = ?, p.address = ?, p.zipcode = ?," +
                "p.telephone = ?, c.rating = ? where ssn = id and p.ssn = ?";

        /*TODO Can update user except the zipcode cause it has a foreign key constraint, must add so it inserts zipcode if doesnt exist*/

        return jdbcTemplate.update(sql, customer.getLastName(), customer.getFirstName(), customer.getAddress(),
                customer.getZipCode(), customer.getTelephone(), customer.getRating(), customer.getSsn()) == 1;
    }

    @Override
    public boolean isEmailExist(String email) {
        String sql = "select count(*) from person where email = ?";
        return jdbcTemplate.queryForObject(sql, Integer.class, email) == 0 ? false : true;
    }
}
