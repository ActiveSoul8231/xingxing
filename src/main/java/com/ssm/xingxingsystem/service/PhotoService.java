package com.ssm.xingxingsystem.service;

import com.ssm.xingxingsystem.bean.Photo;
import com.ssm.xingxingsystem.util.PageCountUtil;

import java.util.List;

public interface PhotoService {
    Integer getTableCount();

    List<Photo> getPhotoList(PageCountUtil pageCountUtil, String beginTime, String endTime, String fileName);


    void insertPhoto(Photo photo);

    Photo getPhotoById(Integer id);
}
