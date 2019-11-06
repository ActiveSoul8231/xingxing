package com.ssm.xingxingsystem.service;

import com.ssm.xingxingsystem.bean.Video;
import com.ssm.xingxingsystem.util.PageCountUtil;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

public interface MyVideoService {


    Integer getTableCount();

    List<Video> videoList(PageCountUtil pageCountUtil, String videoName);

    Video getVideoById(Integer id);


    void videoInsert(Video video);


    Video topVideo(Integer id);

    void updateVideoTop(Video video);

    ModelAndView toVideo(Video video);



}
