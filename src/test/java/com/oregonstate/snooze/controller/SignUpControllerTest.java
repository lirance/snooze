package com.oregonstate.snooze.controller;

import com.oregonstate.snooze.model.User;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import javax.validation.constraints.AssertTrue;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath*:/*.xml"})
public class SignUpControllerTest {


    @Resource
    @Autowired
    private SignUpController signUpController;

    @Before
    public void setUp() throws Exception {
    }

    @After
    public void tearDown() throws Exception {
        User user = signUpController.userService.selectByEmail("test@test");
        assertEquals(1,signUpController.userService.deleteByPrimaryKey(user.getUserId()));
    }

    @Test
    public void signUp() {
        assertTrue(signUpController.signUp("test", "test", "test@test"));
    }
}