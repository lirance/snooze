package com.oregonstate.snooze.controller;

import com.oregonstate.snooze.model.User;
import com.oregonstate.snooze.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping("/snooze")
public class LogInController {

    @Autowired
    UserService userService;

    @RequestMapping(value = "/logIn")
    @ResponseBody
    public boolean logIn(String inputPassword,String inputEmail) {
        User user = userService.selectByEmail(inputEmail);
        if (user != null) {
            return (user.getPassword()).equals(Integer.toString(inputPassword.hashCode()));
        } else {
            return false;
        }
    }
}
