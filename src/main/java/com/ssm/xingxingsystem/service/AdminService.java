package com.ssm.xingxingsystem.service;/*
 *      Created by IntelliJ IDEA.
 *      User:baiziming
 *      Date: 2019/10/25 0025
 *      Time: 14:48
 */

import com.ssm.xingxingsystem.bean.Admin;
import com.ssm.xingxingsystem.bean.User;
import com.ssm.xingxingsystem.bean.Video;
import com.ssm.xingxingsystem.util.PageCountUtil;

import java.util.List;

public interface AdminService {
    List<User> getAllUser(String selectByValue, PageCountUtil pageCountUtil);

    Integer getUserCount();

    User getUserById(Integer id);

    void updateUserByFlag(User user1);

    void deleteUserById(Integer id);

    List<Video> managementVideoList(String selectByValue, PageCountUtil pageCountUtil);

    Integer getVideoCount();

    String adminLogin(Admin admin);

    Video selectVideoById(Integer vid);

    void updateVideoExamineFlag(Video video);
}
