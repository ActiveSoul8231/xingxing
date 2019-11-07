package com.ssm.xingxingsystem.service.impl;

import com.ssm.xingxingsystem.bean.Integral;
import com.ssm.xingxingsystem.bean.User;
import com.ssm.xingxingsystem.dao.VipDao;
import com.ssm.xingxingsystem.service.VipService;
import com.ssm.xingxingsystem.util.DealTimesUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpServletRequest;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@Transactional
@Service
public class VipServiceImpl implements VipService {

    @Autowired
    private VipDao vipDao;
    @Autowired
    private HttpServletRequest request;


    @Override
    public String vipsj(Integer vipTime, Integer userId) {
        User user = new User();
        Date date = new Date();
        Integral integral = new Integral();
        Integer vipOppenManney = vipTime * 20;
        Double cmoney = vipDao.selectUserById(userId);

        if (cmoney >= vipOppenManney) {
            SimpleDateFormat aaa = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String format = aaa.format(date);
            vipDao.addRecharge(vipOppenManney, format, userId);
            Double LSmoney = vipDao.selectLSRecharge(userId);
            if (LSmoney != null && LSmoney < 100) {
                user.setMembershipLevelId(1);
            } else if (LSmoney >= 100 && LSmoney < 250) {
                user.setMembershipLevelId(2);
            } else if (LSmoney >= 250 && LSmoney < 500) {
                user.setMembershipLevelId(3);
            } else if (LSmoney >= 500 && LSmoney < 1000) {
                user.setMembershipLevelId(4);
            } else if (LSmoney >= 1000 && LSmoney < 2000) {
                user.setMembershipLevelId(5);
            } else if (LSmoney >= 2000 && LSmoney < 5000) {
                user.setMembershipLevelId(6);
            } else if (LSmoney >= 5000 && LSmoney < 10000) {

                user.setMembershipLevelId(7);
            } else if (LSmoney >= 10000) {
                user.setMembershipLevelId(8);
            } else {
                user.setMembershipLevelId(1);
            }
            Double cb = cmoney - LSmoney;

            Integer nf = vipTime / 12;
            if (nf == 0) {
                integral.setIntegralNum(150 * vipTime);
            } else if (nf == 1) {
                integral.setIntegralNum(200 * vipTime);
            } else if (nf == 2) {
                integral.setIntegralNum(300 * vipTime);
            } else if (nf > 2) {
                integral.setIntegralNum(400 * vipTime);
            }
            Integral  ccc = vipDao.selectIntegral(userId);
            if (ccc!=null) {
                Integer integrals = ccc.getIntegralNum() + integral.getIntegralNum();
                vipDao.updateIntegral(integrals, userId);
            } else {

                vipDao.insertIntegral(integral, userId);
            }

            vipDao.insertIntegralRecord(integral, userId, format);
            Date date1;
            if (vipTime < 12) {
                date1 = DealTimesUtil.ryYear(date, nf, vipTime);
            } else {
                Integer month = vipTime % 12;
                date1 = DealTimesUtil.ryYear(date, nf, month);
            }
            String endTime = aaa.format(date1);
            vipDao.updateUserVip(user, cb, userId);

            String dqrq = vipDao.selectDqrq(userId);
            Date das = null;


            if (dqrq == null) {
                vipDao.insertKTtime(userId, format, endTime);
            } else {
                try {
                    das = aaa.parse(dqrq);
                } catch (ParseException e) {
                    e.printStackTrace();
                }

                if (vipTime < 12) {
                    date1 = DealTimesUtil.ryYear(das, nf, vipTime);
                } else {
                    Integer month = vipTime % 12;
                    date1 = DealTimesUtil.ryYear(das, nf, month);
                }
                String date2 = aaa.format(date1);
                vipDao.updateDQtime(userId, date2);
            }

            if (dqrq == null) {
                request.setAttribute("msg", "开通成功");
                return "msg";
            } else {
                request.setAttribute("msg", "续费成功");
                return "msg";
            }
        } else {
            request.setAttribute("msg", "金额不足");
            return "msg";
        }
    }

    @Override
    public boolean selectDqrq(Integer userId) {
        String dqrq = vipDao.selectDqrq(userId);
        if (dqrq != null) {
            Date date = new Date();
            SimpleDateFormat aaa = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            try {
                Date dqrq1 = aaa.parse(dqrq);
                boolean flag = date.getTime() <= dqrq1.getTime();
                return flag;
            } catch (ParseException e1) {
                e1.printStackTrace();
            }
        } else {
            return false;
        }
        return false;
    }

    @Override
    public void updateUserLeave(Integer userId) {
        vipDao.updateUserLeave(userId);
    }

}
