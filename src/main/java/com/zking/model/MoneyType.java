package com.zking.model;

public class MoneyType {
    private Integer mtId;

    private String mtName;

    public MoneyType(Integer mtId, String mtName) {
        this.mtId = mtId;
        this.mtName = mtName;
    }

    public MoneyType() {
        super();
    }

    public Integer getMtId() {
        return mtId;
    }

    public void setMtId(Integer mtId) {
        this.mtId = mtId;
    }

    public String getMtName() {
        return mtName;
    }

    public void setMtName(String mtName) {
        this.mtName = mtName;
    }
}