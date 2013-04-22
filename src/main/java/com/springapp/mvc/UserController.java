package com.springapp.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
@RequestMapping("/user")
public class UserController {

    @RequestMapping(method = RequestMethod.GET)
    public String printWelcome(ModelMap model) {
        model.addAttribute("message", "not sso easily");
        return "hello";
    }

    @RequestMapping(value = "{userid}", method = RequestMethod.GET)
    public String getUser(@PathVariable("userid") String userid, ModelMap modelMap) {
        modelMap.addAttribute("message", userid);
        return "hello";
    }
}
