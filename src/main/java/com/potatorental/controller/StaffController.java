package com.potatorental.controller;

import com.potatorental.model.Employee;
import com.potatorental.repository.PersonsDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 * User: Milky
 * Date: 5/9/13
 * Time: 10:12 AM
 */

@Controller
@RequestMapping("/staffs")
@SessionAttributes("employee")
public class StaffController {

    private final PersonsDao personsDao;

    @Autowired
    public StaffController(PersonsDao personsDao) {
        this.personsDao = personsDao;
    }

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView getAllEmployees(ModelMap modelMap) {
        modelMap.addAttribute("users", personsDao.getAllEmployees());

        return new ModelAndView("staffs", modelMap);
    }

    @ModelAttribute("editForm")
    public Employee getEmployee() {
        return new Employee();
    }

    @RequestMapping(value = "{userid:.*}", method = RequestMethod.GET)
    public ModelAndView getUser(@PathVariable String userid, ModelMap modelMap) {
        Employee employee = (Employee) personsDao.getPersonByEmail(userid);
        modelMap.addAttribute("employee", employee);

        return new ModelAndView("staffaccount", modelMap);
    }

    @RequestMapping(value = "{userid:.*}", method = RequestMethod.POST)
    public String updateEmployee(@PathVariable String userid, ModelMap modelMap,
                                 @RequestParam(value = "delete", required = false) String delete,
                                 @ModelAttribute("editForm") Employee employee,
                                 RedirectAttributes redirectAttributes) {

        if (delete != null) {
            redirectAttributes.addFlashAttribute("message", "Employee " + userid + " deleted");
            return "redirect:/staffs/";
        }
        personsDao.updateEmployee(employee);
        return "redirect:/staffs/{userid}";
    }
}
