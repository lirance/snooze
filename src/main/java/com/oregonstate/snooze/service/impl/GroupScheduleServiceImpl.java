package com.oregonstate.snooze.service.impl;

import com.oregonstate.snooze.dao.GroupScheduleMapper;
import com.oregonstate.snooze.model.GroupSchedule;
import com.oregonstate.snooze.service.GroupScheduleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author: chendi Zhang
 * @date: 10/6/18
 * @description:
 **/
@Service
public class GroupScheduleServiceImpl implements GroupScheduleService {

    @Autowired
    private GroupScheduleMapper groupScheduleDao;

    @Override
    public int insert(GroupSchedule record) {
        return groupScheduleDao.insert(record);
    }
}
