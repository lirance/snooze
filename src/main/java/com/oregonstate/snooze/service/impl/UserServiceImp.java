package com.oregonstate.snooze.service.impl;

import com.oregonstate.snooze.dao.UserMapper;
import com.oregonstate.snooze.model.User;
import com.oregonstate.snooze.service.UserService;
import com.oregonstate.snooze.utils.StaticStrings;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author: chendi Zhang
 * @date: 10/6/18
 * @description: user service implement.
 **/

@Service
public class UserServiceImp implements UserService {

    private final UserMapper userMapper;

    @Autowired
    public UserServiceImp(UserMapper userMapper) {
        this.userMapper = userMapper;
    }


    @Override
    public int insert(User record) {
        record.setPassword(Integer.toString(record.getPassword().hashCode()));
        return userMapper.insert(record);
    }

    @Override
    public User selectByPrimaryKey(Integer userId) {
        return userMapper.selectByPrimaryKey(userId);
    }

    @Override
    public int updateByPrimaryKey(User user) {
        return userMapper.updateByPrimaryKey(user);
    }

    @Override
    public int deleteByPrimaryKey(Integer userId) {
        return userMapper.deleteByPrimaryKey(userId);
    }

    @Override
    public User selectByEmail(String email) {
        return userMapper.selectByEmail(email);
    }

    @Override
    public Boolean changeProfile(String newUsername, String newPassword, User user) {
        if (!newUsername.equals(StaticStrings.NULL) && newPassword.equals(StaticStrings.NULL)) {
            user.setUserName(newUsername);
            updateByPrimaryKey(user);
            return true;
        } else if (!newPassword.equals(StaticStrings.NULL) && newUsername.equals(StaticStrings.NULL)) {
            user.setPassword(newPassword);
            updateByPrimaryKey(user);
            return true;
        } else if (!newUsername.equals(StaticStrings.NULL) && !newPassword.equals(StaticStrings.NULL)) {
            user.setUserName(newUsername);
            user.setPassword(newPassword);
            updateByPrimaryKey(user);
            return true;
        } else {
            return false;
        }
    }
}
