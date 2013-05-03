package com.potatorental.service;

import com.potatorental.model.Person;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import javax.sql.DataSource;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 * User: Milky
 * Date: 5/3/13
 * Time: 3:31 AM
 */
public class PersonDetailService implements UserDetailsService {

    private JdbcTemplate jdbcTemplate;
    private DataSource dataSource;

    @Override
    public UserDetails loadUserByUsername(final String email) throws UsernameNotFoundException {

        String sql = "select email, pass, ssn from person where email = ?";

        jdbcTemplate = new JdbcTemplate(dataSource);
        Person person = jdbcTemplate.queryForObject(sql, new PersonMapper(), email);

        ArrayList<GrantedAuthority> list = new ArrayList<>();

        list.add(new GrantedAuthority() {
            @Override
            public String getAuthority() {
                return "ROLE_USER";
            }
        });

        return new User(person.getEmail(), person.getPassword(), list);
    }

    private class PersonMapper implements RowMapper<Person> {

        @Override
        public Person mapRow(ResultSet resultSet, int i) throws SQLException {
            Person person = new Person();
            person.setEmail(resultSet.getString("email"));
            person.setPassword(resultSet.getString("pass"));
            person.setSsn(resultSet.getInt("ssn"));

            return person;
        }
    }

    public void setDataSource(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    public DataSource getDataSource() {
        return dataSource;
    }
}
