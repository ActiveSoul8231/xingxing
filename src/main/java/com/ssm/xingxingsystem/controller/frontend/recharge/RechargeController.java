package com.ssm.xingxingsystem.controller.frontend.recharge;

import com.ssm.xingxingsystem.bean.Recharge;
import com.ssm.xingxingsystem.bean.User;
import com.ssm.xingxingsystem.service.RechargeService;
import org.apache.ibatis.annotations.Insert;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @description:
 * @author: MR
 * @time: 2019/10/25 10:17
 **/
@Controller
@RequestMapping("recharge")
public class RechargeController {
    @Autowired
    private RechargeService rechargeService;
    @Autowired
    HttpServletRequest request;

    private Double rechargeAmonunt;


    //充值记录展示
    @RequestMapping(path = "rechargeList",method = RequestMethod.GET)
    public ModelAndView rechargeList(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("frontend/recharge/rechargeList");
        List<Recharge> list=rechargeService.rechargeList();
        modelAndView.addObject("rechargeList",list);
        modelAndView.addObject("rechargeLength",list.size());
        return modelAndView;
    }

    //跳转到充值页面
    @RequestMapping(path = "toRecharge")
    public String toRecharge(){
        return "frontend/recharge/Recharge";
    }

    //自定义充值金额
    @RequestMapping(path = "recharge",method = RequestMethod.POST)
    public String Recharge(){
//        Integer userId = (Integer) request.getSession().getAttribute("userId");
        Integer userId=1;
        rechargeService.Recharge(userId,rechargeAmonunt);
        return "frontend/recharge/rechargeList/";
    }

    //固定充值6
    @RequestMapping(path = "recharge6",method = RequestMethod.POST)
    public String Rcharge6(){
        //Integer userId = (Integer) request.getSession().getAttribute("userId");
        Integer userId=1;
        rechargeService.Recharge6(userId,rechargeAmonunt);
        return "frontend/recharge/rechargeList/";
    }

    //固定充值666
    @RequestMapping(path = "recharge666",method = RequestMethod.POST)
    public String Rcharge666(){
        //Integer userId = (Integer) request.getSession().getAttribute("userId");
        Integer userId=1;
        rechargeService.Recharge666(userId,rechargeAmonunt);
        return "frontend/recharge/rechargeList/";
    }

    //固定充值888
    @RequestMapping(path = "recharge888",method = RequestMethod.POST)
    public String Rcharge999(){
        //Integer userId = (Integer) request.getSession().getAttribute("userId");
        Integer userId=1;
        rechargeService.Recharge888(userId,rechargeAmonunt);
        return "frontend/recharge/rechargeList/";
    }


}
