package com.oregonstate.snooze.service.impl;

import com.oregonstate.snooze.dao.UserScheduleMapper;
import com.oregonstate.snooze.model.UserSchedule;
import com.oregonstate.snooze.model.UserScheduleKey;
import com.oregonstate.snooze.service.UserScheduleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author: chendi Zhang
 * @date: 10/6/18
 * @description: user schedule service implement.
 **/

@Service
public class UserScheduleServiceImp implements UserScheduleService {

    @Autowired
    private UserScheduleMapper userScheduleMapper;

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
}
