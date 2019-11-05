package com.ssm.xingxingsystem.controller.frontend.photo;

import com.ssm.xingxingsystem.bean.Photo;
import com.ssm.xingxingsystem.service.AlbumService;
import com.ssm.xingxingsystem.service.PhotoService;

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
@RequestMapping("photo")
public class PhotoController {
    @Autowired
    private AlbumService albumService;
    @Autowired
    private PhotoService photoService;

//   @RequestMapping(path = "photoList",method = RequestMethod.GET)
//    public ModelAndView photoList(Integer pageNow, Integer pageSize, String beginTime, String endTime, String fileName){
//       Integer tableCount=photoService.getTableCount();
//       PageCountUtil pageCountUtil =new PageCountUtil(pageNow,pageSize,tableCount);
//       List<Photo> list=photoService.getPhotoList(pageCountUtil,beginTime,endTime,fileName);
//       ModelAndView modelAndView = new ModelAndView();
//       modelAndView.addObject("photoList",list);
//       modelAndView.addObject("pageCountUtil",pageCountUtil);
//       modelAndView.addObject("beginTime",beginTime);
//       modelAndView.addObject("endTime",endTime);
//       modelAndView.addObject("fileName",fileName);
//       modelAndView.setViewName("frontend/albumPhoto/myPhoto");
//       return modelAndView;
//
//   }
    @RequestMapping(path = "toInsertPhoto",method = RequestMethod.GET)
//    public ModelAndView toInsertPhoto(Integer aId){
    public ModelAndView toInsertPhoto(Integer albumId){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("albumId",albumId);
        modelAndView.setViewName("frontend/albumPhoto/insertPhoto");
        return modelAndView;
    }
    @RequestMapping(path = "insertPhoto",method = RequestMethod.POST)
    public String insertPhoto(MultipartFile upload, HttpServletRequest request,Integer albumId){
//        User user = (User) request.getSession().getAttribute("user");
        String s = AliyunOSSUtil.uploadObject2OSS(upload);
        Photo Photo = new Photo();
        Photo.setUserId(1);
//        Photo.setUserId(user.getId());
        Photo.setFileName(upload.getOriginalFilename());
        Photo.setPhotoAddress(s);
        Photo.setAlbumId(albumId);
        Photo.setUploadTime(new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
        photoService.insertPhoto(Photo);
        return "redirect:/album/albumPhoto?id="+albumId;

    }
}
