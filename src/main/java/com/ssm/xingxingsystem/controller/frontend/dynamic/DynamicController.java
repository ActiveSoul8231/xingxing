package com.ssm.xingxingsystem.controller.frontend.dynamic;


import com.ssm.xingxingsystem.bean.Dynamic;
import com.ssm.xingxingsystem.service.DynamicService;
import com.ssm.xingxingsystem.util.AliyunOSSUtil;
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

//我的动态
@Controller
@RequestMapping("dynamic")
public class DynamicController {
    @Autowired
    private DynamicService dynamicService;
@Autowired
    HttpServletRequest request;
//动态列表
    @RequestMapping(path = "dynamicList",method = RequestMethod.GET)
    public ModelAndView albumList(){
        ModelAndView modelAndView=new ModelAndView();
        request.getSession().getAttribute("user333");
        List<Dynamic> list=dynamicService.dynamicList(1);
        modelAndView.addObject("dynamicList",list);
        modelAndView.setViewName("frontend/dynamic/dynamicList");
        return modelAndView;

    }
//    //去发布动态
//    @RequestMapping(path = "toAddDynamic",method = RequestMethod.GET)
//    public  String toAddDynamic(){
//        return "frontend/dynamic/dynamicList";
//    }
    //发布动态
    @RequestMapping(path = "addDynamic",method = RequestMethod.POST)
    public String addDynamic(MultipartFile upload, HttpServletRequest request,String dynamicContent){
        String s = AliyunOSSUtil.uploadObject2OSS(upload);
        Dynamic dynamic=new Dynamic();
        dynamic.setUserId(1);
        dynamic.setDynamicContent(dynamicContent);
        dynamic.setDynamicPhotosAddress(s);
        dynamic.setDynamicDate(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
        dynamicService.addDynamic(dynamic);
        return "redirect:/dynamic/dynamicList";

    }
    //删除动态
    @RequestMapping(path = "deleteDynamic",method = RequestMethod.GET)
    public String deleteDynamic(Integer id){
        dynamicService.deleteDynamic(id);
        return "redirect:/dynamic/dynamicList";

    }

}
