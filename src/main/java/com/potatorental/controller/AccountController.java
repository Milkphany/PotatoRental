package com.potatorental.controller;

import com.potatorental.model.Account;
import com.potatorental.model.Movie;
import com.potatorental.repository.AccountDao;
import com.potatorental.repository.PersonDao;
import com.potatorental.model.Customer;
import com.potatorental.model.Person;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import java.security.Principal;
import java.util.List;

/**
 * User: Milky
 * Date: 5/6/13
 * Time: 2:07 AM
 */
@Controller
@RequestMapping("/account")
@SessionAttributes("user")
public class AccountController {

    private final PersonDao personDao;
    private final AccountDao accountDao;

    @Autowired
    public AccountController(PersonDao personDao, AccountDao accountDao) {
        this.personDao = personDao;
        this.accountDao = accountDao;
    }

    @RequestMapping(method = RequestMethod.GET)
    public String getSettings(ModelMap modelMap, Principal principal) {
        modelMap.addAttribute("message", "This is going to be " + principal.getName() + "'s profile setting");

        if (modelMap.get("user") == null)
            modelMap.addAttribute("user", personDao.getPersonByEmail(principal.getName()));

        return "account";
    }

    @RequestMapping(value = "queue", method = RequestMethod.GET)
    public ModelAndView getQueue(ModelMap modelMap, Principal principal) {
        Account account = accountDao.getAccount((Customer) personDao.getPersonByEmail(principal.getName()));
        modelMap.addAttribute("moviequeue", accountDao.getQueue(account));

        return new ModelAndView("queue", modelMap);
    }

    @RequestMapping(value = "rental", method = RequestMethod.GET)
    public ModelAndView getRental(ModelMap modelMap, Principal principal) {
        Account account = accountDao.getAccount((Customer) personDao.getPersonByEmail(principal.getName()));
        modelMap.addAttribute("rentalhistory", accountDao.getHistory(account));
        return new ModelAndView("rental", modelMap);
    }
}