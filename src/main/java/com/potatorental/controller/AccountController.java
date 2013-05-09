package com.potatorental.controller;

import com.potatorental.model.Account;
import com.potatorental.repository.AccountDao;
import com.potatorental.repository.MovieDao;
import com.potatorental.repository.PersonsDao;
import com.potatorental.model.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.security.Principal;

/**
 * User: Milky
 * Date: 5/6/13
 * Time: 2:07 AM
 */
@Controller
@RequestMapping("/account")
@SessionAttributes("user")
public class AccountController {

    private final PersonsDao personsDao;
    private final AccountDao accountDao;
    private final MovieDao movieDao;

    @Autowired
    public AccountController(PersonsDao personsDao, AccountDao accountDao, MovieDao movieDao) {
        this.personsDao = personsDao;
        this.accountDao = accountDao;
        this.movieDao = movieDao;
    }

    @RequestMapping(method = RequestMethod.GET)
    public String getSettings(ModelMap modelMap, Principal principal) {
        modelMap.addAttribute("message", "This is going to be " + principal.getName() + "'s profile setting");

        if (modelMap.get("user") == null)
            modelMap.addAttribute("user", personsDao.getPersonByEmail(principal.getName()));

        return "account";
    }

    @RequestMapping(value = "queue", method = RequestMethod.GET)
    public ModelAndView getQueue(ModelMap modelMap, Principal principal) {
        Account account = accountDao.getAccount((Customer) personsDao.getPersonByEmail(principal.getName()));
        modelMap.addAttribute("moviequeue", accountDao.getQueue(account));

        return new ModelAndView("queue", modelMap);
    }

    @RequestMapping(value = "queue/add/{movieid}", method = RequestMethod.GET)
    public String addToQueue(@PathVariable String movieid, Principal principal,
                             RedirectAttributes redirectAttributes) {
        Account account = accountDao.getAccount((Customer) personsDao.getPersonByEmail(principal.getName()));

        try {
            if (!accountDao.addToQueue(account, Integer.parseInt(movieid)))
                redirectAttributes.addFlashAttribute("message", "Was not able to add to queue due to duplicates");
        } catch (NumberFormatException e) {
            redirectAttributes.addFlashAttribute("message", "Not a valid movieid");
        }

        return "redirect:/account/queue";
    }

    @RequestMapping(value = "queue/remove/{movieid}", method = RequestMethod.GET)
    public String removeFromQueue(@PathVariable String movieid, Principal principal,
                                  RedirectAttributes redirectAttributes) {
        Account account = accountDao.getAccount((Customer) personsDao.getPersonByEmail(principal.getName()));
        try {
            accountDao.removeFromQueue(account, Integer.parseInt(movieid));
        } catch (NumberFormatException e) {
            redirectAttributes.addFlashAttribute("message", "Not a valid movieid");
        }
        return "redirect:/account/queue";
    }

    @RequestMapping(value = "rental", method = RequestMethod.GET)
    public ModelAndView getRental(ModelMap modelMap, Principal principal) {
        Account account = accountDao.getAccount((Customer) personsDao.getPersonByEmail(principal.getName()));
        modelMap.addAttribute("rentalhistory", accountDao.getHistory(account));
        return new ModelAndView("rental", modelMap);
    }
}