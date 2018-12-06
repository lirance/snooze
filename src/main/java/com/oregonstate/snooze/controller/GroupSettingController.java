package com.oregonstate.snooze.controller;

import com.oregonstate.snooze.model.Group;
import com.oregonstate.snooze.model.GroupUser;
import com.oregonstate.snooze.model.User;
import com.oregonstate.snooze.service.GroupService;
import com.oregonstate.snooze.service.GroupUserService;
import com.oregonstate.snooze.service.JoinService;
import com.oregonstate.snooze.utils.StaticStrings;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;


@Controller
@SessionAttributes({StaticStrings.SESSION_ATTRIBUTES_USER, StaticStrings.SESSION_ATTRIBUTES_CURRENT_GROUP_ID})
@RequestMapping("/snooze")
public class GroupSettingController {

    private static Logger logger = Logger.getLogger(GroupSettingController.class);

    @Resource
    private final GroupService groupService;
    private final GroupUserService groupUserService;
    private final JoinService joinService;

    @Autowired
    public GroupSettingController(GroupService groupService, GroupUserService groupUserService, JoinService joinService) {
        this.groupService = groupService;
        this.groupUserService = groupUserService;
        this.joinService = joinService;
    }

    @RequestMapping(value = "/group/create")
    @ResponseBody
    public boolean groupCreate(HttpSession session, String inputGroupName, ModelMap map) {
        User user = (User) session.getAttribute(StaticStrings.SESSION_ATTRIBUTES_USER);
        Group newGroup = new Group();
        newGroup.setGroupName(inputGroupName);
        groupService.insert(newGroup);

        GroupUser newGroupUser = new GroupUser();
        newGroupUser.setManager(true);
        newGroupUser.setUserId(user.getUserId());
        newGroupUser.setGroupId(newGroup.getGroupId());
        map.addAttribute(StaticStrings.SESSION_ATTRIBUTES_CURRENT_GROUP_ID, newGroup.getGroupId());
        groupUserService.insert(newGroupUser);
        return true;
    }

    @RequestMapping(value = "/group/join")
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

    @RequestMapping(value = "/group/show/membersNotChoosed.json")
    @ResponseBody
    public List<User> groupShowMembers(HttpSession session) {

        int groupId = (int) session.getAttribute(StaticStrings.SESSION_ATTRIBUTES_CURRENT_GROUP_ID);
        int scheduleId = (int) session.getAttribute(StaticStrings.SESSION_ATTRIBUTES_CURRENT_SCHEDULE_ID);

        List<User> groupUsers = joinService.selectUsersByGroupId(groupId, false);
        List<User> usersAlreadySelected = joinService.getUsersAlreadyChooseShift(scheduleId);

        for (User user : usersAlreadySelected) {
            groupUsers.remove(user);
        }
        return groupUsers;
    }

}



