package com.oregonstate.snooze.controller;

import com.oregonstate.snooze.model.Group;
import com.oregonstate.snooze.model.User;
import com.oregonstate.snooze.service.JoinService;
import com.oregonstate.snooze.service.UserService;
import com.oregonstate.snooze.utils.StaticStrings;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpSession;
import java.util.List;


@Controller
@SessionAttributes({
        StaticStrings.SESSION_ATTRIBUTES_USER,
        StaticStrings.SESSION_ATTRIBUTES_GROUP_MANAGER,
        StaticStrings.SESSION_ATTRIBUTES_GROUP_GENERAL,
        StaticStrings.SESSION_ATTRIBUTES_GROUP_MANAGER_SIZE,
        StaticStrings.SESSION_ATTRIBUTES_GROUP_GENERAL_SIZE})
@RequestMapping("/snooze")
public class LogInController {

    private final UserService userService;
    private final JoinService joinService;

    @Autowired
    public LogInController(UserService userService, JoinService joinService) {
        this.userService = userService;
        this.joinService = joinService;
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

    @RequestMapping(value = "/groupManager")
    @ResponseBody
    public void groupManager(HttpSession session, ModelMap map){
        User user = (User) session.getAttribute(StaticStrings.SESSION_ATTRIBUTES_USER);
        List<Group> groupsManager = joinService.selectGroupsByUserId(user.getUserId(), true);
        map.addAttribute(StaticStrings.SESSION_ATTRIBUTES_GROUP_MANAGER, groupsManager);
        int groupsManagerSize = groupsManager.size();
        map.addAttribute(StaticStrings.SESSION_ATTRIBUTES_GROUP_MANAGER_SIZE, groupsManagerSize);
    }

    @RequestMapping(value = "/groupGeneral")
    @ResponseBody
    public void groupGeneral(HttpSession session, ModelMap map){
        User user = (User) session.getAttribute(StaticStrings.SESSION_ATTRIBUTES_USER);
        List<Group> groupsGeneral = joinService.selectGroupsByUserId(user.getUserId(), false);
        map.addAttribute(StaticStrings.SESSION_ATTRIBUTES_GROUP_GENERAL, groupsGeneral);
        int groupsGeneralSize = groupsGeneral.size();
        map.addAttribute(StaticStrings.SESSION_ATTRIBUTES_GROUP_GENERAL_SIZE, groupsGeneralSize);
    }
}
