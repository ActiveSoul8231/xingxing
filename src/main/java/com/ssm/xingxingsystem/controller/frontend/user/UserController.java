package com.ssm.xingxingsystem.controller.frontend.user;

import com.ssm.xingxingsystem.bean.User;
import com.ssm.xingxingsystem.service.UserService;
import com.ssm.xingxingsystem.util.MailSender;
import com.ssm.xingxingsystem.util.VerificationCodeUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

/**
 * @Auther wenlan
 * @Date 2019/10/29
 */
@Controller
@RequestMapping("user")
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping(path = "toLogin",method = RequestMethod.GET)
    public String aaa(){
        return "user/login";
    }

    @RequestMapping(path = "userLogin",method = RequestMethod.POST)
    public String userLogin(User user){
        return userService.userLogin(user);

    }

    /**
     *                                    获取用户账号的状态
     * 通过  @ResponseBody   将返回的信息转为 ajax 可识别的  json 文件
     * @param userName
     * @return
     */
    @RequestMapping(path = "getUserFlag",method = RequestMethod.POST)
    @ResponseBody
    public Map<String,Object> getUserFlag(String userName){
        String userFlag = userService.getUserFlag(userName);
//        将方法中的类型  Map<String,Object>  传入 新的 HashMap中的  stringObjectHashMap
        HashMap<String, Object> stringObjectHashMap = new HashMap<>();
//        将用户状态放入 userFlag 中后  put 到  stringObjectHashMap 中给个键  “msg”
        stringObjectHashMap.put("message1",userFlag);
//        将放入HashMap 中的键值返回到注解 @ResponseBody  中转成  json
//        官方话：将controller的方法返回的对象 通过适当的转换器 转换为指定的格式之后，写入到response对象的body区（响应体中），通常用来返回JSON数据或者是XML
        return stringObjectHashMap;
    }

    /*@RequestMapping(path = "logout",method = RequestMethod.POST)
    public String logout() {
        request.getSession().removeAttribute("user333");
        return "user/login";
    }*/


    /**
     *                      注册
     * @param userName
     * @return
     */
    @RequestMapping(path = "getUserName",method = RequestMethod.POST)
    @ResponseBody
    public Map<String,Object> getUserName(String userName){
        String userName1 = userService.getUserName(userName);
        HashMap<String, Object> stringObjectHashMap = new HashMap<>();
        stringObjectHashMap.put("message",userName1);
        return stringObjectHashMap;
    }


    @RequestMapping(path = "sendMail",method = RequestMethod.POST)
    @ResponseBody
    public Map<String,Object> sendMail(String userEmail) throws Exception {
        String nonce_str = VerificationCodeUtil.getNonce_str();
//        发右键（用户邮箱，随机数）
        MailSender.sendMailFunction(userEmail,nonce_str);
        HashMap<String, Object> stringObjectHashMap = new HashMap<>();
//        将产生的随机数塞进  id='mailCodeReturn'  的表单中  键 为 “mailCode”
        stringObjectHashMap.put("mailCode",nonce_str);
        return stringObjectHashMap;
    }

    /**
     *                      注册时ajax  判断邮箱是否已经被注册
     * @param userMailFlag
     * @return
     */
    @RequestMapping(path = "userEmailFlag",method = RequestMethod.POST)
    @ResponseBody
    public Map<String,Object> userEmailFlag(String userMailFlag) {
        String userMail = userService.getUserEmailFlag(userMailFlag);
        HashMap<String, Object> stringObjectHashMap = new HashMap<>();
        stringObjectHashMap.put("mailFlag",userMail);
        return stringObjectHashMap;
    }

    /**
     *                      注册时 ajax 判断用户手机号是否已经被注册
     * @param userTelphone
     * @return
     */
    @RequestMapping(path = "userTel",method = RequestMethod.POST)
    @ResponseBody
    public Map<String,Object> userTel(String userTelphone){
        String userTele=userService.getUserTel(userTelphone);
        HashMap<String, Object> stringObjectHashMap = new HashMap<>();
        stringObjectHashMap.put("phoneFlag",userTele);
        return stringObjectHashMap;

    }

    /**
     *                      普通用户注册
     * @param user
     * @param mailCode
     * @return
     */
    @RequestMapping(path = "userRegister",method = RequestMethod.POST)
    public String registerUser(User user,String mailCode) {
        userService.registerUser(user,mailCode);
        return "user/login";
    }
}
