package com.ssm.xingxingsystem.service.impl;

import com.ssm.xingxingsystem.dao.VipDao;
import com.ssm.xingxingsystem.service.VipService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Service
public class VipServiceImpl implements VipService {
    @Autowired
    private VipDao vipDao;




}
