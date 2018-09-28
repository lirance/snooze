package com.oregonstate.snooze.dao;

import com.oregonstate.snooze.model.User;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author: Chendi Zhang
 * @date: 9/27/18
 * @description:
 **/

@Repository
public interface TestDao {

     User getAll();
}
