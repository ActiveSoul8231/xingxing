package com.ssm.xingxingsystem.dao

import com.ssm.xingxingsystem.bean.User
import org.apache.ibatis.annotations.Insert
import org.apache.ibatis.annotations.Mapper
import org.apache.ibatis.annotations.Param
import org.apache.ibatis.annotations.ResultMap
import org.apache.ibatis.annotations.Select

@Mapper
public interface UserDao {

    /**
     *              登录时根据登录页面输入的userName 查询是否有该用户
     *    查询时使用 @ResultMap("")
     * @param user
     * @return
     */
    @ResultMap("userMap")
    @Select("select * from tb_user where user_name = #{user.userName}")
    def User getUserByUser(@Param("user")User user)

    @ResultMap("userMap")
    @Select("select * from tb_user where user_name = #{userName}")
    def User getUserByName(@Param("userName")String userName)

    @ResultMap("userMap")
    @Select("select * from tb_user where user_email = #{userMailFlag}")
    def User getUserByEmail(@Param("userMailFlag")String userMailFlag)

    @ResultMap("userMap")
    @Select("select * from tb_user where user_telephone_num = #{userTelphone}")
    def User getUserTel(@Param("userTelphone")String userTelphone)

    @ResultMap("userMap")
    @Insert("insert into tb_user(user_name,user_password,user_num,user_telephone_num,user_email) values(#{user.userName},#{user.password},#{mailCode},#{user.userTelephoneNum},#{user.userEmail})")
    def void registerUser(@Param("user")User user, @Param("mailCode")String mailCode)
}