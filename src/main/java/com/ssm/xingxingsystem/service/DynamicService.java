package com.ssm.xingxingsystem.service;

import com.ssm.xingxingsystem.bean.Dynamic;

import java.util.List;

public interface DynamicService {
    List<Dynamic> dynamicList(int i);

    void addDynamic(Dynamic dynamic);
}
