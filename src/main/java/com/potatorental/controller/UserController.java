package com.potatorental.controller;

import com.potatorental.jdbc.CustomerDAOImpl;
import com.potatorental.model.Customer;
import com.potatorental.repository.CustomerDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.sql.DataSource;
import java.security.Principal;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Collection;

/**
 * User: Milky
 * Date: 4/21/13
 * Time: 5:42 PM
 */
@Controller
@RequestMapping("/user/*")
@SessionAttributes("user")
public class UserController {

    private final CustomerDAOImpl customerDAOImpl;

    @Autowired
    public UserController(CustomerDAOImpl customerDAOImpl) {
        this.customerDAOImpl = customerDAOImpl;
    }

    @RequestMapping(value = "/{userid}", method = RequestMethod.GET)
    public String getUser(@PathVariable String userid, ModelMap modelMap) {
        modelMap.addAttribute("message", "Your user id is " + userid);
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

    @RequestMapping(value = "profile", method = RequestMethod.GET)
    public String getProfile(ModelMap modelMap, Principal principal) {
        modelMap.addAttribute("userid", principal.getName());
        modelMap.addAttribute("message", "This is going to be " + principal.getName() + "'s profile");

        Customer customer = customerDAOImpl.getCustomerByEmail(principal.getName());
        modelMap.addAttribute("user", customer);

        return "userprofile";
    }

    @RequestMapping(value = "queue", method = RequestMethod.GET)
    public String getQueue(ModelMap modelMap) {
        return "queue";
    }
}
