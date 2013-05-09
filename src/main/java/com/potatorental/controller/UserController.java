package com.potatorental.controller;

import com.potatorental.model.Customer;
import com.potatorental.model.Movie;
import com.potatorental.repository.AccountDao;
import com.potatorental.repository.PersonsDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * User: Milky
 * Date: 4/21/13
 * Time: 5:42 PM
 */
@Controller
@RequestMapping("/users")
@SessionAttributes("customer")
public class UserController {

    private PersonsDao personsDao;
    private AccountDao accountDao;

    @Autowired
    public UserController(PersonsDao personsDao, AccountDao accountDao) {
        this.personsDao = personsDao;
        this.accountDao = accountDao;
    }

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView allUsers(ModelMap modelMap) {
        List<Customer> customers = personsDao.getAllCustomers();
        modelMap.addAttribute("users", customers);
        return new ModelAndView("usersall", modelMap);
    }

    @RequestMapping(value = "search", method = RequestMethod.GET)
    public String searchUsers() {
        return "usersearch";
    }

    @ModelAttribute("editForm")
    public Customer getCustomer() {
        return new Customer();
    }

    @RequestMapping(value = "{userid:.*}", method = RequestMethod.GET)
    public ModelAndView getUser(@PathVariable String userid, ModelMap modelMap) {
        Customer customer = (Customer) personsDao.getPersonByEmail(userid);
        modelMap.addAttribute("customer", customer);

        return new ModelAndView("useraccount", modelMap);
    }

    @RequestMapping(value = "{userid:.*}", method = RequestMethod.POST)
    public String updateuser(@PathVariable String userid, ModelMap modelMap, @ModelAttribute("customer") Customer customer) {
        personsDao.updateCustomer(customer);

        return "redirect:/users/{userid}";
    }

    @RequestMapping(value = "{userid}/rental", method = RequestMethod.GET)
    public String getRentals(@PathVariable String userid, ModelMap modelMap) {
        return "rental";
    }

    @RequestMapping(value = "{userid}/rental/{rentalid:.*}")
    public String getRental(@PathVariable String userid, @PathVariable int rentalid, ModelMap modelMap) {
        return "rental";
    }
}
