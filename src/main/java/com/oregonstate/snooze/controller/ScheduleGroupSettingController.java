package com.oregonstate.snooze.controller;

import com.oregonstate.snooze.model.GroupSchedule;
import com.oregonstate.snooze.service.GroupScheduleService;
import com.oregonstate.snooze.utils.StaticStrings;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpSession;


@Controller
@SessionAttributes({StaticStrings.SESSION_ATTRIBUTES_CURRENT_GROUP_ID, StaticStrings.SESSION_ATTRIBUTES_CURRENT_SCHEDULE_ID})
@RequestMapping("/snooze")
public class ScheduleGroupSettingController {

    private static Logger logger = Logger.getLogger(GroupSettingController.class);
    private final GroupScheduleService groupScheduleService;

    @Autowired
    public ScheduleGroupSettingController(GroupScheduleService groupScheduleService) {
        this.groupScheduleService = groupScheduleService;

    }


    @RequestMapping(value = "/create/schedule")
    @ResponseBody
    public boolean scheduleCreateManager(HttpSession session, String inputScheduleName) {

        int groupId = (int) session.getAttribute(StaticStrings.SESSION_ATTRIBUTES_CURRENT_GROUP_ID);

        GroupSchedule newGroupSchedule = new GroupSchedule();
        newGroupSchedule.setScheduleName(inputScheduleName);
        newGroupSchedule.setGroupId(groupId);

        // automatically start the schedule when create
        newGroupSchedule.setStart(true);
        groupScheduleService.insert(newGroupSchedule);
        return true;
    }

}




