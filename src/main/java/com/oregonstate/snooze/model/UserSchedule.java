package com.oregonstate.snooze.model;

import java.util.Map;

public class UserSchedule extends UserScheduleKey {
    private Map<Integer, Boolean> scheduleDes;

    private String hours;

    public Map<Integer, Boolean> getScheduleDes() {
        return scheduleDes;
    }

    public void setScheduleDes(Map<Integer, Boolean> scheduleDes) {
        this.scheduleDes = scheduleDes;
    }

    public String getHours() {
        return hours;
    }

    public void setHours(String hours) {
        this.hours = hours == null ? null : hours.trim();
    }
}