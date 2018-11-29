package com.oregonstate.snooze.model;

import java.util.Map;

public class GroupSchedule extends BaseModelObject  {
    private Integer scheduleId;

    private Integer groupId;

    private String scheduleName;

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

    public String getScheduleName() {
        return scheduleName;
    }

    public void setScheduleName(String scheduleName) {
        this.scheduleName = scheduleName;
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