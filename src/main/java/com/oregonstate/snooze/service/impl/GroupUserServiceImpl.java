package com.oregonstate.snooze.service.impl;

import com.oregonstate.snooze.dao.GroupUserMapper;
import com.oregonstate.snooze.model.GroupUser;
import com.oregonstate.snooze.service.GroupUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author: chendi Zhang
 * @date: 10/12/18
 * @description: group user service implement
 **/
@Service
public class GroupUserServiceImpl implements GroupUserService {

    @Autowired
    GroupUserMapper groupUserMapper;

    @Override
    public int insert(GroupUser record) {
        return groupUserMapper.insert(record);
    }
}