package com.oregonstate.snooze.controller;

import com.oregonstate.snooze.model.User;
import com.oregonstate.snooze.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping("/snooze")
public class EditProfileController {


    @Autowired
    UserService userService;

    @RequestMapping(value = "/editProfile")
    @ResponseBody
    public boolean editProfile(String inputEmail, String inputPassword,String newUsername, String newPassword) {
        User user = userService.selectByEmail(inputEmail);
        if ((user.getPassword()).equals(Integer.toString(inputPassword.hashCode()))){
            return userService.changeProfile(newUsername, String.valueOf(newPassword.hashCode()), user);
        }
        else {
            return false;
        }
    }

}