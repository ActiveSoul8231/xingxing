package com.ssm.xingxingsystem.service.impl;

import com.ssm.xingxingsystem.bean.Video;
import com.ssm.xingxingsystem.dao.MyVideoDao;
import com.ssm.xingxingsystem.service.MyVideoService;
import com.ssm.xingxingsystem.util.PageCountUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Service
@Transactional
public class MyVideoServiceImpl implements MyVideoService {

    @Autowired
    private MyVideoDao myVideoDao;

    @Override
    public Integer getTableCount() {
        return myVideoDao.getTableCount();
    }

    @Override
    public List<Video> videoList(PageCountUtil pageCountUtil, String videoName) {
        return myVideoDao.getVideoList(pageCountUtil.getPageCount(),pageCountUtil.getPageSize(),videoName);
    }

    @Override
    public Video getVideoById(Integer id) {
        return myVideoDao.getVideoById(id);
    }

    @Override
    public void videoInsert(Video video) {
        myVideoDao.videoInsert(video);
    }

    @Override
    public Video topVideo(Integer id) {
        return myVideoDao.topVideo(id);

    }

    @Override
    public void updateVideoTop(Video video) {
         myVideoDao.updateVideoTop(video);
    }

    @Override
    public ModelAndView toVideo(Video video) {

        return myVideoDao.toVideo(video);
    }



}
