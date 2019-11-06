package com.ssm.xingxingsystem.controller.frontend.vip;

import com.ssm.xingxingsystem.bean.User;
import com.ssm.xingxingsystem.service.VipService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import sun.plugin2.message.GetAppletMessage;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;

@Controller
@RequestMapping("vip")
public class vipController {
    @Autowired
    private VipService vipService;
    @Autowired
    HttpServletRequest request;

    @RequestMapping(path = "vipPD",method = RequestMethod.GET)
    public String vipPD(){
        //        User user = (User) request.getSession().getAttribute("user");
//        Integer userId=user.getId();
        Integer userId=9;
        boolean flag = vipService.selectDqrq(userId);
        return "";

    }


    @RequestMapping(path = "toVip", method = RequestMethod.GET)
    public String userLogin(User user) {
        return "frontend/vip/vipkt";
    }

    @RequestMapping(path = "vipsj", method = RequestMethod.POST)
    public String vipsj(Integer vipTime) {
//        User user = (User) request.getSession().getAttribute("user");
//        Integer userId=user.getId();
        Integer userId=9;
        String vipsj = vipService.vipsj(vipTime, userId);
        return vipsj;
    }
    @RequestMapping(path = "vip1", method = RequestMethod.GET)
    public String vip1(Integer vipTime) {
//        User user = (User) request.getSession().getAttribute("user");
//        Integer userId=user.getId();
        Integer userId=9;
        String vipsj = vipService.vipsj(1, userId);
        return vipsj;
    }
    @RequestMapping(path = "vip12", method = RequestMethod.GET)
    public String vip12() {
//        User user = (User) request.getSession().getAttribute("user");
//        Integer userId=user.getId();
        Integer userId=9;
        String vipsj = vipService.vipsj(12, userId);
        return vipsj;
    }

}
