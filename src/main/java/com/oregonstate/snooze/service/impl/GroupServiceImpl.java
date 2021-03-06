package com.oregonstate.snooze.service.impl;

import com.oregonstate.snooze.dao.GroupMapper;
import com.oregonstate.snooze.model.Group;
import com.oregonstate.snooze.service.GroupService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author: chendi Zhang
 * @date: 10/6/18
 * @description: group service implement
 **/

@Service
public class GroupServiceImpl implements GroupService {

    private final GroupMapper groupMapper;

    @Autowired
    public GroupServiceImpl(GroupMapper groupMapper) {
        this.groupMapper = groupMapper;
    }

    @Override
    public int insert(Group record) {
        return groupMapper.insert(record);
    }

    @Override
    public Group selectByPrimaryKey(Integer groupId) {
        return groupMapper.selectByPrimaryKey(groupId);
    }

    @Override
    public int updateByPrimaryKey(Group group) {
        return groupMapper.updateByPrimaryKey(group);
    }

    @Override
    public int deleteByPrimaryKey(Integer groupId) {
        return groupMapper.deleteByPrimaryKey(groupId);
    }

    @Override
    public List<Group> selectAll() {
        return groupMapper.selectAllGroups();
    }
}
