package com.ssm.xingxingsystem.controller.frontend.vip;

import com.ssm.xingxingsystem.bean.User;
import com.ssm.xingxingsystem.service.VipService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("vip")
public class vipController {
    @Autowired
    private VipService vipService;




    @RequestMapping(path = "toVip",method = RequestMethod.GET)
    public String userLogin(User user){
        return "frontend/vip/vipkt";
    }
    @RequestMapping(path = "vipsj",method = RequestMethod.POST)
    public String vipsj(Integer vipTime){

        return "";
    }
}
