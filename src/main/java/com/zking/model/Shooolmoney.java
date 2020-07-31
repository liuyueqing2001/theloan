package com.zking.model;

import java.util.Date;

public class Shooolmoney {
    private Integer smId;

    private Integer mtId;

    private Date issuedate;

    private Date stopdate;

    private Float smMoney;

    public Shooolmoney(Integer smId, Integer mtId, Date issuedate, Date stopdate, Float smMoney) {
        this.smId = smId;
        this.mtId = mtId;
        this.issuedate = issuedate;
        this.stopdate = stopdate;
        this.smMoney = smMoney;
    }

    public Shooolmoney() {
        super();
    }

    public Integer getSmId() {
        return smId;
    }

    public void setSmId(Integer smId) {
        this.smId = smId;
    }

    public Integer getMtId() {
        return mtId;
    }

    public void setMtId(Integer mtId) {
        this.mtId = mtId;
    }

    public Date getIssuedate() {
        return issuedate;
    }

    public void setIssuedate(Date issuedate) {
        this.issuedate = issuedate;
    }

    public Date getStopdate() {
        return stopdate;
    }

    public void setStopdate(Date stopdate) {
        this.stopdate = stopdate;
    }

    public Float getSmMoney() {
        return smMoney;
    }

    public void setSmMoney(Float smMoney) {
        this.smMoney = smMoney;
    }
}