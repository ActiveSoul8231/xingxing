package com.ssm.xingxingsystem.controller.backend.banner;


import com.ssm.xingxingsystem.bean.Banner;
import com.ssm.xingxingsystem.service.BannerService;
import com.ssm.xingxingsystem.util.AliyunOSSUtil;
import com.ssm.xingxingsystem.util.FileUpLoadUtil;
import com.ssm.xingxingsystem.util.FileUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

import java.io.File;
import java.util.List;

@Controller
@RequestMapping("banner")
public class BannerController {
    @Autowired
    HttpServletRequest request;
    @Autowired
    BannerService bannerService;


    @RequestMapping(path = "BannerList", method = RequestMethod.GET)
    public ModelAndView BannerList(String bannerLikeName) {
        ModelAndView modelAndView = new ModelAndView();

        List bannerList = bannerService.selecytList(bannerLikeName);
        modelAndView.setViewName("frontend/banner/bannerList");
        modelAndView.addObject("bannerList", bannerList);
        return modelAndView;
    }

    @RequestMapping(path = "insertBanner", method = RequestMethod.GET)
    public String insertBanner() {
        return "frontend/banner/insertBanner";
    }




    @RequestMapping(path = "bannerAdd",method = RequestMethod.POST)
    public String bannerAdd(Banner banner,MultipartFile upload){
        String s = AliyunOSSUtil.uploadObject2OSS(upload);
        bannerService.addBanner(banner,s);
        return "redirect:/banner/BannerList";

    }
    @RequestMapping(path = "bannerToUpdate",method = RequestMethod.GET)
    public String bannerToUpdate(Integer id){
        Banner banner = bannerService.selectBannerById(id);
        request.setAttribute("banner",banner);
        return "frontend/banner/bannerUpdate";
    }
    @RequestMapping(path = "bannerUpdate",method = RequestMethod.POST)
    public String bannerUpdate(Banner banner,MultipartFile upload){
        String url = AliyunOSSUtil.uploadObject2OSS(upload);
        bannerService.bannerUpdate(banner,url);
        return  "redirect:/banner/BannerList";
    }
    @RequestMapping(path = "bannerDelete",method = RequestMethod.GET)
    public String bannerDelete(Integer id){
        bannerService.bannerDelete(id);
        return "redirect:/banner/BannerList";
    }

    //轮播访问接口
    @RequestMapping(path = "bannerJK",method = RequestMethod.GET)
    public String bannerJK(){
        List list = bannerService.selectJK();
        request.setAttribute("bannerList",list);
        return "index";
    }
}
