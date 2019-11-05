package com.ssm.xingxingsystem.bean;
//动态
public class Dynamic {
    //动态id
    private Integer id;
    //用户id
    private Integer userId;
    //动态内容
    private String dynamicContent;
    //动态图片地址
    private String dynamicPhotosAddress;
    //动态发布时间
    private  String dynamicDate;

    public String getDynamicContent() {
        return dynamicContent;
    }

    public void setDynamicContent(String dynamicContent) {
        this.dynamicContent = dynamicContent;
    }

    public String getDynamicPhotosAddress() {
        return dynamicPhotosAddress;
    }

    public void setDynamicPhotosAddress(String dynamicPhotosAddress) {
        this.dynamicPhotosAddress = dynamicPhotosAddress;
    }

    public String getDynamicDate() {
        return dynamicDate;
    }

    public void setDynamicDate(String dynamicDate) {
        this.dynamicDate = dynamicDate;
    }

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
}
