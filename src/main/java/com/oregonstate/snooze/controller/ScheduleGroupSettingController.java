package com.oregonstate.snooze.controller;

import com.oregonstate.snooze.model.GroupSchedule;
import com.oregonstate.snooze.service.GroupScheduleService;
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
@SessionAttributes({StaticStrings.SESSION_ATTRIBUTES_CURRENT_GROUP_ID, StaticStrings.SESSION_ATTRIBUTES_MANAGER_GROUP_ID})
@RequestMapping("/snooze")
public class ScheduleGroupSettingController {

    private final GroupScheduleService groupScheduleService;

    @Autowired
    public ScheduleGroupSettingController(GroupScheduleService groupScheduleService, UserService userService) {
        this.groupScheduleService = groupScheduleService;
    }


    @RequestMapping(value = "/group/passGroupID")
    @ResponseBody
    public boolean scheduleShow(Integer passGroupID, ModelMap map) {
        map.addAttribute(StaticStrings.SESSION_ATTRIBUTES_CURRENT_GROUP_ID, passGroupID);
        return true;
    }

    @RequestMapping(value = "/manager/select/time")
    @ResponseBody
    public boolean scheduleCreateManager(HttpSession session, String inputScheduleName) {

        Integer groupId = (int) session.getAttribute(StaticStrings.SESSION_ATTRIBUTES_MANAGER_GROUP_ID);

        GroupSchedule newGroupSchedule = new GroupSchedule();
        newGroupSchedule.setScheduleName(inputScheduleName);
        newGroupSchedule.setGroupId(groupId);
        groupScheduleService.insert(newGroupSchedule);
        return true;
    }

    @RequestMapping(value = "/manager/select/time")
    @ResponseBody
    public boolean scheduleCreateGeneral(Integer inputGroupId, String inputScheduleName) {

        GroupSchedule newGroupSchedule = new GroupSchedule();
        newGroupSchedule.setScheduleName(inputScheduleName);
        newGroupSchedule.setGroupId(inputGroupId);
        groupScheduleService.insert(newGroupSchedule);
        return true;
    }

}




