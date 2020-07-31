package com.zking.model;

import java.util.Date;

public class MoneyApply {
    private Integer maId;

    private Integer smId;

    private Integer tcId;

    private Integer studentId;

    private Integer staffId;

    private Date auditdate;

    private Date disposedate;

    private Date applydate;

    public MoneyApply(Integer maId, Integer smId, Integer tcId, Integer studentId, Integer staffId, Date auditdate, Date disposedate, Date applydate) {
        this.maId = maId;
        this.smId = smId;
        this.tcId = tcId;
        this.studentId = studentId;
        this.staffId = staffId;
        this.auditdate = auditdate;
        this.disposedate = disposedate;
        this.applydate = applydate;
    }

    public MoneyApply() {
        super();
    }

    public Integer getMaId() {
        return maId;
    }

    public void setMaId(Integer maId) {
        this.maId = maId;
    }

    public Integer getSmId() {
        return smId;
    }

    public void setSmId(Integer smId) {
        this.smId = smId;
    }

    public Integer getTcId() {
        return tcId;
    }

    public void setTcId(Integer tcId) {
        this.tcId = tcId;
    }

    public Integer getStudentId() {
        return studentId;
    }

    public void setStudentId(Integer studentId) {
        this.studentId = studentId;
    }

    public Integer getStaffId() {
        return staffId;
    }

    public void setStaffId(Integer staffId) {
        this.staffId = staffId;
    }

    public Date getAuditdate() {
        return auditdate;
    }

    public void setAuditdate(Date auditdate) {
        this.auditdate = auditdate;
    }

    public Date getDisposedate() {
        return disposedate;
    }

    public void setDisposedate(Date disposedate) {
        this.disposedate = disposedate;
    }

    public Date getApplydate() {
        return applydate;
    }

    public void setApplydate(Date applydate) {
        this.applydate = applydate;
    }
}