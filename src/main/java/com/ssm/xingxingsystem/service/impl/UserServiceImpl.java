package com.ssm.xingxingsystem.service.impl;

import com.ssm.xingxingsystem.bean.User;
import com.ssm.xingxingsystem.dao.UserDao;
import com.ssm.xingxingsystem.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpServletRequest;

/**
 * @Auther wenlan
 * @Date 2019/10/29
 */
@Service
@Transactional
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;
    @Autowired
    private HttpServletRequest request;

    @Override
    public String userLogin(User user) {
        //        查询数据库的中用户的所有的信息
        User user1 = userDao.getUserByUser(user);
//        如果数据库中 有该用户的信息
        if (user1 != null){
//            判断jsp 页面输入的用户密码与数据库中的用户密码进行比较
            if (user1.getPassword().equals(user.getPassword())){
                System.out.println(user1.getUserName()+user1.getUserEmail()+user1.getPassword()+"++++++++++++++++++++++++++++++++++++++++++++++++++++---");
                request.getSession().setAttribute("user333",user1);
//                return "user/index";
                return "frontend/index";
            }else {
//                判断密码如果错误之后回显用户名，回到登录页面
                request.setAttribute("message","🍂密码错误");
                request.setAttribute("userName",user.getUserName());
                return "frontend/loginorregister/login";
            }
        }
//        数据库中无此用户的账号去到注册页面
        return "frontend/loginorregister/register";
    }

    @Override
    public String getUserFlag(String userName) {
//        根据用户名进行对应用户的几种状态的查询
        User user = userDao.getUserByName(userName);
//        如果查询到数据库中有对应用户名的用户数据，if else  判断账户的三种状态
        if (user != null){
            if(user.getRecoveryFlag().equals("1")){
                return "🍂您已被封号，请联系管理员进行充值解封";
            }else if (user.getIceFlag().equals("1")){
                return "🍂您的账号已被冻结，请点击找回密码";
            }else if(user.getDelFlag().equals("1")){
                return "🍂您的账号被回收，请重新注册";
            }
//            没查到用户名说明用户不存在
        }else {
            return "🍂用户不存在";
        }
        return "";
    }

    /**
     *              注册时用户名称是否重复注册的ajax  判断查询
     * @param userName
     * @return
     */
    @Override
    public String getUserName(String userName) {
        User userByName = userDao.getUserByName(userName);
        if (userByName !=null){
            return "🍂该名字已被注册，重新想一个吧";
        }
        return "";
    }

    /**
     *                            注册时候验证邮箱是否已经被注册
     * @param userMailFlag
     * @return
     */
    @Override
    public String getUserEmailFlag(String userMailFlag) {
        User useMail = userDao.getUserByEmail(userMailFlag);
        if (useMail != null){
            return "🍂邮箱已经被注册过了，换一个吧";
        }
        return "";
    }

    @Override
    public String getUserTel(String userTelphone) {
        User userTel = userDao.getUserTel(userTelphone);
        if (userTel != null){
            return "🍂手机号已经被注册过了，换一个吧";
        }
        return "";
    }

    @Override
    public void registerUser(User user, String mailCode) {
        userDao.registerUser(user,mailCode);
    }
}
