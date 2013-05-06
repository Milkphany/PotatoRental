package com.potatorental.service;

import com.potatorental.model.Location;
import com.potatorental.repository.LocationDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import javax.sql.DataSource;

/**
 * User: Milky
 * Date: 5/6/13
 * Time: 12:35 PM
 */
public class LocationDaoImpl implements LocationDao {

    private JdbcTemplate jdbcTemplate;

    @Autowired
    public LocationDaoImpl(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }

    @Override
    public void insertLocation(Location location) {
        String sql = "insert ignore into location values(?, ?, ?)";
        jdbcTemplate.update(sql, location.getZipCode(), location.getCity(), location.getState());
    }
}
