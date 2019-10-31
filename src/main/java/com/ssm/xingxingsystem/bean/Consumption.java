package com.ssm.xingxingsystem.bean;

//消费记录
public class Consumption {
    private Integer id;
    private Integer userId;
    private Double consumptionAmount;//消费金额
    private Integer consumptionItems;//消费项目
    private String consumptionTime;//消费时间

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

    public Double getConsumptionAmount() {
        return consumptionAmount;
    }

    public void setConsumptionAmount(Double consumptionAmount) {
        this.consumptionAmount = consumptionAmount;
    }

    public Integer getConsumptionItems() {
        return consumptionItems;
    }

    public void setConsumptionItems(Integer consumptionItems) {
        this.consumptionItems = consumptionItems;
    }

    public String getConsumptionTime() {
        return consumptionTime;
    }

    public void setConsumptionTime(String consumptionTime) {
        this.consumptionTime = consumptionTime;
    }
}
