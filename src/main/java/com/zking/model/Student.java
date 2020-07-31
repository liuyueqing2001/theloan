package com.zking.model;

public class Student {
    private Integer studentId;

    private String studentName;

    private Integer classId;

    private Integer userId;

    private String studentIdentity;

    private String studentSex;

    private String studentAddress;

    private Integer studentAge;

    private String studentAncestral;

    private String studentTel;

    private Integer studentStatus;

    private Integer shooolmoneyStatus;

    private Integer loansStatus;

    private String studentInfo;

    private Integer scoreId;

    public Student(Integer studentId, String studentName, Integer classId, Integer userId, String studentIdentity, String studentSex, String studentAddress, Integer studentAge, String studentAncestral, String studentTel, Integer studentStatus, Integer shooolmoneyStatus, Integer loansStatus, String studentInfo, Integer scoreId) {
        this.studentId = studentId;
        this.studentName = studentName;
        this.classId = classId;
        this.userId = userId;
        this.studentIdentity = studentIdentity;
        this.studentSex = studentSex;
        this.studentAddress = studentAddress;
        this.studentAge = studentAge;
        this.studentAncestral = studentAncestral;
        this.studentTel = studentTel;
        this.studentStatus = studentStatus;
        this.shooolmoneyStatus = shooolmoneyStatus;
        this.loansStatus = loansStatus;
        this.studentInfo = studentInfo;
        this.scoreId = scoreId;
    }

    public Student() {
        super();
    }

    public Integer getStudentId() {
        return studentId;
    }

    public void setStudentId(Integer studentId) {
        this.studentId = studentId;
    }

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }

    public Integer getClassId() {
        return classId;
    }

    public void setClassId(Integer classId) {
        this.classId = classId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getStudentIdentity() {
        return studentIdentity;
    }

    public void setStudentIdentity(String studentIdentity) {
        this.studentIdentity = studentIdentity;
    }

    public String getStudentSex() {
        return studentSex;
    }

    public void setStudentSex(String studentSex) {
        this.studentSex = studentSex;
    }

    public String getStudentAddress() {
        return studentAddress;
    }

    public void setStudentAddress(String studentAddress) {
        this.studentAddress = studentAddress;
    }

    public Integer getStudentAge() {
        return studentAge;
    }

    public void setStudentAge(Integer studentAge) {
        this.studentAge = studentAge;
    }

    public String getStudentAncestral() {
        return studentAncestral;
    }

    public void setStudentAncestral(String studentAncestral) {
        this.studentAncestral = studentAncestral;
    }

    public String getStudentTel() {
        return studentTel;
    }

    public void setStudentTel(String studentTel) {
        this.studentTel = studentTel;
    }

    public Integer getStudentStatus() {
        return studentStatus;
    }

    public void setStudentStatus(Integer studentStatus) {
        this.studentStatus = studentStatus;
    }

    public Integer getShooolmoneyStatus() {
        return shooolmoneyStatus;
    }

    public void setShooolmoneyStatus(Integer shooolmoneyStatus) {
        this.shooolmoneyStatus = shooolmoneyStatus;
    }

    public Integer getLoansStatus() {
        return loansStatus;
    }

    public void setLoansStatus(Integer loansStatus) {
        this.loansStatus = loansStatus;
    }

    public String getStudentInfo() {
        return studentInfo;
    }

    public void setStudentInfo(String studentInfo) {
        this.studentInfo = studentInfo;
    }

    public Integer getScoreId() {
        return scoreId;
    }

    public void setScoreId(Integer scoreId) {
        this.scoreId = scoreId;
    }
}