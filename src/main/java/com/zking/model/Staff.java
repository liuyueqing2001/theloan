package com.zking.model;

public class Staff {
    private Integer staffId;

    private Integer userId;

    private Integer stId;

    private String staffName;

    public Staff(Integer staffId, Integer userId, Integer stId, String staffName) {
        this.staffId = staffId;
        this.userId = userId;
        this.stId = stId;
        this.staffName = staffName;
    }

    public Staff() {
        super();
    }

    public Integer getStaffId() {
        return staffId;
    }

    public void setStaffId(Integer staffId) {
        this.staffId = staffId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getStId() {
        return stId;
    }

    public void setStId(Integer stId) {
        this.stId = stId;
    }

    public String getStaffName() {
        return staffName;
    }

    public void setStaffName(String staffName) {
        this.staffName = staffName;
    }
}