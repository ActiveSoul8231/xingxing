package com.ssm.xingxingsystem.bean;/*
 *      Created by IntelliJ IDEA.
 *      User:baiziming
 *      Date: 2019/10/25 0025
 *      Time: 15:23
 */

public class Admin {
    private Integer id;             /*管理员id*/
    private String adminName;       /*管理员名字*/
    private String adminPassword;   /*管理员密码*/
    private String adminImg;        /*管理员头像*/

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getAdminName() {
        return adminName;
    }

    public void setAdminName(String adminName) {
        this.adminName = adminName;
    }

    public String getAdminPassword() {
        return adminPassword;
    }

    public void setAdminPassword(String adminPassword) {
        this.adminPassword = adminPassword;
    }

    public String getAdminImg() {
        return adminImg;
    }

    public void setAdminImg(String adminImg) {
        this.adminImg = adminImg;
    }
}
