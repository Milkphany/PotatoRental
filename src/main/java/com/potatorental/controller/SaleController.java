package com.potatorental.controller;

import com.potatorental.model.Account;
import com.potatorental.model.Customer;
import com.potatorental.model.Movie;
import com.potatorental.model.Rental;
import com.potatorental.repository.AccountDao;
import com.potatorental.repository.PersonsDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.security.Principal;
import java.util.List;
import java.util.Map;

/**
 * User: Milky
 * Date: 5/9/13
 * Time: 4:28 AM
 */
@Controller
@RequestMapping("sales")
public class SaleController {

    private final PersonsDao personsDao;
    private final AccountDao accountDao;

    @Autowired
    public SaleController(PersonsDao personsDao, AccountDao accountDao) {
        this.personsDao = personsDao;
        this.accountDao = accountDao;
    }

    @RequestMapping(method = RequestMethod.GET)
    public String getSales(ModelMap modelMap){
        Map<Customer, Map<Account, Movie>> queues = accountDao.getAllQueues ();
        modelMap.addAttribute("queue", queues);
        return "sales";
    }

    @RequestMapping(value = "order", params = {"movieid", "accountid"})
    public String makeOrder(@RequestParam("accountid") String accountid, @RequestParam("movieid") String movieid,
                            ModelMap modelMap, Principal principal) {
        int employeeid = personsDao.getEmployeeByEmail(principal.getName()).getId();
        Customer personByEmail = (Customer) personsDao.getPersonByEmail(accountid);

        modelMap.addAttribute("accountid", accountid);
        personsDao.recordOrder(employeeid, accountDao.getAccount(personByEmail).getId(), Integer.parseInt(movieid));

        return "redirect:/users/{accountid}";
    }
}
