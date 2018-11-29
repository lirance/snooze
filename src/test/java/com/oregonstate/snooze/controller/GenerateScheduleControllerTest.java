package com.oregonstate.snooze.controller;

import com.oregonstate.snooze.model.User;
import com.oregonstate.snooze.model.UserSchedule;
import com.oregonstate.snooze.service.GroupScheduleService;
import com.oregonstate.snooze.service.JoinService;
import com.oregonstate.snooze.service.UserScheduleService;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.List;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath*:/*.xml"})
public class GenerateScheduleControllerTest {

    @Resource
    @Autowired
    private GenerateScheduleController generateScheduleController;

    @Autowired
    private JoinService joinService;
    @Autowired
    private GroupScheduleService groupScheduleService;
    @Autowired
    private UserScheduleService userScheduleService;

    @Before
    public void setUp() throws Exception {
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void generateScheduleAlgorithms() {
        int scheduleId = 5;
        int groupId = 1;
////        get the schedule that user prefer.
//        List<UserSchedule> userPreferScheduleList = userScheduleService.selectByScheduleId(scheduleId);
////         the user list of this group
//        List<User> groupUsers = joinService.selectUsersByGroupId(groupId, false);
//
//        generateScheduleController.generateScheduleAlgorithms(userPreferScheduleList, groupUsers);
    }
}