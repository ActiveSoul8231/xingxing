package com.ssm.xingxingsystem.controller.frontend.integral;

import com.ssm.xingxingsystem.service.IntegralService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("label")
public class IntegralController {
    @Autowired
    IntegralService integralService;

    @RequestMapping(path = "toIntegral", method = RequestMethod.GET)
    public String toIntegral(){
        return "frontend/integral/integralList";
    }

}
