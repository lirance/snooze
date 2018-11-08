package com.oregonstate.snooze.service.impl;

import com.oregonstate.snooze.model.GroupUser;
import com.oregonstate.snooze.model.GroupUserKey;
import com.oregonstate.snooze.service.GroupUserService;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertNotNull;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath*:/*.xml"})
public class GroupUserServiceImplTest {

    private GroupUser groupUser;
    private GroupUserKey groupUserKey;

    @Resource
    @Autowired
    private GroupUserService groupUserService;

    @Before
    public void setUp() {
        groupUser = new GroupUser();
        groupUser.setManager(true);
        groupUser.setGroupId(10);
        groupUser.setUserId(27);

        groupUserKey = new GroupUserKey();
        groupUserKey.setUserId(27);
        groupUserKey.setGroupId(10);
    }

    @After
    public void tearDown() {
        assertEquals(1, groupUserService.deleteByPrimaryKey(groupUserKey));
    }


    @Test
    public void groupUserServiceTest() {

        assertEquals(1, groupUserService.insert(groupUser));

        assertNotNull(groupUserService.selectByPrimaryKey(groupUserKey));

        groupUser.setManager(false);
        groupUserService.updateByPrimaryKey(groupUser);
        assertFalse(groupUserService.selectByPrimaryKey(groupUserKey).getManager());


    }
}