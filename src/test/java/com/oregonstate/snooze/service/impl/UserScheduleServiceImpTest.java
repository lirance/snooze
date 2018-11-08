package com.oregonstate.snooze.service.impl;

import com.oregonstate.snooze.model.UserSchedule;
import com.oregonstate.snooze.service.UserScheduleService;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath*:/*.xml"})
public class UserScheduleServiceImpTest {

    private UserSchedule userSchedule;

    @Resource
    @Autowired
    private UserScheduleService userScheduleService;

    @Before
    public void setUp() {
    }

    @After
    public void tearDown() {
    }

    @Test
    public void insert() {
    }

    @Test
    public void selectByPrimaryKey() {
    }

    @Test
    public void updateByPrimaryKey() {
    }

    @Test
    public void deleteByPrimaryKey() {
    }
}