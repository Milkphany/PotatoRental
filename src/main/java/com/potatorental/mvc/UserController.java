package com.potatorental.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * User: Milky
 * Date: 4/21/13
 * Time: 5:42 PM
 */
@Controller
@RequestMapping("/user/*")
public class UserController {

    @RequestMapping(value = "/{userid}", method = RequestMethod.GET)
    public String getUser(@PathVariable("userid") String userid, ModelMap modelMap) {
        modelMap.addAttribute("message", userid);
        return "hello";
    }

    @RequestMapping(value = "{userid}/rental", method = RequestMethod.GET)
    public String getRental(ModelMap modelMap) {
        return "hello";
    }

    @RequestMapping(value = "{userid}/rental/{rentalid}")
    public String getRentals(@PathVariable("rentalid") int rentalid, ModelMap modelMap) {
        return "hello";
    }
}