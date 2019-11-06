package com.ssm.xingxingsystem.dao

import com.ssm.xingxingsystem.bean.Dynamic
import org.apache.ibatis.annotations.Mapper
import org.apache.ibatis.annotations.Param
import org.apache.ibatis.annotations.ResultMap
import org.apache.ibatis.annotations.Select

@Mapper
interface DynamicDao {

    @ResultMap("Dynamic")
    @Select("select * from tb_my_dynamics where user_id=#{id} ORDER BY dynamic_date  desc")
    def List<Dynamic> dynamicList(@Param("id")int i)

    @ResultMap("Dynamic")
    @Select("insert into tb_my_dynamics (user_id,dynamic_content,dynamic_photos_address,dynamic_date) values(#{d.userId},#{d.dynamicContent},#{d.dynamicPhotosAddress},#{d.dynamicDate})")
    def void addDynamic(@Param("d")Dynamic dynamic)

    @ResultMap("Dynamic")
    @Select("delete from tb_my_dynamics where id=#{id}")
    def void deleteDynamic(int id)
}