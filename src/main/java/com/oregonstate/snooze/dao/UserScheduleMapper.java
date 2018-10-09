package com.oregonstate.snooze.dao;

import com.oregonstate.snooze.model.UserSchedule;
import com.oregonstate.snooze.model.UserScheduleKey;

public interface UserScheduleMapper {
    int deleteByPrimaryKey(UserScheduleKey key);

    int insert(UserSchedule record);

    int insertSelective(UserSchedule record);

    UserSchedule selectByPrimaryKey(UserScheduleKey key);

    int updateByPrimaryKeySelective(UserSchedule record);

    int updateByPrimaryKey(UserSchedule record);
}