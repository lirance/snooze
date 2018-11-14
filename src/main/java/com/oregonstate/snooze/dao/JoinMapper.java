package com.oregonstate.snooze.dao;

import com.oregonstate.snooze.model.Group;

import java.util.List;

/**
 * @author: Chendi Zhang
 * @date: 11/7/18
 * @description:
 **/

public interface JoinMapper {
    List<Group> selectGroupsByUserId(int userId, boolean manage);
}
