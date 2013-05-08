package com.potatorental.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * User: Milky
 * Date: 5/8/13
 * Time: 4:21 AM
 */

@Controller
@RequestMapping("/errors")
public class HTTPErrorController {

    @RequestMapping(value = "403", method = RequestMethod.GET)
    public String accessDenied() {
        return "error403";
    }

    @RequestMapping(value = "404", method = RequestMethod.GET)
    public String notFound() {
        return "error404";
    }
}
