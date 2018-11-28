package com.oregonstate.snooze.service;

import com.oregonstate.snooze.model.GroupSchedule;

/**
 * @author: chendi Zhang
 * @date: 10/6/18
 * @description:
 **/

public interface GroupScheduleService extends BaseObjectService<GroupSchedule, Integer> {

    GroupSchedule getGroupCurrentSchedule(int groupId);

}
