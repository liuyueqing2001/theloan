package com.zking.model;

import java.util.Date;

public class Notice {
    private Integer noticeId;

    private String noticeTitle;

    private String noticeCentent;

    private Integer staffId;

    private Date noticeDate;

    public Notice(Integer noticeId, String noticeTitle, String noticeCentent, Integer staffId, Date noticeDate) {
        this.noticeId = noticeId;
        this.noticeTitle = noticeTitle;
        this.noticeCentent = noticeCentent;
        this.staffId = staffId;
        this.noticeDate = noticeDate;
    }

    public Notice() {
        super();
    }

    public Integer getNoticeId() {
        return noticeId;
    }

    public void setNoticeId(Integer noticeId) {
        this.noticeId = noticeId;
    }

    public String getNoticeTitle() {
        return noticeTitle;
    }

    public void setNoticeTitle(String noticeTitle) {
        this.noticeTitle = noticeTitle;
    }

    public String getNoticeCentent() {
        return noticeCentent;
    }

    public void setNoticeCentent(String noticeCentent) {
        this.noticeCentent = noticeCentent;
    }

    public Integer getStaffId() {
        return staffId;
    }

    public void setStaffId(Integer staffId) {
        this.staffId = staffId;
    }

    public Date getNoticeDate() {
        return noticeDate;
    }

    public void setNoticeDate(Date noticeDate) {
        this.noticeDate = noticeDate;
    }
}