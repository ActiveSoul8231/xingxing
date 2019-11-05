package com.ssm.xingxingsystem.service.impl;

import com.ssm.xingxingsystem.bean.Dynamic;
import com.ssm.xingxingsystem.dao.DynamicDao;
import com.ssm.xingxingsystem.service.DynamicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

//事务注解
@Service
@Transactional
public class DynamicServiceImpl implements DynamicService {
    @Autowired
    private DynamicDao dynamicDao;
    @Override
    public List<Dynamic> dynamicList(int i) {
        return dynamicDao.dynamicList(i);
    }

    @Override
    public void addDynamic(Dynamic dynamic) {
        dynamicDao.addDynamic(dynamic);
    }
}
