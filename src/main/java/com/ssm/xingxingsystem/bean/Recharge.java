package com.ssm.xingxingsystem.bean;

/**
 * @description:
 * @author: MR
 * @time: 2019/10/25 10:30
 **/
public class Recharge {
    private Integer id;
    private Integer userId;
    private Double rechargeAmonunt;
    private String rechargeTime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Double getRechargeAmonunt() {
        return rechargeAmonunt;
    }

    public void setRechargeAmonunt(Double rechargeAmonunt) {
        this.rechargeAmonunt = rechargeAmonunt;
    }

    public String getRechargeTime() {
        return rechargeTime;
    }

    public void setRechargeTime(String rechargeTime) {
        this.rechargeTime = rechargeTime;
    }
}
