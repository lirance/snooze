package com.oregonstate.snooze.controller;

import com.alibaba.fastjson.JSON;
import com.oregonstate.snooze.model.Group;
import com.oregonstate.snooze.model.User;
import com.oregonstate.snooze.service.JoinService;
import com.oregonstate.snooze.utils.StaticStrings;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author: Chendi Zhang
 * @date: 11/7/18
 * @description: user group controller
 **/

@Controller
@RequestMapping("/snooze")
public class UserGroupController {

    private final JoinService joinService;

    @Autowired
    public UserGroupController(JoinService joinService) {
        this.joinService = joinService;
    }

    @RequestMapping(value = "/groupManager.json")
    @ResponseBody
    public String groupManager(HttpSession session) {
        User user = (User) session.getAttribute(StaticStrings.SESSION_ATTRIBUTES_USER);
        return JSON.toJSONString(joinService.selectGroupsByUserId(user.getUserId(), true));
    }

    @RequestMapping(value = "/groupGeneral.json")
    @ResponseBody
    public String groupGeneral(HttpSession session) {
        User user = (User) session.getAttribute(StaticStrings.SESSION_ATTRIBUTES_USER);
        return JSON.toJSONString(joinService.selectGroupsByUserId(user.getUserId(), false));
    }
}
