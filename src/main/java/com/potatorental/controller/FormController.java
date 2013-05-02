package com.potatorental.controller;

/**
 * Created with IntelliJ IDEA.
 * User: milky
 * Date: 4/29/13
 * Time: 5:38 PM
 * To change this template use File | Settings | File Templates.
 */

import com.potatorental.model.Customer;
import com.potatorental.model.Person;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;

@Controller
@RequestMapping("/form")
@SessionAttributes("formBean")
public class FormController {

    // Invoked on every request
    // Invoked initially to create the "form" attribute
    // Once created the "form" attribute comes from the HTTP session (see @SessionAttributes)

    @ModelAttribute("formBean")
    public Customer createFormBean() {
        return new Customer();
    }

    @RequestMapping(method= RequestMethod.GET)
    public void form() {
    }

    @RequestMapping(method=RequestMethod.POST)
    public String processSubmit(@Valid @ModelAttribute("formBean") Person person, BindingResult result, boolean ajaxRequest,
                                Model model, RedirectAttributes redirectAttrs) {
        if (result.hasErrors()) {
            return null;
        }
        // Typically you would save to a db and clear the "form" attribute from the session
        // via SessionStatus.setCompleted(). For the demo we leave it in the session.
        String message = "Form submitted successfully.  Bound " + person;
        System.err.println("Submitted form");
        // Success response handling
//        if (ajaxRequest) {
            // prepare model for rendering success message in this request
            model.addAttribute("message", message);
            return null;
//        } else {
//            // store a success message for rendering on the next request after redirect
//            // redirect back to the form to render the success message along with newly bound values
//            redirectAttrs.addFlashAttribute("message", message);
//            return "redirect:/form";
//        }
    }

}
