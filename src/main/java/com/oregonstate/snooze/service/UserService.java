package com.oregonstate.snooze.service;

import com.oregonstate.snooze.model.User;

/**
 * @author: chendi Zhang
 * @date: 10/6/18
 * @description:
 **/

public interface UserService extends BaseObjectService<User, Integer> {

    User selectByEmail(String email);

    Boolean changeProfile(String newUsername, String newPassword, User user);
}
