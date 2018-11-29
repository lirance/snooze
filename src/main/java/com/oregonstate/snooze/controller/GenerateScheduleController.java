package com.oregonstate.snooze.controller;

import com.oregonstate.snooze.model.GroupSchedule;
import com.oregonstate.snooze.model.User;
import com.oregonstate.snooze.model.UserSchedule;
import com.oregonstate.snooze.service.GroupScheduleService;
import com.oregonstate.snooze.service.JoinService;
import com.oregonstate.snooze.service.UserScheduleService;
import com.oregonstate.snooze.utils.StaticStrings;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.*;

/**
 * @author: Chendi Zhang
 * @date: 11/28/18
 * @description:
 **/

@Controller
@RequestMapping("/snooze")
public class GenerateScheduleController {


    private final JoinService joinService;
    private final GroupScheduleService groupScheduleService;
    private final UserScheduleService userScheduleService;

    @Autowired
    public GenerateScheduleController(JoinService joinService, GroupScheduleService groupScheduleService, UserScheduleService userScheduleService) {
        this.joinService = joinService;
        this.groupScheduleService = groupScheduleService;
        this.userScheduleService = userScheduleService;
    }

    @RequestMapping(value = "/manager/schedule/generate")
    @ResponseBody
    public boolean generateSchedule(HttpSession session) {
        int groupId = (int) session.getAttribute(StaticStrings.SESSION_ATTRIBUTES_CURRENT_GROUP_ID);
        int scheduleId = (int) session.getAttribute(StaticStrings.SESSION_ATTRIBUTES_CURRENT_SCHEDULE_ID);

        //end the schedule first
        GroupSchedule groupSchedule = groupScheduleService.selectByPrimaryKey(scheduleId);
        groupSchedule.setEnd(true);
        groupScheduleService.updateByPrimaryKey(groupSchedule);
        //get the schedule that user prefer.
        List<UserSchedule> userPreferScheduleList = userScheduleService.selectByScheduleId(scheduleId);
        // the user list of this group
        List<User> groupUsers = joinService.selectUsersByGroupId(groupId, false);

        // generate the schedule
        Map<Integer, Integer> resultMap = generateScheduleAlgorithms(userPreferScheduleList, groupUsers);

        List<UserSchedule> userSchedules = getUserSchedules(groupUsers, scheduleId, resultMap);

        userScheduleService.insertUserScheduleList(userSchedules);
        return true;
    }

    @RequestMapping(value = "/group/totalSchedule.json")
    @ResponseBody
    public Map<Integer, Map<Integer, User>> showSchedule(HttpSession session) {
        int groupId = (int) session.getAttribute(StaticStrings.SESSION_ATTRIBUTES_CURRENT_GROUP_ID);
        int scheduleId = (int) session.getAttribute(StaticStrings.SESSION_ATTRIBUTES_CURRENT_SCHEDULE_ID);
        List<UserSchedule> userScheduleList = userScheduleService.selectByScheduleId(scheduleId);
        List<User> groupUsers = joinService.selectUsersByGroupId(groupId, false);

        Map<Integer, User> userMap = new HashMap<>();
        for (User user : groupUsers) {
            userMap.put(user.getUserId(), user);
        }

        Map<Integer, Map<Integer, User>> resultMap = new HashMap<>();
        // initial result map
        for (int i = 8; i <= 18; i++) {
            Map<Integer, User> map = new HashMap<>();
            resultMap.put(i, map);
        }

        //iterate the userScheduleList
        for (UserSchedule userSchedule : userScheduleList) {
            int userId = userSchedule.getUserId();
            User user = userMap.get(userId);

            for (Map.Entry scheduleDes : userSchedule.getScheduleDes().entrySet()) {
                int time = (int) scheduleDes.getKey();
                int key = time % 100;
                resultMap.get(key).put(time, user);
            }
        }

        return resultMap;
    }

    private List<UserSchedule> getUserSchedules(List<User> groupUsers, int scheduleId, Map<Integer, Integer> resultMap) {
        Map<Integer, UserSchedule> userScheduleMap = new HashMap<>();
        for (User user : groupUsers) {
            UserSchedule userSchedule = new UserSchedule();
            userSchedule.setUserId(user.getUserId());
            userSchedule.setScheduleId(scheduleId);
            Map<Integer, Boolean> uScheduleDes = new HashMap<>();
            userSchedule.setScheduleDes(uScheduleDes);
            userScheduleMap.put(user.getUserId(), userSchedule);
        }

        for (Map.Entry entry : resultMap.entrySet()) {
            int time = (int) entry.getKey();
            int userId = (int) entry.getValue();
            UserSchedule userSchedule = userScheduleMap.get(userId);
            Map<Integer, Boolean> uScheduleDes = userSchedule.getScheduleDes();
            uScheduleDes.put(time, true);
            userSchedule.setHours(String.valueOf(uScheduleDes.size()));
        }

        List<UserSchedule> userSchedules = new ArrayList<>();
        for (Map.Entry entry : userScheduleMap.entrySet()) {
            userSchedules.add((UserSchedule) entry.getValue());
        }

        return userSchedules;

    }

    private Map<Integer, Integer> generateScheduleAlgorithms(List<UserSchedule> userPreferScheduleList, List<User> groupUsers) {

        //initial the hash Map that key is the time, and value is a list of userId prefer this time
        Map<Integer, List<Integer>> timeUsersMap = new HashMap<>();
        // initial the hash map that key is the time and the value is the numbers of choosing this time.
        Map<Integer, Integer> timeNumbersMap = new HashMap<>();
        for (int i = 1; i <= 7; i++) {
            for (int j = 8; j <= 18; j++) {
                int time = i * 100 + j;
                List<Integer> userList = new ArrayList<>();
                timeUsersMap.put(time, userList);
                timeNumbersMap.put(time, 0);
            }
        }


        // put the list in to the map
        for (UserSchedule userSchedule : userPreferScheduleList) {
            Map<Integer, Boolean> userScheduleDes = userSchedule.getScheduleDes();
            int userId = userSchedule.getUserId();

            for (Map.Entry entry : userScheduleDes.entrySet()) {
                // if the user prefer this time
                int key = (int) entry.getKey();
                if ((Boolean) entry.getValue()) {
                    timeUsersMap.get(key).add(userId);
                    timeNumbersMap.put(key, timeNumbersMap.get(key) + 1);
                }
            }
        }

        Map<Integer, List<Integer>> numbersTimeMap = new TreeMap<>();

        // the entry is the time and the value is the number.
        for (Map.Entry entry : timeNumbersMap.entrySet()) {
            List<Integer> timeList;
            if (numbersTimeMap.get((int) entry.getValue()) == null) {
                timeList = new ArrayList<>();
            } else {
                timeList = numbersTimeMap.get((int) entry.getValue());
            }
            timeList.add((int) entry.getKey());
            numbersTimeMap.put((int) entry.getValue(), timeList);
        }

        // how many shift was the user was choosed, key is the userId and value for the numbers
        Map<Integer, Integer> userMap = new HashMap<>();

        // init the user map
        for (User u : groupUsers) {
            int userId = u.getUserId();
            userMap.put(userId, 0);
        }

        //result map key is time and value is userId
        Map<Integer, Integer> resultMap = new HashMap<>();

        for (Map.Entry entry : numbersTimeMap.entrySet()) {
            int key = (int) entry.getKey();
            List<Integer> value = (List<Integer>) entry.getValue();

            // wasn't selected , left over
            if (key == 0) {
                continue;
            }
            // time was selected once,
            if (key == 1) {
                for (int time : value) {
                    int userId = timeUsersMap.get(time).get(0);
                    resultMap.put(time, userId);
                    userMap.put(userId, userMap.get(userId) + 1);
                }
                continue;
            }

            //time was selected more than once,
            if (key > 1) {
                for (int time : value) {
                    int userId = timeUsersMap.get(time).get(0);
                    int temp = 0;
                    for (int id : timeUsersMap.get(time)) {
                        if (userMap.get(id) <= temp) {
                            userId = id;
                        }
                    }
                    resultMap.put(time, userId);
                    userMap.put(userId, userMap.get(userId) + 1);
                }
            }

        }

        List<Integer> timesNoOneChoosed = numbersTimeMap.get(0);

        PriorityQueue<Map.Entry<Integer, Integer>> userQueue = new PriorityQueue<>(Comparator.comparingInt(Map.Entry::getValue));

        for (Map.Entry entry : userMap.entrySet()) {
            userQueue.offer(entry);
        }
        if (timesNoOneChoosed != null) {
            for (int time : timesNoOneChoosed) {
                Map.Entry entry = userQueue.poll();
                int userId = (int) entry.getKey();
                resultMap.put(time, userId);
                userMap.put(userId, userMap.get(userId) + 1);
                userQueue.offer(entry);
            }
        }
        System.out.println(resultMap);

        return resultMap;

    }
}
