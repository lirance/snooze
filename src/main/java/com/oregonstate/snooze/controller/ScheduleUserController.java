package com.oregonstate.snooze.controller;

import com.oregonstate.snooze.model.User;
import com.oregonstate.snooze.service.GroupScheduleService;
import com.oregonstate.snooze.service.UserScheduleService;
import com.oregonstate.snooze.utils.StaticStrings;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

/**
 * @author: Chendi Zhang
 * @date: 11/26/18
 * @description:
 **/

@Controller
@RequestMapping("/snooze")
public class ScheduleUserController {

    private static Logger logger = Logger.getLogger(GroupSettingController.class);

    private final GroupScheduleService groupScheduleService;
    private final UserScheduleService userScheduleService;

    @Autowired
    public ScheduleUserController(GroupScheduleService groupScheduleService, UserScheduleService userScheduleService) {
        this.groupScheduleService = groupScheduleService;
        this.userScheduleService = userScheduleService;
    }

    @RequestMapping(value = "/member/select/time")
    @ResponseBody
    public boolean MemberSelect(HttpSession session, String selectedTime) {

        if (selectedTime == null || selectedTime.isEmpty()) {
            return false;
        }

        String[] times = selectedTime.split(",");
        try {

            int groupId = (int) session.getAttribute(StaticStrings.SESSION_ATTRIBUTES_CURRENT_GROUP_ID);
            int userId = ((User) session.getAttribute(StaticStrings.SESSION_ATTRIBUTES_USER)).getUserId();
            int scheduleId = groupScheduleService.getGroupCurrentSchedule(groupId).getScheduleId();

            userScheduleService.updateUserSchedule(times, scheduleId, userId);

        } catch (Exception e) {

            logger.error("something went wrong, no groupId, or no userId or scheduleId not exist", e);
            return false;
        }
        return true;
    }
}
