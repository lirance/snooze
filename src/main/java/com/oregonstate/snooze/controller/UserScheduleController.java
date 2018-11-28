package com.oregonstate.snooze.controller;

import com.oregonstate.snooze.model.GroupSchedule;
import com.oregonstate.snooze.model.User;
import com.oregonstate.snooze.model.UserScheduleKey;
import com.oregonstate.snooze.service.GroupScheduleService;
import com.oregonstate.snooze.service.UserScheduleService;
import com.oregonstate.snooze.utils.StaticStrings;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpSession;

/**
 * @author: Chendi Zhang
 * @date: 11/26/18
 * @description:
 **/

@Controller
@SessionAttributes({StaticStrings.SESSION_ATTRIBUTES_CURRENT_GROUP_ID, StaticStrings.SESSION_ATTRIBUTES_GROUP_USER_LIST})
@RequestMapping("/snooze")
public class UserScheduleController {

    private static Logger logger = Logger.getLogger(GroupSettingController.class);

    private final GroupScheduleService groupScheduleService;
    private final UserScheduleService userScheduleService;

    @Autowired
    public UserScheduleController(GroupScheduleService groupScheduleService, UserScheduleService userScheduleService) {
        this.groupScheduleService = groupScheduleService;
        this.userScheduleService = userScheduleService;
    }

    @RequestMapping(value = "/member/select/time")
    @ResponseBody
    public boolean memberSelect(HttpSession session, String selectedTime) {

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

    @RequestMapping(value = "/manager/enter/group")
    @ResponseBody
    public boolean managerEnterGroup(Integer passGroupID, ModelMap map) {
        map.addAttribute(StaticStrings.SESSION_ATTRIBUTES_CURRENT_GROUP_ID, passGroupID);
        return true;
    }

    @RequestMapping(value = "/member/enter/group")
    @ResponseBody
    public String scheduleShow(HttpSession session, Integer passGroupID, ModelMap map) {
        map.addAttribute(StaticStrings.SESSION_ATTRIBUTES_CURRENT_GROUP_ID, passGroupID);

        try {
            GroupSchedule groupSchedule = groupScheduleService.getGroupCurrentSchedule(passGroupID);
            int scheduleId = groupSchedule.getScheduleId();
            map.addAttribute(StaticStrings.SESSION_ATTRIBUTES_CURRENT_SCHEDULE_ID, scheduleId);

            int userId = ((User) session.getAttribute(StaticStrings.SESSION_ATTRIBUTES_USER)).getUserId();
            UserScheduleKey userScheduleKey = new UserScheduleKey();
            userScheduleKey.setScheduleId(scheduleId);
            userScheduleKey.setUserId(userId);

            if (groupSchedule.getStart() && groupSchedule.getEnd()) {
                return "showSchedule";
            } else if (userScheduleService.selectByPrimaryKey(userScheduleKey) == null) {
                return "notChoose";
            } else {
                return "alreadyChoose";
            }
        } catch (Exception e) {
            logger.error("no schedule in group", e);
            return "error";
        }
    }


}
