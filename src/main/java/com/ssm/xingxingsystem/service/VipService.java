package com.ssm.xingxingsystem.service;

public interface VipService {

    String vipsj(Integer vipTime,Integer userId);

    boolean selectDqrq(Integer userId);

    void updateUserLeave(Integer userId);
}
