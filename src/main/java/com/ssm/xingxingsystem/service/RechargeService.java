package com.ssm.xingxingsystem.service;

import com.ssm.xingxingsystem.bean.Recharge;

import java.util.List;

/**
 * @description:
 * @author: MR
 * @time: 2019/10/25 10:19
 **/
public interface RechargeService {

    List<Recharge> rechargeList();

    void Recharge(Integer userId, Double rechargeAmonunt);

    void Recharge6(Integer userId, Double rechargeAmonunt);

    void Recharge666(Integer userId, Double rechargeAmonunt);

    void Recharge888(Integer userId, Double rechargeAmonunt);
}
