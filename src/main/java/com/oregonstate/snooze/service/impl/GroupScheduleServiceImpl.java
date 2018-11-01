package com.oregonstate.snooze.service.impl;

import com.oregonstate.snooze.dao.GroupScheduleMapper;
import com.oregonstate.snooze.model.GroupSchedule;
import com.oregonstate.snooze.service.GroupScheduleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author: chendi Zhang
 * @date: 10/6/18
 * @description: group schedule service implement , get group schedule description, update group schedule
 **/
@Service
public class GroupScheduleServiceImpl implements GroupScheduleService {

    @Autowired
    private GroupScheduleMapper groupScheduleMapper;

    @Override
    public int insert(GroupSchedule record) {
        return groupScheduleMapper.insert(record);
    }

    @Override
    public GroupSchedule selectByPrimaryKey(Integer groupId) {
        return groupScheduleMapper.selectByPrimaryKey(groupId);
    }

    @Override
    public int updateByPrimaryKey(GroupSchedule groupSchedule) {
        return groupScheduleMapper.updateByPrimaryKey(groupSchedule);
    }
}
