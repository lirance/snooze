package com.oregonstate.snooze.controller;

import com.oregonstate.snooze.model.User;
import com.oregonstate.snooze.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;


@Controller
@RequestMapping("/snooze")
public class EditProfileController {


    @Autowired
    UserService userService;

    @RequestMapping(value = "/editProfile")
    @ResponseBody
    public boolean editProfile(HttpSession session, String newUsername, String newPassword, ModelMap map) {
        User user = (User) session.getAttribute("user");
        userService.changeProfile(newUsername, String.valueOf(newPassword.hashCode()), user);
        map.addAttribute("user", user);
        return true;
    }

}