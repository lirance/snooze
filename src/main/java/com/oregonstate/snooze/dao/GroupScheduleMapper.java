package com.oregonstate.snooze.dao;

import com.oregonstate.snooze.model.GroupSchedule;

public interface GroupScheduleMapper {
    int deleteByPrimaryKey(Integer scheduleId);

    int insert(GroupSchedule record);

    int insertSelective(GroupSchedule record);

    GroupSchedule selectByPrimaryKey(Integer scheduleId);

    int updateByPrimaryKeySelective(GroupSchedule record);

    int updateByPrimaryKey(GroupSchedule record);

    GroupSchedule selectCurrentScheduleByGroupId(Integer groupId);
}