package com.potatorental.jdbc;

import com.potatorental.model.Customer;
import com.potatorental.repository.CustomerDAO;
import org.springframework.beans.factory.annotation.Autowired;
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
public class CustomerDAOImpl implements CustomerDAO {

    private JdbcTemplate jdbcTemplate;

    @Autowired
    private DataSource dataSource;

    @Autowired
    public void setDataSource(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    @Override
    public void createCustomer() {
        //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public Customer getCustomerByEmail(String email) {
        jdbcTemplate = new JdbcTemplate(dataSource);

        String sql = "select * from customer, person where email = ? and id = ssn";
        return jdbcTemplate.queryForObject(sql, new CustomerMapper() , email);
    }

    private class CustomerMapper implements RowMapper<Customer> {

        @Override
        public Customer mapRow(ResultSet resultSet, int i) throws SQLException {
            Customer customer = new Customer();

            customer.setId(resultSet.getInt("id"));
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
    }

    @Override
    public void updateCustomer() {
        //To change body of implemented methods use File | Settings | File Templates.
    }

}
