package com.zking.model;

public class Teacher {
    private Integer teacherId;

    private String teacherName;

    private Integer userId;

    private String teacherSex;

    private String teacherAddress;

    private String teacherTel;

    public Teacher(Integer teacherId, String teacherName, Integer userId, String teacherSex, String teacherAddress, String teacherTel) {
        this.teacherId = teacherId;
        this.teacherName = teacherName;
        this.userId = userId;
        this.teacherSex = teacherSex;
        this.teacherAddress = teacherAddress;
        this.teacherTel = teacherTel;
    }

    public Teacher() {
        super();
    }

    public Integer getTeacherId() {
        return teacherId;
    }

    public void setTeacherId(Integer teacherId) {
        this.teacherId = teacherId;
    }

    public String getTeacherName() {
        return teacherName;
    }

    public void setTeacherName(String teacherName) {
        this.teacherName = teacherName;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getTeacherSex() {
        return teacherSex;
    }

    public void setTeacherSex(String teacherSex) {
        this.teacherSex = teacherSex;
    }

    public String getTeacherAddress() {
        return teacherAddress;
    }

    public void setTeacherAddress(String teacherAddress) {
        this.teacherAddress = teacherAddress;
    }

    public String getTeacherTel() {
        return teacherTel;
    }

    public void setTeacherTel(String teacherTel) {
        this.teacherTel = teacherTel;
    }
}