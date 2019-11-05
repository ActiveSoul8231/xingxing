package com.ssm.xingxingsystem.bean;

public class Level {
    private Integer id;
    private Integer membershipLevel;
    private Double rechargeDiscount;
    private Double consumptionDiscount;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getMembershipLevel() {
        return membershipLevel;
    }

    public void setMembershipLevel(Integer membershipLevel) {
        this.membershipLevel = membershipLevel;
    }

    public Double getRechargeDiscount() {
        return rechargeDiscount;
    }

    public void setRechargeDiscount(Double rechargeDiscount) {
        this.rechargeDiscount = rechargeDiscount;
    }

    public Double getConsumptionDiscount() {
        return consumptionDiscount;
    }

    public void setConsumptionDiscount(Double consumptionDiscount) {
        this.consumptionDiscount = consumptionDiscount;
    }
}
