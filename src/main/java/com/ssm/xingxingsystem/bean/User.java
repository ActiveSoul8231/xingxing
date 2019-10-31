package com.ssm.xingxingsystem.bean;/*
 *      Created by IntelliJ IDEA.
 *      User:baiziming
 *      Date: 2019/10/25 0025
 *      Time: 15:13
 */
/*
* 普通用户属性
* */
public class User {
    private Integer id;             /*普通用户id*/
    private String userNum;         /*普通用户的账号*/
    private String password;        /*普通用户密码*/
    private String userName;        /*普通用户名*/
    private String userContext;     /*普通用户签名*/
    private String userBirthday;    /*普通用户出生年月*/
    private String userSex;         /*普通用户性别    1为男性    0为女性       2为保密*/
    private String userImg;         /*普通用户头像*/
    private String recoveryFlag; /*回收状态      0为未回收       1为回收*/
    private String iceFlag;      /*冻结状态      0为未冻结       1为已冻结*/
    private String delFlag;      /*封号状态      0为未封号       1为已封号*/
    private Double cMoney;          /*普通用户金额C币*/
    private String userTelephoneNum;/*普通用户电话号码*/
    private String userEmail;       /*普通用户邮箱*/
    private Integer userJc;         /*普通用户节操值*/
    private Integer membershipLevelId;/* 普通用户会员等级ID*/

    public String getUserSex() {
        return userSex;
    }

    public void setUserSex(String userSex) {
        this.userSex = userSex;
    }

    public String getRecoveryFlag() {
        return recoveryFlag;
    }

    public void setRecoveryFlag(String recoveryFlag) {
        this.recoveryFlag = recoveryFlag;
    }

    public String getIceFlag() {
        return iceFlag;
    }

    public void setIceFlag(String iceFlag) {
        this.iceFlag = iceFlag;
    }

    public String getDelFlag() {
        return delFlag;
    }

    public void setDelFlag(String delFlag) {
        this.delFlag = delFlag;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUserNum() {
        return userNum;
    }

    public void setUserNum(String userNum) {
        this.userNum = userNum;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserContext() {
        return userContext;
    }

    public void setUserContext(String userContext) {
        this.userContext = userContext;
    }

    public String getUserBirthday() {
        return userBirthday;
    }

    public void setUserBirthday(String userBirthday) {
        this.userBirthday = userBirthday;
    }


    public String getUserImg() {
        return userImg;
    }

    public void setUserImg(String userImg) {
        this.userImg = userImg;
    }


    public Double getcMoney() {
        return cMoney;
    }

    public void setcMoney(Double cMoney) {
        this.cMoney = cMoney;
    }

    public String getUserTelephoneNum() {
        return userTelephoneNum;
    }

    public void setUserTelephoneNum(String userTelephoneNum) {
        this.userTelephoneNum = userTelephoneNum;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public Integer getUserJc() {
        return userJc;
    }

    public void setUserJc(Integer userJc) {
        this.userJc = userJc;
    }

    public Integer getMembershipLevelId() {
        return membershipLevelId;
    }

    public void setMembershipLevelId(Integer membershipLevelId) {
        this.membershipLevelId = membershipLevelId;
    }
}
