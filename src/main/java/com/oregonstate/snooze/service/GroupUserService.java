package com.oregonstate.snooze.service;

import com.oregonstate.snooze.model.Group;
import com.oregonstate.snooze.model.GroupUser;
import com.oregonstate.snooze.model.GroupUserKey;

import java.util.List;

public interface GroupUserService extends BaseObjectService<GroupUser, GroupUserKey> {
    List<GroupUser> selectGroupByUserId(int userId);
}
