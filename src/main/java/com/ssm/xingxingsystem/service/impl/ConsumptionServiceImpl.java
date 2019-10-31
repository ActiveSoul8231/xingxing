package com.ssm.xingxingsystem.service.impl;

import com.ssm.xingxingsystem.bean.Consumption;
import com.ssm.xingxingsystem.bean.User;
import com.ssm.xingxingsystem.dao.ConsumptionDao;
import com.ssm.xingxingsystem.service.ConsumptionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Service
@Transactional
public class ConsumptionServiceImpl implements ConsumptionService {
    @Autowired
    private ConsumptionDao consumptionDao;
    @Autowired
    private HttpServletRequest request;

    @Override
    public List<Consumption> consumptionList() {
        return consumptionDao.consumptionList();
    }


}
