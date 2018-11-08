package com.oregonstate.snooze.controller;

import com.oregonstate.snooze.model.Group;
import com.oregonstate.snooze.model.GroupUser;
import com.oregonstate.snooze.model.User;
import com.oregonstate.snooze.service.GroupService;
import com.oregonstate.snooze.service.GroupUserService;
import com.oregonstate.snooze.service.JoinService;
import com.oregonstate.snooze.service.UserService;
import com.oregonstate.snooze.utils.StaticStrings;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;


@Controller
@RequestMapping("/snooze")
public class GroupSettingController {

    @Resource
    private final UserService userService;
    private final GroupService groupService;
    private final GroupUserService groupUserService;
    private final JoinService joinService;

    @Autowired
    public GroupSettingController(UserService userService, JoinService joinService, GroupService groupService, GroupUserService groupUserService) {
        this.userService = userService;
        this.groupService = groupService;
        this.groupUserService = groupUserService;
        this.joinService = joinService;
    }

    @RequestMapping(value = "/groupCreate")
    @ResponseBody
    public void groupCreate(HttpSession session, String name){
        User user = (User) session.getAttribute("user");
        Group newGroup = new Group();
        newGroup.setGroupName(name);
        groupService.insert(newGroup);

        GroupUser newGroupUser = new GroupUser();
        newGroupUser.setManager(true);
        newGroupUser.setUserId(user.getUserId());
        newGroupUser.setGroupId(newGroup.getGroupId());
    }

    @RequestMapping(value = "/groupJoin")
    @ResponseBody
    public void groupJoin(HttpSession session, int groupId){
        User user = (User) session.getAttribute("user");
        GroupUser newGroupUser = new GroupUser();
        newGroupUser.setManager(true);
        newGroupUser.setUserId(user.getUserId());
        newGroupUser.setGroupId(groupId);
        newGroupUser.setManager(false);
    }
}



