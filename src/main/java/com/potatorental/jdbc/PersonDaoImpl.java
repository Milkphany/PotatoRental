package com.potatorental.jdbc;

import com.potatorental.model.Person;
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
public abstract class PersonDaoImpl {

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

    private class PersonMapper implements RowMapper<Person> {

        @Override
        public Person mapRow(ResultSet resultSet, int i) throws SQLException {
            Person person = new Person();

/*            TODO delete this
            person.setRating(resultSet.getInt("rating"));*/
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
    }

    public boolean isPersonEmployee(Person person) {
        return true;
    }

    public boolean isPersonCustomer(Person person) {
        return true;
    }
}
