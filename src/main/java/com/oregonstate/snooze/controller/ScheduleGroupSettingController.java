package com.oregonstate.snooze.controller;

import com.oregonstate.snooze.model.GroupSchedule;
import com.oregonstate.snooze.model.User;
import com.oregonstate.snooze.model.UserScheduleKey;
import com.oregonstate.snooze.service.GroupScheduleService;
import com.oregonstate.snooze.service.UserScheduleService;
import com.oregonstate.snooze.service.UserService;
import com.oregonstate.snooze.utils.StaticStrings;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
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
    private final UserScheduleService userScheduleService;

    @Autowired
    public ScheduleGroupSettingController(GroupScheduleService groupScheduleService, UserService userService, UserScheduleService userScheduleService) {
        this.groupScheduleService = groupScheduleService;
        this.userScheduleService = userScheduleService;
    }

    @RequestMapping(value = "/group/passGroupID")
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




