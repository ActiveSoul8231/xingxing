package com.ssm.xingxingsystem.dao

import com.ssm.xingxingsystem.bean.Recharge
import com.ssm.xingxingsystem.bean.User;
import org.apache.ibatis.annotations.Insert
import org.apache.ibatis.annotations.Mapper
import org.apache.ibatis.annotations.Param
import org.apache.ibatis.annotations.ResultMap
import org.apache.ibatis.annotations.Select
import org.apache.ibatis.annotations.Update

/**
 *
 * @description:
 *@author: MR
 * @time: 2019/10/25 10:24
 */
@Mapper
interface RechargeDao {

    @ResultMap("rechargeMap")
    @Select("select * from tb_recharge_record")
    List<Recharge> rechargeList()


    //更新用户数据
    void rechagreUpdateMoney(User user)

    //固定充值6
    @Insert("insert into tb_recharge_record (user_id,recharge_amount,recharge_time) values(#{userId},#{rechargeAmonunt},#{rechargeTime})")
    void Recharge6(@Param("recharge")Recharge recharge)

    @Insert("insert into tb_recharge_record (user_id,recharge_amount,recharge_time) values(#{userId},#{rechargeAmonunt},#{rechargeTime})")
    void Recharge(
            @Param("rechargeAmonunt")double rechargeAmonunt,
            @Param("format")String format,
            @Param("userId")int userId)

    @Update("update tb_user set c_money=#{money} where id=#{userId}")
    void updateMoney(
            @Param("money")double money,
            @Param("userId")int userId)

    @ResultMap("rechargeMap")
    @Select("select * from tb_user where id=#{id}")
    User getUserById(@Param("id")int userId)

    //固定充值666
    @Insert("insert into tb_recharge_record (user_id,recharge_amount,recharge_time) values(#{userId},#{rechargeAmonunt},#{rechargeTime})")
    void Recharge666(Recharge recharge)

    //固定充值888
    @Insert("insert into tb_recharge_record (user_id,recharge_amount,recharge_time) values(#{userId},#{rechargeAmonunt},#{rechargeTime})")
    void Recharge888(Recharge recharge)
}