package com.oregonstate.snooze.controller;

import com.oregonstate.snooze.model.User;
import com.oregonstate.snooze.service.JoinService;
import com.oregonstate.snooze.utils.StaticStrings;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @author: Chendi Zhang
 * @date: 11/27/18
 * @description:
 **/

@Controller
@RequestMapping("/snooze")
public class GroupUserController {

    private final JoinService joinService;

    @Autowired
    public GroupUserController(JoinService joinService) {
        this.joinService = joinService;
    }

    @RequestMapping(value = "/Managers.json")
    @ResponseBody
    public List<User> getGroupManagers(HttpSession session) {
        int groupId = (int) session.getAttribute(StaticStrings.SESSION_ATTRIBUTES_CURRENT_GROUP_ID);
        return joinService.selectUsersByGroupId(groupId, true);
    }

    @RequestMapping(value = "/Members.json")
    @ResponseBody
    public List<User> getGroupMembers(HttpSession session) {
        int groupId = (int) session.getAttribute(StaticStrings.SESSION_ATTRIBUTES_CURRENT_GROUP_ID);
        return joinService.selectUsersByGroupId(groupId, false);
    }
}
