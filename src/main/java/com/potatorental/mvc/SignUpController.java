package com.potatorental.mvc;

import com.potatorental.classes.Customer;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;

/**
 * User: Milky
 * Date: 4/22/13
 * Time: 4:52 AM
 */
@Controller
@SessionAttributes("signupForm")
@RequestMapping("/signup")
public class SignUpController {

    @ModelAttribute("signupForm")
    public Customer newCustomer() {
        return new Customer();
    }

    @RequestMapping(method = RequestMethod.GET)
    public String getSignUp(ModelMap modelMap) {
        modelMap.addAttribute("title", "Good day");
        return "signup";
    }

    @RequestMapping(method = RequestMethod.POST)
    public @ResponseBody String signUp(@Valid Customer customer, BindingResult bindingResult,
                                       @ModelAttribute("signupForm") boolean signup,
                                       ModelMap model, RedirectAttributes redirectAttributes) {
        if (bindingResult.hasErrors())
            return null;

        model.addAttribute("message", "congrats");
        return "redirect:/signup";
    }


}
