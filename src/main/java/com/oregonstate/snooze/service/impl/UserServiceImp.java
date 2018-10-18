package com.oregonstate.snooze.service.impl;

import com.oregonstate.snooze.dao.UserMapper;
import com.oregonstate.snooze.model.User;
import com.oregonstate.snooze.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author: chendi Zhang
 * @date: 10/6/18
 * @description:
 **/

@Service
public class UserServiceImp implements UserService {

    @Autowired
    private UserMapper userMapper;


    @Override
    public int insert(User record) {
        record.setPassword(Integer.toString(record.getPassword().hashCode()));
        return userMapper.insert(record);
    }

    @Override
    public User selectByEmail(String email) {
        return userMapper.selectByEmail(email);
    }
    //TODO selectByEmail
}
