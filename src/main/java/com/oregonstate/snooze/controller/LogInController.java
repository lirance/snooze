package com.oregonstate.snooze.controller;

import com.oregonstate.snooze.model.User;
import com.oregonstate.snooze.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;


@Controller
@SessionAttributes({"email","username"})
@RequestMapping("/snooze")
public class LogInController {

    @Autowired
    UserService userService;

    @RequestMapping(value = "/logIn")
    @ResponseBody
    public boolean logIn(String inputPassword, String inputEmail, ModelMap map) {
        User user = userService.selectByEmail(inputEmail);
        if (user != null) {
            map.addAttribute("email", user.geteMail());
            map.addAttribute("username",user.getUserName());
            return (user.getPassword()).equals(Integer.toString(inputPassword.hashCode()));
        } else {
            return false;
        }
    }
}
