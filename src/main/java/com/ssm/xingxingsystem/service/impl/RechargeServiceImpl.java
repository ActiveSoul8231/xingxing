package com.ssm.xingxingsystem.service.impl;
import com.ssm.xingxingsystem.bean.User;
import com.ssm.xingxingsystem.bean.Recharge;
import com.ssm.xingxingsystem.dao.RechargeDao;
import com.ssm.xingxingsystem.service.RechargeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * @description:
 * @author: MR
 * @time: 2019/10/25 10:19
 **/
@Service
@Transactional
public class RechargeServiceImpl implements RechargeService {
    @Autowired
    private RechargeDao rechargeDao;
    @Autowired
    HttpServletRequest request;


    @Override
    public List<Recharge> rechargeList() {
        return rechargeDao.rechargeList();
    }

    @Override
    public void Recharge(Integer userId, Double rechargeAmonunt) {
        User user = rechargeDao.getUserById(userId);
        Double money=user.getcMoney()+rechargeAmonunt;
        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String format = sdf.format(date);
        rechargeDao.updateMoney(money,userId);
        rechargeDao.Recharge(rechargeAmonunt,format,userId);
    }

    @Override
    public void Recharge6(Integer userId, Double rechargeAmonunt) {
        User user = rechargeDao.getUserById(userId);
        Double Money=user.getcMoney()+6;

        user.setcMoney(Money);

        rechargeDao.rechagreUpdateMoney(user);
        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String format = sdf.format(date);

        Recharge recharge = new Recharge();
        recharge.setUserId(user.getId());
        recharge.setRechargeAmonunt((double) 6);
        recharge.setRechargeTime(format);
        rechargeDao.Recharge6(recharge);
    }

    @Override
    public void Recharge666(Integer userId, Double rechargeAmonunt) {
        User user = rechargeDao.getUserById(userId);
        Double Money=user.getcMoney()+666;

        user.setcMoney(Money);

        rechargeDao.rechagreUpdateMoney(user);
        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String format = sdf.format(date);

        Recharge recharge = new Recharge();
        recharge.setUserId(user.getId());
        recharge.setRechargeAmonunt((double) 666);
        recharge.setRechargeTime(format);
        rechargeDao.Recharge666(recharge);
    }

    @Override
    public void Recharge888(Integer userId, Double rechargeAmonunt) {
        User user = rechargeDao.getUserById(userId);
        Double Money=user.getcMoney()+888;

        user.setcMoney(Money);

        rechargeDao.rechagreUpdateMoney(user);
        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String format = sdf.format(date);

        Recharge recharge = new Recharge();
        recharge.setUserId(user.getId());
        recharge.setRechargeAmonunt((double) 888);
        recharge.setRechargeTime(format);
        rechargeDao.Recharge888(recharge);
    }


}
