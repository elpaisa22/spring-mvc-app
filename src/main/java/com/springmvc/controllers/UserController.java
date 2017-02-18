package com.springmvc.controllers;

import com.springmvc.models.User;
import com.springmvc.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by Sebastian on 17/2/2017.
 */
@Controller
public class UserController {

    @Autowired
    private UserRepository repository;

    @RequestMapping(value = "/users", method = RequestMethod.GET)
    public String userList(Model model) {

        Iterable<User> userList = this.repository.findAll();
        model.addAttribute("userList", userList);

        return "userList";
    }

    @RequestMapping(value = "/userCreate", method = RequestMethod.GET)
    public String userCreate(Model model) {
        User user = new User();
        model.addAttribute("userForm", user);
        return "userEdit";
    }

    @RequestMapping(value = "/userEdit", params = {"id"},method = RequestMethod.GET)
    public String userEdit(@RequestParam(value = "id") Long id, Model model) {
        User user = this.repository.findOne(id);
        model.addAttribute("userForm", user);
        return "userEdit";
    }

    @RequestMapping(value = "/userDelete", params = {"id"},method = RequestMethod.GET)
    public String userDelete(@RequestParam(value = "id") Long id, Model model) {
        this.repository.delete(id);
        Iterable<User> userList = this.repository.findAll();
        model.addAttribute("userList", userList);
        model.addAttribute("message", "User " + id + " deleted");
        return "userList";
    }

    @RequestMapping(value = "/userSave", method = RequestMethod.POST)
    public String saveOrUpdateUser(User user, Model model) {
        this.repository.save(user);
        model.addAttribute("user", user);
        return "userWelcome";
    }
}
