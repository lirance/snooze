package com.oregonstate.snooze.service.impl;

import com.oregonstate.snooze.dao.JoinMapper;
import com.oregonstate.snooze.model.Group;
import com.oregonstate.snooze.model.User;
import com.oregonstate.snooze.service.JoinService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author: Chendi Zhang
 * @date: 11/7/18
 * @description: join service implement
 **/

@Service
public class JoinServiceImpl implements JoinService {
    private final JoinMapper joinMapper;

    @Autowired
    public JoinServiceImpl(JoinMapper joinMapper) {
        this.joinMapper = joinMapper;
    }

    @Override
    public List<Group> selectGroupsByUserId(int userId, boolean manage) {
        return joinMapper.selectGroupsByUserId(userId, manage);
    }

    @Override
    public List<User> selectUsersByGroupId(int groupId, boolean manage) {
        return joinMapper.selectUsersByGroupId(groupId,manage);
    }

    @Override
    public List<User> getUsersAlreadyChooseShift(int scheduleId) {
        return joinMapper.selectUsersByScheduleId(scheduleId);
    }
}
