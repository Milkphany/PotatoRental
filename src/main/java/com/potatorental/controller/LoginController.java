package com.potatorental.controller;

import org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestWrapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.security.Principal;

/**
 * Created with IntelliJ IDEA.
 * User: milky
 * Date: 5/1/13
 * Time: 5:10 PM
 * To change this template use File | Settings | File Templates.
 */
@Controller
@RequestMapping("/login*")
@SessionAttributes("loginForm")
public class LoginController {

    @RequestMapping(value = "login", method = RequestMethod.GET)
    public String defaultPage() {
        return "login";
    }

    @RequestMapping(value = "loginfailed", method = RequestMethod.GET)
    public ModelAndView failLogin(Model model) {
        return new ModelAndView("login", "message", "there is errors, not okay");
    }

    @RequestMapping(value = "loginsuccess", method = RequestMethod.GET)
    public String successLogin(RedirectAttributes redirectAttributes, Principal principal, HttpServletRequest request) {
        SecurityContextHolderAwareRequestWrapper sc = new SecurityContextHolderAwareRequestWrapper(request, "ROLE_");
        String role = sc.isUserInRole("USER") ? "customer" : sc.isUserInRole("STAFF") &&
                sc.isUserInRole("MANAGER") ? "manager" : "employee";

        redirectAttributes.addFlashAttribute("message", "Welcome back dear " + role + " " + principal.getName());
        return "redirect:/";
    }

    @RequestMapping(value = "loginout", method = RequestMethod.GET)
    public String logout(SessionStatus sessionStatus) {
        sessionStatus.setComplete();
        return "login";
    }
}
