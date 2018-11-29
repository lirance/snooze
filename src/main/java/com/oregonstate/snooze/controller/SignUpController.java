package com.oregonstate.snooze.controller;

import com.oregonstate.snooze.model.User;
import com.oregonstate.snooze.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping("/snooze")
public class SignUpController {

    private final UserService userService;

    @Autowired
    public SignUpController(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping(value = "/signUp")
    @ResponseBody
    public boolean signUp(String inputUsername, String inputPassword, String inputEmail) {
        User user = userService.selectByEmail(inputEmail);
        if (user == null) {
            User newUser = new User();
            newUser.setUserName(inputUsername);
            newUser.setPassword(inputPassword);
            newUser.setEMail(inputEmail);
            userService.insert(newUser);
            return true;
        } else {
            return false;
        }
    }
}



