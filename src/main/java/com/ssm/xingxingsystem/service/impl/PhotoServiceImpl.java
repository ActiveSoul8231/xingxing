package com.ssm.xingxingsystem.service.impl;

import com.ssm.xingxingsystem.bean.Photo;
import com.ssm.xingxingsystem.dao.PhotoDao;
import com.ssm.xingxingsystem.service.PhotoService;
import com.ssm.xingxingsystem.util.PageCountUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

//事务注解
@Service
@Transactional
public class PhotoServiceImpl implements PhotoService {
    @Autowired
    private PhotoDao photoDao;
    @Override
    public Integer getTableCount() {
        return photoDao.getTableCount();
    }

    @Override
    public List<Photo> getPhotoList(PageCountUtil pageCountUtil, String beginTime, String endTime, String fileName) {
        return photoDao.getPhotoList(pageCountUtil,beginTime,endTime,fileName);
    }

    @Override
    public void insertPhoto(Photo photo) {
        photoDao.insertPhoto(photo);
    }


}
