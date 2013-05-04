package com.potatorental.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping("/")
public class HomeController {

    @RequestMapping(method = RequestMethod.GET)
    public String printWelcome() {
        return "home";
    }

    @RequestMapping(value = "home", method = RequestMethod.GET)
    public String printHome() {
        return "home";
    }

    @RequestMapping(value = "profile", method = RequestMethod.GET)
    public String setProfile() {
        /*TODO check for user to be authenticated then forward request*/
        return "forward:/user/profile";
    }

    @RequestMapping(value = "queue", method = RequestMethod.GET)
    public String getQueue() {
        /*TODO check for user to be authenticated then forward request*/
        return "forward:/user/queue";
    }
}