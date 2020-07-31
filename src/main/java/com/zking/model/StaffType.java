package com.zking.model;

public class StaffType {
    private Integer stId;

    private String stName;

    public StaffType(Integer stId, String stName) {
        this.stId = stId;
        this.stName = stName;
    }

    public StaffType() {
        super();
    }

    public Integer getStId() {
        return stId;
    }

    public void setStId(Integer stId) {
        this.stId = stId;
    }

    public String getStName() {
        return stName;
    }

    public void setStName(String stName) {
        this.stName = stName;
    }
}