package com.potatorental.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

/**
 * Created with IntelliJ IDEA.
 * User: milky
 * Date: 5/1/13
 * Time: 5:10 PM
 * To change this template use File | Settings | File Templates.
 */
@Controller
@RequestMapping("/login")
@SessionAttributes("login")
public class LoginController {
}
