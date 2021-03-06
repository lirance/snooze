package com.oregonstate.snooze.service;

import com.oregonstate.snooze.model.TestUser;

import java.util.List;

/**
 * @author: Chendi Zhang
 * @date: 9/27/18
 * @description:
 */

public interface TestService extends BaseObjectService<TestUser, Integer> {

    List<TestUser> findUser() throws Exception;


}
