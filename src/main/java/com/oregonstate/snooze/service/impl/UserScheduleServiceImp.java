package com.oregonstate.snooze.service.impl;

import com.oregonstate.snooze.dao.UserScheduleMapper;
import com.oregonstate.snooze.model.UserSchedule;
import com.oregonstate.snooze.model.UserScheduleKey;
import com.oregonstate.snooze.service.UserScheduleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author: chendi Zhang
 * @date: 10/6/18
 * @description: user schedule service implement.
 **/

@Service
public class UserScheduleServiceImp implements UserScheduleService {

    private final UserScheduleMapper userScheduleMapper;

    @Autowired
    public UserScheduleServiceImp(UserScheduleMapper userScheduleMapper) {
        this.userScheduleMapper = userScheduleMapper;
    }

    @Override
    public int insert(UserSchedule record) {
        return userScheduleMapper.insert(record);
    }

    @Override
    public UserSchedule selectByPrimaryKey(UserScheduleKey key) {
        return userScheduleMapper.selectByPrimaryKey(key);
    }

    @Override
    public int updateByPrimaryKey(UserSchedule userSchedule) {
        return userScheduleMapper.updateByPrimaryKey(userSchedule);
    }

    @Override
    public int deleteByPrimaryKey(UserScheduleKey userScheduleKey) {
        return userScheduleMapper.deleteByPrimaryKey(userScheduleKey);
    }

    @Override
    public int updateUserSchedule(String[] selectedTime, int scheduleId, int userId) {

        Map<Integer, Boolean> userScheduleMap = new HashMap<>();
        for (String time : selectedTime) {
            userScheduleMap.put(Integer.parseInt(time), true);
        }

        UserSchedule userSchedule = new UserSchedule();
        userSchedule.setScheduleId(scheduleId);
        userSchedule.setUserId(userId);
        userSchedule.setScheduleDes(userScheduleMap);
        userSchedule.setHours(String.valueOf(selectedTime.length));

        return userScheduleMapper.insert(userSchedule);
    }

    @Override
    public boolean userScheduleChoosed(int userId, int scheduleId) {
        UserScheduleKey userScheduleKey = new UserScheduleKey();
        userScheduleKey.setScheduleId(scheduleId);
        userScheduleKey.setUserId(userId);
        return userScheduleMapper.selectByPrimaryKey(userScheduleKey) != null;
    }

    @Override
    public List<UserSchedule> selectByScheduleId(int scheduleId) {
        return userScheduleMapper.selectByScheduleId(scheduleId);
    }

    @Override
    public int insertUserScheduleList(List<UserSchedule> userSchedules) {
        return userScheduleMapper.insertAll(userSchedules);
    }
}
