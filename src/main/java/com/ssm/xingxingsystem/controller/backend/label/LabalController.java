package com.ssm.xingxingsystem.controller.backend.label;

import com.ssm.xingxingsystem.bean.Label;
import com.ssm.xingxingsystem.service.LabelService;
import com.ssm.xingxingsystem.util.PageCountUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.xml.ws.Action;
import java.util.List;

@Controller
@RequestMapping("label")
public class LabalController {
    @Autowired
    private LabelService labelService;
    @Autowired
    HttpServletRequest request;


    @RequestMapping(path = "labelList", method = RequestMethod.GET)
    public ModelAndView userList(Integer pageNow,Integer pageSize,String labelName) {
        ModelAndView modelAndView = new ModelAndView();
        Integer pageCount= labelService.selectlabelCont();
        if (pageSize==null){
             pageSize=10;
        }
        PageCountUtil pageCountUtil = new PageCountUtil(pageNow,pageSize,pageCount);


        List<Label> list = labelService.selectlabel(pageCountUtil,labelName);
        modelAndView.addObject("pageNow",pageCountUtil.getPageNow());
        modelAndView.addObject("pageEnd",pageCountUtil.getPageEnd());
//        modelAndView.addObject("pageSize",pageCountUtil.getPageSize());
        modelAndView.addObject("likelabelName",labelName);
        modelAndView.addObject("labelList", list);
        modelAndView.setViewName("backend/label/labelList");

        return modelAndView;
    }

    @RequestMapping(path = "insertLabel", method = RequestMethod.GET)
    public String insertLabel() {
        return "backend/label/addlabel";
    }

    @RequestMapping(path = "updateLabel", method = RequestMethod.GET)
    public String updateLabel(Integer id) {
        Label label = labelService.selectlabelBy(id);
        request.setAttribute("labelList",label);
        return "backend/label/updatelabel";
    }

    @RequestMapping(path = "labelUpdate", method = RequestMethod.POST)
    public String labelUpdate(Label label) {
        labelService.labelUpdate(label);

        return "redirect:/label/labelList";
    }


    @RequestMapping(path = "deleteLabel", method = RequestMethod.GET)
    public String deleteLabel(Integer id) {

        labelService.deleteLabel(id);
        return "redirect:/label/labelList";
    }
    @RequestMapping(path = "addlabel",method = RequestMethod.POST)
    public String addlabel(Label label){
        labelService.addlabel(label);
        return  "redirect:/label/labelList";
    }

}
