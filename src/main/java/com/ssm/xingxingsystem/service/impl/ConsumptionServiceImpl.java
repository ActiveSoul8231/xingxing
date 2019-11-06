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
    public String Consumption(Double consumptionAmount, Integer id, Integer spId) {
        User user=consumptionDao.getUserById(id);//查找出user表中的user的id号
        if (user.getcMoney()>=consumptionAmount){
            double money = user.getcMoney() - consumptionAmount;//最新的金额=用户原有的金额-所要自定义打赏的金额
            consumptionDao.updateMoney(money,id);//通过用户的id去更新最新的金额
            User sp=consumptionDao.getUserById(spId);//查找出视频发布者的id号码
            money = consumptionAmount+sp.getcMoney() ;//最新的金额=观看人所打赏的金额+视频拥有者的原有金额
            consumptionDao.updateMoney(money,spId);//更新视频发布者的金额

            Date date = new Date();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String format = sdf.format(date);
            consumptionDao.insertConsumption(format,consumptionAmount,id);
            return "redirect:consumption/consumptionList";
        }else{
            return "frontend/recharge/Recharge";
        }
    }

    //固定打赏20
    @Override
    public void Consumption2(Double consumptionAmount,Integer id,Integer spId) {
        User user = consumptionDao.getUserById(id);
        double money = user.getcMoney() - 20;
        consumptionDao.updateMoney(money,id);
        User sp = consumptionDao.getUserById(spId);
        money=20+sp.getcMoney();
        consumptionDao.updateMoney(money,spId);

        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat();
        String format = sdf.format(date);
        consumptionDao.consumption2(format,id);
    }

    //固定打赏30
    @Override
    public void Consumption3(Double consumptionAmount, Integer id, Integer spId) {
        User user = consumptionDao.getUserById(id);

            double money = user.getcMoney() - 30;
            consumptionDao.updateMoney(money,id);
            User sp = consumptionDao.getUserById(spId);
            money = 30 + sp.getcMoney();
            consumptionDao.updateMoney(money,spId);

            Date date = new Date();
            SimpleDateFormat sdf = new SimpleDateFormat();
            String format = sdf.format(date);
            consumptionDao.consumption3(format,id);
    }
}
