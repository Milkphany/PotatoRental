package com.potatorental.jdbc;

import com.potatorental.model.Customer;
import com.potatorental.model.Person;
import com.potatorental.repository.CustomerDAO;
import org.springframework.beans.factory.annotation.Autowired;
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
        return jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<>(Person.class), email);

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

    public boolean isPersonEmployee(Person person) {
        return true;
    }

    public boolean isPersonCustomer(Person person) {
        String sql = "select count(exists(select 1 from customer where id = ?))";
        return jdbcTemplate.queryForObject(sql, Integer.class, person.getSsn()) != null;
    }

    @Override
    public void createCustomer() {
        //To change body of implemented methods use File | Settings | File Templates.
    }

    public Customer getCustomerByPerson(Person person) {
        String sql = "select id from customer where id = ?";
        Customer customer = new Customer(person);

        customer.setRating(jdbcTemplate.queryForObject(sql, Integer.class, person.getSsn()));

        return customer;
    }

    @Override
    public Customer getCustomerByEmail(String email) {
        String sql = "select id from customer where id = ?";
        Person person =  getPersonByEmail(email);

        if (person == null || !isPersonCustomer(person))
            return null;

        Customer customer = new Customer(person);
        customer.setRating(jdbcTemplate.queryForObject(sql, Integer.class, person.getSsn()));

        return customer;
    }

    @Override
    public void updateCustomer() {
        //To change body of implemented methods use File | Settings | File Templates.
    }
}
