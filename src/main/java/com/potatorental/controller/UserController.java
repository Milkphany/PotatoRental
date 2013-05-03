package com.potatorental.controller;

import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * User: Milky
 * Date: 4/21/13
 * Time: 5:42 PM
 */
@Controller
@RequestMapping("/user/*")
@SessionAttributes("user")
public class UserController {

    private DataSource dataSource;
//
//    @RequestMapping(value = "/{userid}", method = RequestMethod.GET)
//    public String getUser(@PathVariable String userid, ModelMap modelMap) {
//        String name = "default";
//        DriverManagerDataSource db = new DriverManagerDataSource();
//        db.setDriverClassName("com.mysql.jdbc.Driver");
//        db.setUrl("jdbc:mysql://25.105.234.142:3306/potatocat");
//        db.setUsername("spring");
//        db.setPassword("potato");
//        dataSource = db;
//        Connection connection = null;
//        try {
//            connection = dataSource.getConnection();
//            PreparedStatement ps = connection.prepareStatement("select * from person where lastname = ?");
//            ps.setString(1, userid);
//            ResultSet rs = ps.executeQuery();
//
//            if (rs.next())
//                name = rs.getString("firstname");
//            else
//                name = "failure";
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//
//        modelMap.addAttribute("message", name);
//        return "userprofile";
//    }

    @RequestMapping(value = "/{userid}", method = RequestMethod.GET)
    public String getUser(@PathVariable String userid, ModelMap modelMap) {

        return "userprofile";
    }

    @RequestMapping(value = "{userid}/rental", method = RequestMethod.GET)
    public String getRental(ModelMap modelMap) {
        return "userprofile";
    }

    @RequestMapping(value = "{userid}/rental/{rentalid}")
    public String getRentals(@PathVariable int rentalid, ModelMap modelMap) {
        return "userprofile";
    }
}
