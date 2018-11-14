package com.oregonstate.snooze.service.impl;

import com.oregonstate.snooze.model.Group;
import com.oregonstate.snooze.service.GroupService;
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
public class GroupServiceImplTest {

    private Group group;

    @Resource
    @Autowired
    private GroupService groupService;

    @Before
    public void setUp() {
        group = new Group();
        group.setGroupName("testGroupName");
    }

    @After
    public void tearDown() {
        // test delete
        assertEquals(1, groupService.deleteByPrimaryKey(group.getGroupId()));
    }

    @Test
    public void groupServiceTest() {

        assertEquals(1, groupService.insert(group));

        //Group select
        assertNotNull(groupService.selectByPrimaryKey(group.getGroupId()));

        //test update
        group.setGroupName("newGroupName");
        groupService.updateByPrimaryKey(group);
        assertEquals("newGroupName", groupService.selectByPrimaryKey(group.getGroupId()).getGroupName());
    }

}