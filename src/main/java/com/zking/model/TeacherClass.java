package com.zking.model;

public class TeacherClass {
    private Integer tcId;

    private Integer teacherId;

    private Integer classId;

    public TeacherClass(Integer tcId, Integer teacherId, Integer classId) {
        this.tcId = tcId;
        this.teacherId = teacherId;
        this.classId = classId;
    }

    public TeacherClass() {
        super();
    }

    public Integer getTcId() {
        return tcId;
    }

    public void setTcId(Integer tcId) {
        this.tcId = tcId;
    }

    public Integer getTeacherId() {
        return teacherId;
    }

    public void setTeacherId(Integer teacherId) {
        this.teacherId = teacherId;
    }

    public Integer getClassId() {
        return classId;
    }

    public void setClassId(Integer classId) {
        this.classId = classId;
    }
}