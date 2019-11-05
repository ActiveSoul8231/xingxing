package com.ssm.xingxingsystem.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 * @Auther wenlan
 * @Date 2019/11/4
 */
public class DealTimesUtil {
    /**
     *                  往后半分钟（测试使用）
     * @param date
     * @return
     * @throws ParseException
     */
    public static Date dealTime(String date) throws ParseException {
        SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date d = sd.parse(date);
        // 把当前得到的时间用date.getTime()的方法写成时间戳的形式，再加上24小时对应的毫秒数
        long rightTime = (long) (d.getTime() + 30 * 1000);
        // 把得到的新的时间戳再次格式化成时间的格式
        String newtime = sd.format(rightTime);
        return sd.parse(newtime);
    }



    public static void main(String[] args){
//        获取当前时间date
        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
//        String format = sdf.format(date);
        Calendar now = Calendar.getInstance();
//        将获取的时间放到now中
        now.setTime(date);
        now.add(Calendar.YEAR,1);
        Date time = now.getTime();
        String format = sdf.format(time);
        System.out.println("-------处理时间："+format);
    }

    /*public static void main(String[] args) throws ParseException {
        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String format = sdf.format(date);
        Date newTime = dealTime(format);
        String format1 = sdf.format(newTime);
        System.out.println("当前时间："+format+"-------处理时间："+format1);
    }*/


    /**
     *              往后一个月的时间
     * @param date
     * @return
     * @throws ParseException
     */
    public static Date oneMonth(String date) throws ParseException {
        SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd");
        Date d = sd.parse(date);
        // 把当前得到的时间用date.getTime()的方法写成时间戳的形式，再加上24小时对应的毫秒数
        long rightTime = (long) (d.getTime() + 24 * 60 * 60 * 1000*24+(24 * 60 * 60 * 1000*6));
        // 把得到的新的时间戳再次格式化成时间的格式
        String newtime = sd.format(rightTime);
        return sd.parse(newtime);
    }

    /**
     *                  获取  date  格式的时间   后计算出来三个月后的时间
     * @param date
     * @return
     */
    public static Date threeMonth(Date date){
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
//        String format = sdf.format(date);
        Calendar now = Calendar.getInstance();
//        将获取的时间放到now中
        now.setTime(date);
        now.add(Calendar.MONTH,3);
        Date time = now.getTime();
//        String format = sdf.format(time);
//        System.out.println("-------处理时间："+format);
        return time;
    }

    /**
     *                   往后一年
     * @param date
     * @return
     */
    public static Date aYear(Date date){
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
//        String format = sdf.format(date);
        Calendar now = Calendar.getInstance();
//        将获取的时间放到now中
        now.setTime(date);
        now.add(Calendar.YEAR,1);
        Date time = now.getTime();
//        String format = sdf.format(time);
//        System.out.println("-------处理时间："+format);
        return time;
    }



}
