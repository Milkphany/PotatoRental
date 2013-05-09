package com.potatorental.service;

import com.potatorental.model.Customer;
import com.potatorental.model.Employee;
import com.potatorental.model.Movie;
import com.potatorental.model.Purchase;
import com.potatorental.repository.ManagerDao;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import javax.sql.DataSource;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import java.util.*;

/**
 * User: Milky
 * Date: 5/9/13
 * Time: 12:48 PM
 */
public class ManagerDaoImpl implements ManagerDao {

    private JdbcTemplate jdbcTemplate;

    public ManagerDaoImpl(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }

    @Override
    public Float getSalesReport(Date date) {
        String sql = "SELECT SUM(Money) FROM ( " +
                "SELECT sum(Money) FROM ( " +
                "                SELECT COUNT(*) * 10 AS Money FROM Account A WHERE A.Type = 'lim' AND A.DateOpened < " +
                "                ? UNION SELECT COUNT(*) * 15 AS Money FROM Account A WHERE A.Type = 'one' AND A.DateOpened <  " +
                "                ? UNION SELECT COUNT(*) * 20 AS Money FROM Account A WHERE A.Type = 'two' AND A.DateOpened <  " +
                "                ? UNION SELECT COUNT(*) * 25 AS Money FROM Account A WHERE A.Type = 'three' AND A.DateOpened < " +
                "                ?) AS sales";
        return jdbcTemplate.queryForObject(sql, Float.class, date, date, date, date);
    }

    @Override
    public Map<Integer, Purchase> getRentalsByName(String name) {
        String sql = "SELECT R.purchId, A.Customer, P.DateTime, P.ReturnDate " +
                "FROM Movie M, Rental R, Account A, Purchase P " +
                "WHERE A.Id = R.AccountId AND P.Id = R.PurchId " +
                "AND M.Id = R.MovieId AND M.Name = ?";

        /*Map<Integer, Purchase> maps = new LinkedHashMap<>();
        for (Map map : jdbcTemplate.queryForList(sql, name)) {
            map.get("")
        }*/

        return null;
    }

    @Override
    public List<Movie> getRentalsByType(String type) {
        return null;  //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public List<Movie> getRentalsByCustomer(Customer customer) {
        return null;  //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public Employee bestEmployee() {
        String bestEmployee = "SELECT C.employid FROM CountTrans C WHERE C.NumTrans >= ALL (SELECT D.NumTrans FROM CountTrans D)";

        return (Employee) jdbcTemplate.queryForObject(bestEmployee, new RowMapper<Employee>() {
            @Override
            public Employee mapRow(ResultSet resultSet, int i) throws SQLException {
                Employee employee = new Employee();
                employee.setId(resultSet.getInt("employid"));

                return employee;
            }
        });
    }

    @Override
    public List<Customer> mostActive() {
        return null;  //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public List<Movie> mostRented() {
        return null;  //To change body of implemented methods use File | Settings | File Templates.
    }
}
