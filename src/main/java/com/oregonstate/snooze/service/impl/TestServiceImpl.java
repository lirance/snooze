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
 * @description: test service implement, test if the service can work.
 */

@Service
public class TestServiceImpl implements TestService {

    @Autowired
    private TestUserMapper testUserMapper;

    @Override
    public List<TestUser> findUser() {
        List<TestUser> users = new ArrayList<>();
        for (int i = 0; i < 100; i++) {
            users.add(testUserMapper.selectByPrimaryKey(i));
        }
        return users;
    }

    @Override
    public int insert(TestUser record) {
        return testUserMapper.insert(record);
    }

    @Override
    public TestUser selectByPrimaryKey(Integer integer) {
        return testUserMapper.selectByPrimaryKey(integer);
    }
}
