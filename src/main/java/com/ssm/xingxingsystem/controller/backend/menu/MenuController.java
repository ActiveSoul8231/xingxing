package com.ssm.xingxingsystem.controller.backend.menu;

import com.ssm.xingxingsystem.bean.menu.FirstMenu;
import com.ssm.xingxingsystem.bean.menu.TwoMenu;
import com.ssm.xingxingsystem.service.MenuService;
import com.ssm.xingxingsystem.util.PageCountUtil;
import com.ssm.xingxingsystem.vo.FirstMenuVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("menu")
public class MenuController {
    @Autowired
    MenuService menuService;
    @Autowired
    HttpServletRequest request;
    //一级菜单查询
    @RequestMapping(path = "firstMenuSelect",method = RequestMethod.GET)
    public ModelAndView firstMenuSelect(Integer pageNow,Integer pageSize,String menuName){
        ModelAndView modelAndView = new ModelAndView();
        Integer tableCount = menuService.getTableCount();
        PageCountUtil pageCountUtil = new PageCountUtil(pageNow, pageSize, tableCount);
        List<FirstMenu> list = menuService.firstMenuSelect(pageCountUtil,menuName);
        modelAndView.setViewName("backend/menu/firstMenuSelect");
        modelAndView.addObject("list",list);
        modelAndView.addObject("pageCountUtil",pageCountUtil);
        modelAndView.addObject("menuName",menuName);
        return modelAndView;
    }
    //一级菜单去添加页面
    @RequestMapping(path = "firstMenuToInsert",method = RequestMethod.GET)
    public String toInsert(){
        return "backend/menu/firstMenuInsert";
    }
    //一级菜单添加时名称的验证
    @RequestMapping(path = "getMenuName",method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> getMenuName(String menuName){
        String menuFlag = menuService.getMenuName(menuName);
        HashMap<String, Object> stringObjectHashMap = new HashMap<>();
        stringObjectHashMap.put("message",menuFlag);
        return stringObjectHashMap;
    }
    //一级菜单添加方法
    @RequestMapping(path = "firstMenuInsert",method = RequestMethod.POST)
    public String firstMenuInsert(String menuName){
        menuService.firstMenuInsert(menuName);
        return "redirect:/menu/firstMenuSelect";
    }
    //一级菜单删除方法
    @RequestMapping(path = "firstMenuDelete",method = RequestMethod.GET)
    public String firstMenuDelete(Integer id){
        menuService.firstMenuDelete(id);
        return "redirect:/menu/firstMenuSelect";
    }
    //一级菜单去修改页面+回显
    @RequestMapping(path = "firstMenuToUpdate",method = RequestMethod.GET)
    public ModelAndView firstMenuToUpdate(Integer id){
        ModelAndView modelAndView = new ModelAndView();
        FirstMenu firstMenu = menuService.toUpdateById(id);
        modelAndView.setViewName("backend/menu/firstMenuUpdate");
        modelAndView.addObject("firstMenu",firstMenu);
        return modelAndView;
    }
    //一级菜单修改方法
    @RequestMapping(path = "firstMenuUpdate",method = RequestMethod.POST)
    public String firstMenuUpdate(Integer id,String menuName){
        menuService.firstMenuUpdate(id,menuName);
        return "redirect:/menu/firstMenuSelect";
    }
    //二级菜单查询方法
    @RequestMapping(path = "twoMenuSelect",method = RequestMethod.GET)
    public ModelAndView twoMenuSelect(Integer pageNow,Integer pageSize,String menu2Name,Integer oneMenuId){
        ModelAndView modelAndView = new ModelAndView();
        List<FirstMenu> firstMenuList = menuService.getFirstMenu();
        Integer tableCount1 = menuService.getTableCount1();
        PageCountUtil pageCountUtil = new PageCountUtil(pageNow, pageSize, tableCount1);
        List<TwoMenu> twoMenuList = menuService.twoMenuSelect(pageCountUtil,menu2Name,oneMenuId);
        modelAndView.setViewName("backend/menu/twoMenuSelect");
        modelAndView.addObject("twoMenuList",twoMenuList);
        modelAndView.addObject("firstMenuList",firstMenuList);
        modelAndView.addObject("pageCountUtil",pageCountUtil);
        modelAndView.addObject("menu2Name",menu2Name);
        modelAndView.addObject("oneMenuId",oneMenuId);
        return modelAndView;
    }
    //二级菜单去添加
    @RequestMapping(path = "twoMenuToInsert",method = RequestMethod.GET)
    public ModelAndView twoMenuToInsert(){
        ModelAndView modelAndView = new ModelAndView();
        List<FirstMenu> firstMenu = menuService.getFirstMenu();
        modelAndView.setViewName("backend/menu/twoMenuInsert");
        modelAndView.addObject("list",firstMenu);
        return modelAndView;
    }
    //二级菜单添加方法
    @RequestMapping(path = "twoMenuInsert",method = RequestMethod.POST)
    public String twoMenuInsert(String menu2Name,String menuName){
        menuService.twoMenuInsert(menu2Name,menuName);
        return "redirect:/menu/twoMenuSelect";
    }
    //二级菜单删除方法
    @RequestMapping(path = "twoMenuDelete",method = RequestMethod.GET)
    public String twoMenuDelete(Integer id){
        menuService.twoMenuDelete(id);
        return "redirect:/menu/twoMenuSelect";
    }
}
