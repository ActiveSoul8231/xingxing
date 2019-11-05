package com.ssm.xingxingsystem.service;

import com.ssm.xingxingsystem.bean.Consumption;

import java.util.List;

public interface ConsumptionService {
    List<Consumption> consumptionList(Integer id);

    void Consumption(Double consumptionAmount, Integer id, Integer spId);

    void Consumption2(Double consumptionAmount,Integer id,Integer spId);
}
