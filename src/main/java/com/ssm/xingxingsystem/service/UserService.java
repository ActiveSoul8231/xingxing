package com.ssm.xingxingsystem.service;

import com.ssm.xingxingsystem.bean.User;

/**
 * @Auther wenlan
 * @Date 2019/10/29
 */
public interface UserService {
    String userLogin(User user);

    String getUserFlag(String userName);

    String getUserName(String userName);

    String getUserEmailFlag(String userMailFlag);

    String getUserTel(String userTelphone);

    void registerUser(User user, String mailCode);
}
