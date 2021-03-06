package com.oregonstate.snooze.service;

import com.oregonstate.snooze.model.Group;

import java.util.List;

/**
 * @author: chendi Zhang
 * @date: 10/6/18
 * @description:
 **/

public interface GroupService extends BaseObjectService<Group, Integer> {
    List<Group> selectAll();
}
