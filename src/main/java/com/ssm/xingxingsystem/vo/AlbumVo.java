package com.ssm.xingxingsystem.vo;

import com.ssm.xingxingsystem.bean.Photo;

//相薄
public class AlbumVo {
    //相薄ID
    private Integer id;
    //相薄名称
    private String albumName;

    private Photo photo;

    public Photo getPhoto() {
        return photo;
    }

    public void setPhoto(Photo photo) {
        this.photo = photo;
    }

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
}
