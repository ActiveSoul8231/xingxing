package com.ssm.xingxingsystem.controller.frontend.recharge;

import com.ssm.xingxingsystem.bean.Consumption;
import com.ssm.xingxingsystem.service.ConsumptionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("consumption")
public class ConsumptionController {
    @Autowired
    private ConsumptionService consumptionService;
    @Autowired
    HttpServletRequest request;


    //打赏展示
    @RequestMapping(path = "consumptionList",method = RequestMethod.GET)
    public ModelAndView consumptionList(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("frontend/recharge/consumptionList");
        List<Consumption> list=consumptionService.consumptionList();
        modelAndView.addObject("consumptionList",list);
        modelAndView.addObject("consumptionLength",list.size());
        return modelAndView;
    }

    @RequestMapping(path = "consumption",method = RequestMethod.POST)
    public void consumption(Double consumptionAmount,Integer id,Integer userId){

    }
}
