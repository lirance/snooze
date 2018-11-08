package com.oregonstate.snooze.dao;

import com.oregonstate.snooze.model.GroupUser;
import com.oregonstate.snooze.model.GroupUserKey;

import java.util.List;

public interface GroupUserMapper {
    int deleteByPrimaryKey(GroupUserKey key);

    int insert(GroupUser record);

    int insertSelective(GroupUser record);

    GroupUser selectByPrimaryKey(GroupUserKey key);

    int updateByPrimaryKeySelective(GroupUser record);

    int updateByPrimaryKey(GroupUser record);

    List<GroupUser> selectGroupByUserId(int userId);
}