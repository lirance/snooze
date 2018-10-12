package com.oregonstate.snooze.service.impl;

import com.oregonstate.snooze.dao.GroupMapper;
import com.oregonstate.snooze.model.Group;
import com.oregonstate.snooze.service.GroupService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author: chendi Zhang
 * @date: 10/6/18
 * @description:
 **/

@Service
public class GroupServiceImpl implements GroupService {

    @Autowired
    private GroupMapper groupMapper;

    @Override
    public int insert(Group record) {
        return groupMapper.insert(record);
    }

    @Override
    public Group selectByGroupId(int groupId) {
        return groupMapper.selectByPrimaryKey(groupId);
    }
}
