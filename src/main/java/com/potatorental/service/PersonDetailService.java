package com.potatorental.service;

import com.potatorental.model.Person;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 * User: Milky
 * Date: 5/3/13
 * Time: 3:31 AM
 */
@Repository
public class PersonDetailService implements UserDetailsService {

    private JdbcTemplate jdbcTemplate;

    @Autowired
    private DataSource dataSource;

    @Override
    public UserDetails loadUserByUsername(final String email) throws UsernameNotFoundException {

        String sql = "select email, pass, ssn from person where email = ?";

        jdbcTemplate = new JdbcTemplate(dataSource);
        Person person = jdbcTemplate.queryForObject(sql, new PersonMapper(), email);

        ArrayList<GrantedAuthority> list = getUserAuthority(person);

        return new User(person.getEmail(), person.getPass(), list);
    }

    private ArrayList<GrantedAuthority> getUserAuthority(Person person) {
        String sql = "select count(*) from customer where id = ?";

        ArrayList<GrantedAuthority> list = new ArrayList<>();
        if (jdbcTemplate.queryForObject(sql, Integer.class, person.getSsn()) != 0) {
            list.add(new UserGrantedAuthority("ROLE_USER"));
        } else {
            String checkManage = "select count(*) from employee where ssn = ? and manager = true";

            if (jdbcTemplate.queryForObject(checkManage, Integer.class, person.getSsn()) != 0) {
                list.add(new UserGrantedAuthority("ROLE_MANAGER"));
                list.add(new UserGrantedAuthority("ROLE_STAFF"));
            } else {
                list.add(new UserGrantedAuthority("ROLE_STAFF"));
            }
        }

        return list;
    }

    private class UserGrantedAuthority implements GrantedAuthority {

        public String authority;

        public UserGrantedAuthority(String authority) {
            this.authority = authority;
        }

        @Override
        public String getAuthority() {
            return authority;
        }
    }
    private class PersonMapper implements RowMapper<Person> {

        @Override
        public Person mapRow(ResultSet resultSet, int i) throws SQLException {
            Person person = new Person();
            person.setEmail(resultSet.getString("email"));
            person.setPass(resultSet.getString("pass"));
            person.setSsn(resultSet.getInt("ssn"));

            return person;
        }
    }

    @Autowired
    public void setDataSource(DataSource dataSource) {
        this.dataSource = dataSource;
    }
}
