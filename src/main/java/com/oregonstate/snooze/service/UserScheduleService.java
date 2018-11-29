package com.oregonstate.snooze.service;

import com.oregonstate.snooze.model.UserSchedule;
import com.oregonstate.snooze.model.UserScheduleKey;

import java.util.List;

/**
 * @author: chendi Zhang
 * @date: 10/6/18
 * @description:
 **/

public interface UserScheduleService extends BaseObjectService<UserSchedule, UserScheduleKey> {

    int updateUserSchedule(String[] selectedTime, int scheduleId, int userId);

    boolean userScheduleChoosed(int userId, int scheduleId);

    List<UserSchedule> selectByScheduleId(int scheduleId);

    int insertUserScheduleList(List<UserSchedule> userSchedules);

}
