package com.oregonstate.snooze.model;

import com.sun.org.apache.xpath.internal.operations.Bool;

import java.util.Map;

public class GroupSchedule {
    private Integer scheduleId;

    private Integer groupId;

    private Map<Integer, Boolean> scheduleDes;

    private Boolean start = false;

    private Boolean end = false;

    private Integer minHours = 0;

    public Integer getScheduleId() {
        return scheduleId;
    }

    public void setScheduleId(Integer scheduleId) {
        this.scheduleId = scheduleId;
    }

    public Integer getGroupId() {
        return groupId;
    }

    public void setGroupId(Integer groupId) {
        this.groupId = groupId;
    }

    public Map<Integer, Boolean> getScheduleDes() {
        return scheduleDes;
    }

    public void setScheduleDes(Map<Integer, Boolean> scheduleDes) {
        this.scheduleDes = scheduleDes;
    }

    public Boolean getStart() {
        return start;
    }

    public void setStart(Boolean start) {
        this.start = start;
    }

    public Boolean getEnd() {
        return end;
    }

    public void setEnd(Boolean end) {
        this.end = end;
    }

    public Integer getMinHours() {
        return minHours;
    }

    public void setMinHours(Integer minHours) {
        this.minHours = minHours;
    }
}