package com.zking.model;

import java.util.Date;

public class Financedetail {
    private Integer fdId;

    private Date fdDate;

    private String fdType;

    private String fdInfo;

    private Integer staffId;

    public Financedetail(Integer fdId, Date fdDate, String fdType, String fdInfo, Integer staffId) {
        this.fdId = fdId;
        this.fdDate = fdDate;
        this.fdType = fdType;
        this.fdInfo = fdInfo;
        this.staffId = staffId;
    }

    public Financedetail() {
        super();
    }

    public Integer getFdId() {
        return fdId;
    }

    public void setFdId(Integer fdId) {
        this.fdId = fdId;
    }

    public Date getFdDate() {
        return fdDate;
    }

    public void setFdDate(Date fdDate) {
        this.fdDate = fdDate;
    }

    public String getFdType() {
        return fdType;
    }

    public void setFdType(String fdType) {
        this.fdType = fdType;
    }

    public String getFdInfo() {
        return fdInfo;
    }

    public void setFdInfo(String fdInfo) {
        this.fdInfo = fdInfo;
    }

    public Integer getStaffId() {
        return staffId;
    }

    public void setStaffId(Integer staffId) {
        this.staffId = staffId;
    }
}