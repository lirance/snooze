package com.oregonstate.snooze.service.impl;

import com.oregonstate.snooze.service.JoinService;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

import static org.junit.Assert.assertNotNull;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath*:/*.xml"})
public class JoinServiceImplTest {


    @Resource
    @Autowired
    private JoinService joinService;

    @Before
    public void setUp() {
    }

    @After
    public void tearDown() {
    }

    @Test
    public void selectGroupsByUserId() {
        assertNotNull(joinService.selectGroupsByUserId(12, true));
    }
}