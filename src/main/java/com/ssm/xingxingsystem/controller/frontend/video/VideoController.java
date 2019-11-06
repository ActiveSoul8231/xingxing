package com.ssm.xingxingsystem.controller.frontend.video;

import com.ssm.xingxingsystem.bean.Video;
import com.ssm.xingxingsystem.service.MyVideoService;
import com.ssm.xingxingsystem.util.AliyunOSSUtil;
import com.ssm.xingxingsystem.util.PageCountUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.HttpServletRequest;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("video")
public class VideoController {

    @Autowired
    private MyVideoService myVideoService;
    @Autowired
    HttpServletRequest request;


    //视频列表
    @RequestMapping(path = "videoList")
    public ModelAndView videoList(Integer pageNow,String videoName){
        ModelAndView mv=new ModelAndView();
        Integer tableCount=myVideoService.getTableCount();

        PageCountUtil pageCountUtil = new PageCountUtil(pageNow, 5,tableCount);
        List<Video> list = myVideoService.videoList(pageCountUtil,videoName);
        mv.setViewName("frontend/video/videoList");
        mv.addObject("videoList",list);
        mv.addObject("videoName",videoName);
        mv.addObject("pageCountUtil",pageCountUtil);
        return mv;
    }
    //        打开视频
    @RequestMapping(path = "onVideo")
    public ModelAndView onVideo(Integer id){
        Video video=(Video) myVideoService.getVideoById(id);
        ModelAndView mv=new ModelAndView();
        mv.setViewName("frontend/video/onVideo");
        mv.addObject("video",video);
        return mv;

    }

    //        上传视频
    @RequestMapping(path = "videoInsert",method = RequestMethod.POST)
    public String videoInsert(MultipartFile upload){
        String s = AliyunOSSUtil.uploadObject2OSS(upload);
        String s1 = AliyunOSSUtil.uploadObject2OSS(upload);
        Video video = new Video();
        video.setUserId(1);
        video.setVideoName(upload.getOriginalFilename());
        video.setVideoCover(s);
        video.setVideoAddress(s1);
        video.setUploadTime(new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
        myVideoService.videoInsert(video);
        return "redirect:/video/videoList";
    }
    @RequestMapping(path = "toVideoInsert",method = RequestMethod.GET)
    public ModelAndView toVideoInsert() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("frontend/video/videoInsert");
        return modelAndView;

    }
    //    置顶视频
    @RequestMapping(path = "topVideo")
    public ModelAndView topVideo(Integer id){
        ModelAndView mv = new ModelAndView();
        Video topVideo=myVideoService.topVideo(id);
        Video video = new Video();
        video.setId(topVideo.getId());
        if (topVideo !=null){
            if (topVideo.equals('0')){
                video.setTopFlag('1');
                myVideoService.updateVideoTop(video);
                mv.addObject("frontend/video/videoList");
            }
            Video videoById = myVideoService.getVideoById(id);
            if (videoById.getTopFlag().equals("1")){
                videoById.setTopFlag('0');
            }else {
                videoById.setTopFlag('1');
            }
            return myVideoService.toVideo(videoById);
        }
        return mv;

    }
    //    取消置顶
    @RequestMapping(path = "cancelTopVideo")
    public ModelAndView cancelTopVideo(Integer id){
        Video videoById = myVideoService.getVideoById(id);
        videoById.setTopFlag('0');
        return myVideoService.toVideo(videoById);

    }



}




