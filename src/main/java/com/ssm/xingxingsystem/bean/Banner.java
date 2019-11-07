package com.ssm.xingxingsystem.bean;

public class Banner {
    private Integer id;
    private String photosAddress;
    private String photosUploadTime;
    private String photosJumps;
    private String photosName;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPhotosAddress() {
        return photosAddress;
    }

    public void setPhotosAddress(String photosAddress) {
        this.photosAddress = photosAddress;
    }

    public String getPhotosUploadTime() {
        return photosUploadTime;
    }

    public void setPhotosUploadTime(String photosUploadTime) {
        this.photosUploadTime = photosUploadTime;
    }

    public String getPhotosJumps() {
        return photosJumps;
    }

    public void setPhotosJumps(String photosJumps) {
        this.photosJumps = photosJumps;
    }

    public String getPhotosName() {
        return photosName;
    }

    public void setPhotosName(String photosName) {
        this.photosName = photosName;
    }
}
