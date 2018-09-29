package com.oregonstate.snooze.service.impl;

import com.oregonstate.snooze.dao.TestUserMapper;
import com.oregonstate.snooze.model.TestUser;
import com.oregonstate.snooze.service.TestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * @author: Chendi Zhang
 * @date: 9/27/18
 * @description:
 */

@Service
public class TestServiceImpl implements TestService {

    @Autowired
    private TestUserMapper testUserMapper;

    @Override
    public List<TestUser> findUser() {
        List<TestUser> users = new ArrayList<>();
        for (int i = 0; i < 10; i++) {
            users.add(testUserMapper.selectByPrimaryKey(i));
        }
        return users;
    }
}
