package com.ssm.xingxingsystem.bean;


public class Video {

    private Integer id;
    private Integer userId;
    private String videoName;
    private String videoCover;
    private String videoAddress;
    private String uploadTime;
    private Character topFlag;     //置顶状态
    private Character examineFlag;    //审核状态
    private Integer pointsNum;       //点赞数量
    private Character auditPass;     //通过为0，驳回为2
    private Character viewingFlag;//会员


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getVideoName() {
        return videoName;
    }

    public void setVideoName(String videoName) {
        this.videoName = videoName;
    }

    public String getVideoCover() {
        return videoCover;
    }

    public void setVideoCover(String videoCover) {
        this.videoCover = videoCover;
    }

    public String getVideoAddress() {
        return videoAddress;
    }

    public void setVideoAddress(String videoAddress) {
        this.videoAddress = videoAddress;
    }

    public String getUploadTime() {
        return uploadTime;
    }

    public void setUploadTime(String uploadTime) {
        this.uploadTime = uploadTime;
    }

    public Character getTopFlag() {
        return topFlag;
    }

    public void setTopFlag(Character topFlag) {
        this.topFlag = topFlag;
    }

    public Character getExamineFlag() {
        return examineFlag;
    }

    public void setExamineFlag(Character examineFlag) {
        this.examineFlag = examineFlag;
    }

    public Integer getPointsNum() {
        return pointsNum;
    }

    public void setPointsNum(Integer pointsNum) {
        this.pointsNum = pointsNum;
    }

    public Character getAuditPass() {
        return auditPass;
    }

    public void setAuditPass(Character auditPass) {
        this.auditPass = auditPass;
    }

    public Character getViewingFlag() {
        return viewingFlag;
    }

    public void setViewingFlag(Character viewingFlag) {
        this.viewingFlag = viewingFlag;
    }
}
