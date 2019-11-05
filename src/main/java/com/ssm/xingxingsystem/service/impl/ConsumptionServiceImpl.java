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


    //消费展示
    @Override
    public List<Consumption> consumptionList(Integer id) {
        return consumptionDao.consumptionList(id);
    }

    //自定义消费
    @Override
    public void Consumption(Double consumptionAmount, Integer id, Integer spId) {
        User user=consumptionDao.getUserById(id);
        double money = user.getcMoney() - consumptionAmount;
        consumptionDao.updateMoney(money,id);
        User sp=consumptionDao.getUserById(spId);
        money = consumptionAmount * 0.6+sp.getcMoney() ;
        consumptionDao.updateMoney(money,id);

        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String format = sdf.format(date);
        consumptionDao.insertConsumption(format,consumptionAmount,id);
    }

    //固定打赏所看视频发布者2元
    @Override
    public void Consumption2(Double consumptionAmount,Integer id,Integer spId) {
        User user = consumptionDao.getUserById(id);
        double money = user.getcMoney() - 2;
        consumptionDao.updateMoney(money,id);
        User sp = consumptionDao.getUserById(spId);
        money = consumptionAmount * 0.6 + sp.getcMoney();
        consumptionDao.updateMoney(money,id);

        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String format = sdf.format(date);
        consumptionDao.Consumption2(format,id,consumptionAmount);
    }


}
