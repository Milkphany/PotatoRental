package com.potatorental.controller;

import com.potatorental.jdbc.PersonDaoImpl;
import com.potatorental.model.Customer;
import com.potatorental.model.Person;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import java.security.Principal;

/**
 * User: Milky
 * Date: 4/21/13
 * Time: 5:42 PM
 */
@Controller
@RequestMapping("/user/*")
@SessionAttributes("user")
public class UserController {

    @Autowired
    private final PersonDaoImpl personDAOImpl;

    @Autowired
    public UserController(PersonDaoImpl personDAOImpl ) {
        this.personDAOImpl = personDAOImpl;
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

        Person person = personDAOImpl.getPersonByEmail(principal.getName());
        modelMap.addAttribute("user", person);

        /*if (person instanceof Customer)
            modelMap.addAttribute("customer", person);
        else
            modelMap.addAttribute("employee", person);
*/
        return "userprofile";
    }

    @RequestMapping(value = "queue", method = RequestMethod.GET)
    public String getQueue(ModelMap modelMap) {
        return "queue";
    }
}
