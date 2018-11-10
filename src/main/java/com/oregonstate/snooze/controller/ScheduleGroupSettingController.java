package com.oregonstate.snooze.controller;

import com.oregonstate.snooze.model.GroupSchedule;
import com.oregonstate.snooze.model.User;
import com.oregonstate.snooze.service.GroupScheduleService;
import com.oregonstate.snooze.service.GroupService;
import com.oregonstate.snooze.service.GroupUserService;
import com.oregonstate.snooze.service.UserService;
import com.oregonstate.snooze.utils.StaticStrings;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.Map;


@Controller
@RequestMapping("/snooze")
public class ScheduleGroupSettingController {

    @Resource
    private final UserService userService;
    private final GroupScheduleService groupScheduleService;

    @Autowired
    public ScheduleGroupSettingController(GroupScheduleService groupScheduleService, UserService userService) {
        this.userService = userService;
        this.groupScheduleService = groupScheduleService;
    }


    @RequestMapping(value = "/group/voidSchedule")
    @ResponseBody
    public boolean scheduleCreate(HttpSession session, String inputScheduleName, Map<Integer, Boolean> inputScheduleDes){

        Integer groupId = (int)session.getAttribute(StaticStrings.SESSION_ATTRIBUTES_GROUPID);

        GroupSchedule newGroupSchedule = new GroupSchedule();
        newGroupSchedule.setScheduleName(inputScheduleName);
        newGroupSchedule.setGroupId(groupId);
        newGroupSchedule.setScheduleDes(inputScheduleDes);
        groupScheduleService.insert(newGroupSchedule);
        return true;
    }

    @RequestMapping(value = "/group/newSchedule")
    @ResponseBody
    public boolean scheduleCreate(Integer inputGroupId, String inputScheduleName, Map<Integer, Boolean> inputScheduleDes){

        GroupSchedule newGroupSchedule = new GroupSchedule();
        newGroupSchedule.setScheduleName(inputScheduleName);
        newGroupSchedule.setGroupId(inputGroupId);
        newGroupSchedule.setScheduleDes(inputScheduleDes);
        groupScheduleService.insert(newGroupSchedule);
        return true;
    }

}




