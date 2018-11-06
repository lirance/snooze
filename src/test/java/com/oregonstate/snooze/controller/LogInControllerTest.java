package com.oregonstate.snooze.controller;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.ui.ModelMap;

import javax.annotation.Resource;

import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath*:/*.xml"})
public class LogInControllerTest {

    private ModelMap modelMap;

    @Resource
    @Autowired
    private LogInController logInController;

    @Before
    public void setUp() throws Exception {
        modelMap = new ModelMap();
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void logIn() {
        assertTrue(logInController.logIn("123", "123@123", modelMap));
        assertFalse(logInController.logIn("1234", "123@123", modelMap));
    }
}