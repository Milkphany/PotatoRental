package com.potatorental.controller;

import com.potatorental.model.Customer;
import com.potatorental.model.Location;
import com.potatorental.repository.LocationDao;
import com.potatorental.repository.PersonDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;

/**
 * User: Milky
 * Date: 4/22/13
 * Time: 4:52 AM
 */
@Controller
@RequestMapping("/signup")
public class SignUpController {

    private PersonDao personDao;
    private LocationDao locationDao;

    @Autowired
    public SignUpController(PersonDao personDao, LocationDao locationDao) {
        this.personDao = personDao;
        this.locationDao = locationDao;
    }

    @ModelAttribute("signupForm")
    public Customer newCustomer() {
        return new Customer();
    }

    @RequestMapping(method = RequestMethod.GET)
    public String getSignUp(Model model) {
        return "signup";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String signUp(@Valid @ModelAttribute("signupForm") Customer customer, BindingResult bindingResult,
                         Model model, RedirectAttributes redirectAttrs, SessionStatus sessionStatus,
                         @RequestParam("state") String state, @RequestParam("city") String city) {
        if (bindingResult.hasErrors()) {
            model.addAttribute("message", "There is an error with the form submission");
            return null;
        }

        /*Need to validate zipcode, haven't done that*/
        try {
            personDao.insertCustomer(customer, new Location(customer.getZipCode(), state, city));
        } catch (DataIntegrityViolationException e) {
            model.addAttribute("message", "email has already been used");
            return null;
        }

        sessionStatus.setComplete();
        /* TODO need to authenticate user so that they will automatically login after signup*/
        authenticateUser();
        return "redirect:/users/" + customer.getEmail();
    }

    private void authenticateUser() {

    }
}
