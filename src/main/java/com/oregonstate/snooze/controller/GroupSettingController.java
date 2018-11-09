package com.oregonstate.snooze.controller;

import com.oregonstate.snooze.model.Group;
import com.oregonstate.snooze.model.GroupUser;
import com.oregonstate.snooze.model.User;
import com.oregonstate.snooze.service.GroupService;
import com.oregonstate.snooze.service.GroupUserService;
import com.oregonstate.snooze.utils.StaticStrings;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;


@Controller
@RequestMapping("/snooze")
public class GroupSettingController {

    private static Logger logger = Logger.getLogger(GroupSettingController.class);

    @Resource
    private final GroupService groupService;
    private final GroupUserService groupUserService;

    @Autowired
    public GroupSettingController(GroupService groupService, GroupUserService groupUserService) {
        this.groupService = groupService;
        this.groupUserService = groupUserService;
    }

    @RequestMapping(value = "/groupCreate")
    @ResponseBody
    public boolean groupCreate(HttpSession session, String inputGroupName) {
        User user = (User) session.getAttribute(StaticStrings.SESSION_ATTRIBUTES_USER);
        Group newGroup = new Group();
        newGroup.setGroupName(inputGroupName);
        groupService.insert(newGroup);

        GroupUser newGroupUser = new GroupUser();
        newGroupUser.setManager(true);
        newGroupUser.setUserId(user.getUserId());
        newGroupUser.setGroupId(newGroup.getGroupId());
        groupUserService.insert(newGroupUser);
        return true;
    }

    @RequestMapping(value = "/groupJoin")
    @ResponseBody
    public boolean groupJoin(HttpSession session, int inputGroupId) {
        User user = (User) session.getAttribute(StaticStrings.SESSION_ATTRIBUTES_USER);
        GroupUser newGroupUser = new GroupUser();
        try {
            newGroupUser.setManager(false);
            newGroupUser.setUserId(user.getUserId());
            newGroupUser.setGroupId(inputGroupId);
            groupUserService.insert(newGroupUser);
        } catch (Exception exception) {
            //logger.info("catch exception", exception);
            return false;
        }
        return true;
    }
}



