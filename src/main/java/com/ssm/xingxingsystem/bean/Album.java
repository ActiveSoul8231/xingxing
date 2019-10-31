package com.ssm.xingxingsystem.bean;
//相薄
public class Album {
    //相薄ID
    private Integer id;
    //相薄名称
    private String albumName;
    private Integer userId;
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getAlbumName() {
        return albumName;
    }

    public void setAlbumName(String albumName) {
        this.albumName = albumName;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }
}
