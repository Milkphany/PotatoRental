package com.potatorental.controller;

import com.potatorental.jdbc.PersonDaoImpl;
import com.potatorental.model.Customer;
import com.potatorental.model.Person;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpServletRequest;
import java.security.Principal;


@Controller
@RequestMapping("/")
@SessionAttributes("user")
public class HomeController {

    @Autowired
    private final PersonDaoImpl personDAOImpl;

    @Autowired
    public HomeController(PersonDaoImpl personDAOImpl ) {
        this.personDAOImpl = personDAOImpl;
    }

    @RequestMapping(method = RequestMethod.GET)
    public String printWelcome() {
        return "home";
    }

    @RequestMapping(value = "home", method = RequestMethod.GET)
    public String printHome() {
        return "home";
    }

    @RequestMapping(value = "account", method = RequestMethod.GET)
    public String getProfile(ModelMap modelMap, Principal principal) {
        modelMap.addAttribute("message", "This is going to be " + principal.getName() + "'s profile");

        if (modelMap.get("user") == null) {
            Person person = personDAOImpl.getPersonByEmail(principal.getName());
            modelMap.addAttribute("user", person);
            if (person instanceof Customer)
                modelMap.addAttribute("customer", true);
            else
                modelMap.addAttribute("employee", true);
        }

        return "account";
    }

    @RequestMapping(value = "account/edit", method = RequestMethod.GET)
    public String editProfile() {
        return "useredit";
    }

    @RequestMapping(value = "queue", method = RequestMethod.GET)
    public String getQueue(ModelMap modelMap) {

        return "queue";
    }
}