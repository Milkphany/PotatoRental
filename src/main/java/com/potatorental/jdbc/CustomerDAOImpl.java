package com.potatorental.jdbc;

import com.potatorental.model.Customer;
import com.potatorental.model.Person;
import com.potatorental.repository.CustomerDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.IncorrectResultSizeDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * User: Milky
 * Date: 5/4/13
 * Time: 2:21 AM
 */
@Repository
public class CustomerDAOImpl extends PersonDaoImpl implements CustomerDAO {

    @Autowired
    public CustomerDAOImpl(DataSource dataSource) {
        super(dataSource);
    }

    @Override
    public void createCustomer() {
        //To change body of implemented methods use File | Settings | File Templates.
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

/*    private class CustomerMapper implements RowMapper<Customer> {

        @Override
        public Customer mapRow(ResultSet resultSet, int i) throws SQLException {
            Customer customer = new Customer();

            customer.setRating(resultSet.getInt("rating"));
            customer.setSsn(resultSet.getInt("ssn"));
            customer.setLastName(resultSet.getString("lastname"));
            customer.setFirstName(resultSet.getString("firstname"));
            customer.setAddress(resultSet.getString("address"));
            customer.setZipCode(resultSet.getInt("zipcode"));
            customer.setTelephone(resultSet.getBigDecimal("telephone"));
            customer.setEmail(resultSet.getString("email"));
            customer.setPassword(resultSet.getString("pass"));

            return customer;
        }
    }*/

    @Override
    public void updateCustomer() {
        //To change body of implemented methods use File | Settings | File Templates.
    }

}
