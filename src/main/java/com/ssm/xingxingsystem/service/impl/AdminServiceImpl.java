package com.ssm.xingxingsystem.service.impl;/*
 *      Created by IntelliJ IDEA.
 *      User:baiziming
 *      Date: 2019/10/25 0025
 *      Time: 14:48
 */

import com.ssm.xingxingsystem.bean.Admin;
import com.ssm.xingxingsystem.bean.User;
import com.ssm.xingxingsystem.bean.Video;
import com.ssm.xingxingsystem.dao.AdminDao;
import com.ssm.xingxingsystem.service.AdminService;
import com.ssm.xingxingsystem.util.PageCountUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Service
@Transactional
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminDao adminDao;

    @Autowired
    private HttpServletRequest request;

    @Override
    public List<User> getAllUser(String selectByValue, PageCountUtil pageCountUtil) {
        List<User>  userList = adminDao.getAllUser(selectByValue,pageCountUtil.getPageCount(),pageCountUtil.getPageSize());
        return userList;
    }

    /**
     *@author baiziming
     *@method getUserCount 获取普通用户总条数
     **/
    @Override
    public Integer getUserCount() {
        return adminDao.getUserCount();
    }

    @Override
    public User getUserById(Integer id) {
        return adminDao.getUserById(id);
    }

    @Override
    public void updateUserByFlag(User user1) {
        adminDao.updateUserByFlag(user1);
    }

    @Override
    public void deleteUserById(Integer id) {
        adminDao.deleteUserById(id);
    }

    @Override
    public List<Video> managementVideoList(String selectByValue, PageCountUtil pageCountUtil) {
        return adminDao.managementVideoList(selectByValue,pageCountUtil);
    }

    @Override
    public Integer getVideoCount() {
        return adminDao.getVideoCount();
    }
    @Override
    public String adminLogin(Admin admin) {
        Admin admin1 = adminDao.getAdminByAdmin(admin);
        if (admin1 !=null){
            if (admin1.getAdminPassword().equals(admin.getAdminPassword())){
                request.getSession().setAttribute("admin111",admin1);
                return "backend/index";
            }else {
                request.setAttribute("msg","密码错误");
                request.setAttribute("adminName",admin.getAdminName());
                return "backend/admin/login";
            }
        }
        return "backend/admin/login";
    }

    @Override
    public Video selectVideoById(Integer vid) {
        return adminDao.selectVideoById(vid);
    }

    @Override
    public void updateVideoExamineFlag(Video video) {
        adminDao.updateVideoExamineFlag(video);
    }

}
