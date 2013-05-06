package com.potatorental.controller;

import com.potatorental.model.Customer;
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
                         Model model, RedirectAttributes redirectAttrs, SessionStatus sessionStatus) {
        if (bindingResult.hasErrors()) {
            model.addAttribute("message", "There is an error with the form submission");
            return null;
        }
        sessionStatus.setComplete();

        /* TODO need to authenticate user so that they will automatically login after signup*/
        authenticateUser();
        return "redirect:/user/" + customer.getEmail();
    }

    private void authenticateUser() {

    }
}
