package com.ssm.xingxingsystem.controller.backend.admin;/*
 *      Created by IntelliJ IDEA.
 *      User:baiziming
 *      Date: 2019/10/25 0025
 *      Time: 14:45
 */

import com.ssm.xingxingsystem.bean.Admin;
import com.ssm.xingxingsystem.bean.User;
import com.ssm.xingxingsystem.bean.Video;
import com.ssm.xingxingsystem.service.AdminService;
import com.ssm.xingxingsystem.util.PageCountUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("admin")
public class AdminController {

    @Autowired
    private AdminService adminService;


    /**
     *@author baiziming
     *@method userList 获取普通用户所有信息
     *@Param pageNow                当前页面
     *@Param pageSize               页面条数
     *@Param selectByValue          模糊查询
     **/
    @RequestMapping(path = "userList",method = RequestMethod.GET)
    public ModelAndView userList( Integer pageNow , Integer pageSize, String selectByValue){
        ModelAndView modelAndView = new ModelAndView();
        Integer tableCount=adminService.getUserCount();/*获取列表总数*/
        PageCountUtil pageCountUtil = new PageCountUtil(pageNow, pageSize, tableCount);
        List<User>  userList = adminService.getAllUser(selectByValue,pageCountUtil);/*获取全部用户信息*/
        modelAndView.setViewName("backend/admin/userList");
        modelAndView.addObject("userList",userList);
        modelAndView.addObject("pageCountUtil",pageCountUtil);
        modelAndView.addObject("selectByValue",selectByValue);
        return modelAndView;
    }
    /**
     *@author baiziming
     *@method updateUserFlag 更改用户状态
     *@Param id            用户ID
     *@Param recoveryFlag           用户回收状态
     *@Param iceFlag                用户冻结状态
     *@Param delFlag                用户封号状态
     **/
    @RequestMapping(path = "updateUserFlag",method = RequestMethod.GET)
    public ModelAndView updateUserFlag( Integer id ,String recoveryFlag,String iceFlag,String delFlag){
        ModelAndView modelAndView = new ModelAndView();
        User user = adminService.getUserById(id);
        User user1 = new User();
        user1.setId(user.getId());
        if (recoveryFlag!=null ){/*   修改用户回复状态  */
            if (recoveryFlag.equals("0")){
                user1.setRecoveryFlag("1");
            }else {
                user1.setRecoveryFlag("0");
            }
            adminService.updateUserByFlag(user1);
        }else if (iceFlag!=null){/*   修改用户冻结状态  */
            if (iceFlag.equals("0")){
                user1.setIceFlag("1");
            }else {
                user1.setIceFlag("0");
            }
            adminService.updateUserByFlag(user1);
        }else if(delFlag!=null){/*   修改用户封号状态  */
            if (delFlag.equals("0")){
                user1.setDelFlag("1");
            }else {
                user1.setDelFlag("0");
            }
            adminService.updateUserByFlag(user1);
        }
        modelAndView.setViewName("redirect:userList");
        return modelAndView;
    }
    /**
     *@author baiziming
     *@method deleteUser            删除用户信息
     *@Param id            用户ID
     **/
    @RequestMapping(path = "deleteUser",method = RequestMethod.GET)
    public ModelAndView deleteUser(Integer id ){
        ModelAndView modelAndView = new ModelAndView();
        adminService.deleteUserById(id);
        modelAndView.setViewName("redirect:userList");
        return modelAndView;
    }

    /**
     *@author baiziming
     *@method userList 获取普通用户所有信息
     *@Param pageNow                当前页面
     *@Param pageSize               页面条数
     *@Param selectByValue          模糊查询
     **/
    @RequestMapping(path = "managementVideoList",method = RequestMethod.GET)
    public ModelAndView managementVideoList( Integer pageNow , Integer pageSize, String selectByVideoName){
        ModelAndView modelAndView = new ModelAndView();
        Integer tableCount=adminService.getVideoCount();/*获取列表总数*/
        PageCountUtil pageCountUtil = new PageCountUtil(pageNow, pageSize, tableCount);
        List<Video>  managementVideoList = adminService.managementVideoList(selectByVideoName,pageCountUtil);/*获取全部用视频信息*/
        modelAndView.setViewName("backend/admin/videoList");
        modelAndView.addObject("managementVideoList",managementVideoList);
        modelAndView.addObject("pageCountUtil",pageCountUtil);
        modelAndView.addObject("selectByVideoName",selectByVideoName);
        return modelAndView;
    }

    /**
     *@author baiziming
     *@method updateFlag 修改审核状态
     *@Param Vid                视频id
     *@Param examineFlag               审核状态
     *@Param auditPass          通过状态
     **/
        @RequestMapping(path = "updateFlag",method = RequestMethod.GET)
        public ModelAndView updateFlag( Integer Vid , String examineFlag,Character auditPass){
                ModelAndView modelAndView = new ModelAndView();
                Video  managementVideo = adminService.selectVideoById(Vid);/*通过视频ID获取视频信息*/
                Video video = new Video();
                video.setId(managementVideo.getId());
                if (examineFlag!=null ){
                    if(examineFlag.equals("0")){
                        video.setExamineFlag('1');
                        adminService.updateVideoExamineFlag(video);
                        modelAndView.setViewName("backend/admin/videoAuditPage");
                    }else {
                        video.setExamineFlag('0');
                        video.setAuditPass('0');
                        adminService.updateVideoExamineFlag(video);
                        modelAndView.setViewName("redirect:managementVideoList");
                    }
//                if (examineFlag.equals('0')){
//                        video.setExamineFlag('1');
//                        if (auditPass!=null ){
//                                video.setAuditPass(auditPass);
//                                adminService.updateVideoExamineFlag(video);
//                                modelAndView.setViewName("redirect:managementVideoList");
//                        }
//                        modelAndView.setViewName("backend/admin/videoAuditPage");
//                }else {
//                        video.setExamineFlag('0');
//                        video.setAuditPass('0');
//                        adminService.updateVideoExamineFlag(video);
//                        modelAndView.setViewName("redirect:managementVideoList");
//                }
                    modelAndView.addObject("managementVideo",managementVideo);
                }
                if (auditPass!=null){
                    video.setExamineFlag('1');
                    video.setAuditPass(auditPass);
                    adminService.updateVideoExamineFlag(video);
                    modelAndView.setViewName("redirect:managementVideoList");
                }
                return modelAndView;
        }


    /**
     *@author liwenlan
     *@method adminLogin 管理员登录
     *@Param admin                管理员登录信息
     **/
    @RequestMapping(path = "adminLogin",method = RequestMethod.POST)
    public String adminLogin(Admin admin){
        return adminService.adminLogin(admin);
    }


}
