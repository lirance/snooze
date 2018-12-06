package com.oregonstate.snooze.model;

public class UserScheduleKey extends BaseModelObject{
    private Integer scheduleId;

    private Integer userId;

    public Integer getScheduleId() {
        return scheduleId;
    }

    public void setScheduleId(Integer scheduleId) {
        this.scheduleId = scheduleId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }
}