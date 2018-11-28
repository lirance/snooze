package com.oregonstate.snooze.service;

import com.oregonstate.snooze.model.Group;
import com.oregonstate.snooze.model.User;

import java.util.List;

/**
 * @author: Chendi Zhang
 * @date: 11/7/18
 * @description: join Service
 **/

public interface JoinService {
    /**
     * @param userId userId
     * @param manage Boole-- true for the user is the manager of this group
     * @return return a list of the users group(manage group or normal group)
     */
    List<Group> selectGroupsByUserId(int userId, boolean manage);

    /**
     * @param groupId groupId
     * @param manage Boole-- true for the user is the manager of this group
     * @return return a list of the group users(manage group or normal group)
     */
    List<User> selectUsersByGroupId(int groupId, boolean manage);

}
