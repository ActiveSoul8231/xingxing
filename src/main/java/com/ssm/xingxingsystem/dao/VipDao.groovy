package com.ssm.xingxingsystem.dao

import com.ssm.xingxingsystem.bean.Integral
import com.ssm.xingxingsystem.bean.User
import org.apache.ibatis.annotations.Insert
import org.apache.ibatis.annotations.Mapper
import org.apache.ibatis.annotations.Param
import org.apache.ibatis.annotations.ResultMap
import org.apache.ibatis.annotations.ResultType
import org.apache.ibatis.annotations.Select
import org.apache.ibatis.annotations.Update

import java.awt.Insets

@Mapper
interface VipDao {


    @Insert("INSERT INTO tb_consumption_record(user_id,consumption_amount,consumption_items,consumption_time) VALUES (#{userId},#{vipOppenManney},3,#{format})")
    def void addRecharge(@Param("vipOppenManney")int vipOppenManney, @Param("format")String format, @Param("userId")int userId)

    @ResultType(Double)
    @Select("select sum(consumption_amount) from tb_consumption_record WHERE user_id=#{userId};")
    def double selectLSRecharge(@Param("userId")int userId)

    @ResultType(Double)
    @Select("select c_money from tb_user where id=#{userId}")
    def double selectUserById(@Param("userId")int userId)

    @Update("UPDATE tb_user SET c_money = #{cb},membership_level_id=#{user.membershipLevelId} WHERE id =#{userId}")
    def void updateUserVip(@Param("user")User user,@Param("cb")Double cb,@Param("userId")Integer userId)

    @Insert("INSERT INTO tb_integral(user_id,integral_num) VALUES (#{userId},#{integral.integralNum})")
    def void insertIntegral(@Param("integral")Integral integral,@Param("userId")int userId)

    @Insert("INSERT INTO tb_integral_record(user_id,operation_project,operation_time) VALUES (#{userId},#{integral.integralNum},#{format})")
    def void insertIntegralRecord(@Param("integral")Integral integral, @Param("userId")int userId,@Param("format")String format)

    @Insert("INSERT INTO tb_membership_level_time(user_id,begin_time,end_time) VALUES (#{userId},#{format},#{endTime})")
    def void insertKTtime(@Param("userId")int userId, @Param("format")String format,@Param("endTime") String endTime)

    @ResultType(String)
    @Select("select end_time from tb_membership_level_time where user_id=#{userId}")
    def String selectDqrq(@Param("userId")int userId)

    @Update("UPDATE tb_user SET c_money = #{cb},membership_level_id=1 WHERE id =#{userId}")
    def void updateUserLeave(@Param("userId")int userId)

    @Update("UPDATE tb_membership_level_time SET end_time = #{date} WHERE user_id =#{userId}")
    def void updateDQtime(@Param("userId")int userId,@Param("date") String date2)

    @ResultMap("integralMap")
    @Select("select * from tb_integral where user_id=#{userId}")
    def Integral selectIntegral(@Param("userId")int userId)

    @Update("UPDATE tb_integral SET integral_num = #{integral} WHERE user_id =#{userId}")
    def void updateIntegral(@Param("integral")Integer integrals, @Param("userId")int userId)
}