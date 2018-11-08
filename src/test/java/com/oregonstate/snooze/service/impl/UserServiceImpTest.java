package com.oregonstate.snooze.service.impl;

import com.alibaba.fastjson.JSON;
import com.oregonstate.snooze.model.User;
import com.oregonstate.snooze.service.UserService;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath*:/*.xml"})
public class UserServiceImpTest {

    private User user = null;

    @Resource
    @Autowired
    private UserService userService;


    @Before
    public void setUp() throws Exception {
        user = new User();
        user.setUserName("t425");
        user.setPassword("34342");
        user.seteMail("arr234tr@fsljf.com");
    }

    @After
    public void tearDown() throws Exception {
        //test delete
        assertEquals(1, userService.deleteByPrimaryKey(userService.selectByEmail("arr234tr@fsljf.com").getUserId()));
    }


    @Test
    public void userServiceTest() {

        //test insert
        assertEquals(1, userService.insert(user));
        System.out.println(user.getUserId());

        //test select by email & id
        User userByEmail = userService.selectByEmail("arr234tr@fsljf.com");
        assertNotNull(userByEmail);
        User userById = userService.selectByPrimaryKey(userByEmail.getUserId());
        assertEquals(JSON.toJSONString(userByEmail), JSON.toJSONString(userById));

        //test update
        userByEmail.setUserName("newUserName");
        userService.updateByPrimaryKey(userByEmail);
        assertEquals("newUserName", userService.selectByEmail("arr234tr@fsljf.com").getUserName());
    }

    @Test
    public void changeProfile() {
        assertEquals(1, userService.insert(user));
    }


}