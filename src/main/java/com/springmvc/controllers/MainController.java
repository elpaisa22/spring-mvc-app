package com.springmvc.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by Sebastian on 16/2/2017.
 */
@Controller
public class MainController {

    @RequestMapping("/about")
    public ModelAndView about() {

        String message = "About View";
        return new ModelAndView("about", "message", message);
    }

    @RequestMapping("/contact")
    public ModelAndView contact() {

        String message = "Contact View";
        return new ModelAndView("contact", "message", message);
    }

    @RequestMapping("/datatables")
    public ModelAndView datatables() {
        return new ModelAndView("datatables");
    }

}
