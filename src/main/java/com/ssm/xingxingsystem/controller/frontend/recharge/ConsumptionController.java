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
        // nteger userId = (Integer) request.getSession().getAttribute("userId");
        Integer id=1;
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("frontend/recharge/consumptionList");
        List<Consumption> list=consumptionService.consumptionList(id);
        modelAndView.addObject("consumptionList",list);
        modelAndView.addObject("consumptionLength",list.size());
        return modelAndView;
    }

    //打赏页面跳转
    @RequestMapping(path = "toConsumption")
    public String consumption(){
        return "frontend/recharge/Consumption";
    }

    //自定义打赏
    @RequestMapping(path = "consumption",method = RequestMethod.POST)
    public String Consumption(Double consumptionAmount,Integer spId){
//      Integer id=request.getSession().setAttribute(id);
        Integer id=1;
        spId=9;
        consumptionService.Consumption(consumptionAmount,id,spId);
        return "redirect:consumptionList";
    }

    //固定打赏金额
    @RequestMapping(path = "Consumption2",method = RequestMethod.POST)
    public String Consumptin2(Double consumptionAmount,Integer spId){
//      Integer id=request.getSession().setAttribute(id);
        Integer id=1;
        consumptionService.Consumption2(consumptionAmount,id,spId);
        return null;
    }
}
