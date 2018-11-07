package com.oregonstate.snooze.controller;

import com.oregonstate.snooze.model.User;
import com.oregonstate.snooze.service.UserService;
import com.oregonstate.snooze.utils.StaticStrings;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpSession;


@Controller
@SessionAttributes({StaticStrings.SESSION_ATTRIBUTES_USER})
@RequestMapping("/snooze")
public class LogInController {

    private final UserService userService;

    @Autowired
    public LogInController(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping(value = "/logIn")
    @ResponseBody
    public boolean logIn(String inputPassword, String inputEmail, ModelMap map) {
        User user = userService.selectByEmail(inputEmail);
        if (user != null) {
            map.addAttribute(StaticStrings.SESSION_ATTRIBUTES_USER, user);
            return (user.getPassword()).equals(Integer.toString(inputPassword.hashCode()));
        } else {
            return false;
        }
    }

    @RequestMapping(value = "/verifyProfile")
    @ResponseBody
    public boolean editProfile(HttpSession session, String inputPassword) {
        User user = (User) session.getAttribute(StaticStrings.SESSION_ATTRIBUTES_USER);
        return (user.getPassword()).equals(Integer.toString(inputPassword.hashCode()));

    }
}
