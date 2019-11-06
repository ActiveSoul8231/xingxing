package com.ssm.xingxingsystem.dao

import com.ssm.xingxingsystem.bean.Consumption
import com.ssm.xingxingsystem.bean.User
import org.apache.ibatis.annotations.Insert
import org.apache.ibatis.annotations.Mapper
import org.apache.ibatis.annotations.Param
import org.apache.ibatis.annotations.ResultMap
import org.apache.ibatis.annotations.Select
import org.apache.ibatis.annotations.Update

@Mapper
interface ConsumptionDao {

    //根据用户登录查询消费列表
    @ResultMap("consumptionMap")
    @Select("select * from tb_consumption_record where user_id=#{id}")
    List<Consumption> consumptionList(
            @Param("id")Integer id)

    //根据用户登录查询用户
    @ResultMap("userMap")
    @Select("select * from tb_user where id=#{id}")
    User getUserById(
            @Param("id")int id)

    //更新用户修改金额
    @Update("update tb_user set c_money=#{money} where id=#{id}")
    void updateMoney(
            @Param("money")double money,
            @Param("id")int id)

    //自定义打赏金额
    @Insert("Insert into tb_consumption_record(user_id,consumption_amount,consumption_items,consumption_time) values(#{id},#{consumptionAmount},2,#{format})")
    void insertConsumption(
            @Param("format")String format,
            @Param("consumptionAmount")double consumptionAmount,
            @Param("id")int id)

    //固定打赏2
    @Insert("insert into tb_consumption_record(user_id,consumption_amount,consumption_items,consumption_time) values(#{id},20,2,#{format})")
    void consumption2(
            @Param("format")String format,
            @Param("id")Integer id)

    //固定打赏3
    @Insert("insert into tb_consumption_record(user_id,consumption_amount,consumption_items,consumption_time) values(#{id},30,2,#{format})")
    void consumption3(
            @Param("format")String format,
            @Param("id")int id)
}