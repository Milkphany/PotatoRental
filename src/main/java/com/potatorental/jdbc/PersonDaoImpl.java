package com.potatorental.jdbc;

import com.potatorental.model.Customer;
import com.potatorental.model.Employee;
import com.potatorental.model.Person;
import com.potatorental.repository.CustomerDAO;
import org.joda.time.LocalDate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import javax.sql.DataSource;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * User: Milky
 * Date: 5/4/13
 * Time: 7:58 PM
 */
public class PersonDaoImpl implements CustomerDAO {

    protected JdbcTemplate jdbcTemplate;

    @Autowired
    protected DataSource dataSource;

    @Autowired
    public PersonDaoImpl(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }

    @Autowired
    public void setDataSource(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    public Person getPersonByEmail(String email) {
        String sql = "select * from person where email = ?";
        return getPersonRole(jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<>(Person.class), email));

        /*return jdbcTemplate.queryForObject(sql, new PersonMapper(), email);*/
    }

   /* private class PersonMapper implements RowMapper<Person> {

        @Override
        public Person mapRow(ResultSet resultSet, int i) throws SQLException {
            Person person = new Person();

*//*            TODO delete this
            person.setRating(resultSet.getInt("rating"));*//*
            person.setSsn(resultSet.getInt("ssn"));
            person.setLastName(resultSet.getString("lastname"));
            person.setFirstName(resultSet.getString("firstname"));
            person.setAddress(resultSet.getString("address"));
            person.setZipCode(resultSet.getInt("zipcode"));
            person.setTelephone(resultSet.getBigDecimal("telephone"));
            person.setEmail(resultSet.getString("email"));
            person.setPass(resultSet.getString("pass"));

            return person;
        }
    }*/

    private Person getPersonRole(Person person) {
        String customersql = "select rating from customer where id = ?";
        String employeesql = "select id, startdate, hourlyrate from employee where ssn = ?";

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

    public boolean isPersonEmployee(Person person) {
        return true;
    }

    private boolean isPersonCustomer(Person person) {
        String sql = "select count(exists(select 1 from customer where id = ?))";
        return jdbcTemplate.queryForObject(sql, Integer.class, person.getSsn()) != null;
    }

    @Override
    public void createCustomer() {
        //To change body of implemented methods use File | Settings | File Templates.
    }

/*    @Override
    public Customer getCustomerByEmail(String email) {
        String sql = "select id from customer where id = ?";
        Person person =  getPersonByEmail(email);

        if (person == null || !isPersonCustomer(person))
            return null;

        Customer customer = new Customer(person);
        customer.setRating(jdbcTemplate.queryForObject(sql, Integer.class, person.getSsn()));

        return customer;
    }*/

    @Override
    public void updateCustomer() {
        //To change body of implemented methods use File | Settings | File Templates.
    }
}
