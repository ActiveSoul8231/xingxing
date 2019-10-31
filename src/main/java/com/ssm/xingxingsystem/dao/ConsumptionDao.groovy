package com.ssm.xingxingsystem.dao

import com.ssm.xingxingsystem.bean.Consumption
import com.ssm.xingxingsystem.bean.User
import org.apache.ibatis.annotations.Mapper
import org.apache.ibatis.annotations.Param
import org.apache.ibatis.annotations.ResultMap
import org.apache.ibatis.annotations.Select

@Mapper
interface ConsumptionDao {

    @ResultMap("consumptionMap")
    @Select("select * from tb_consumption_record")
    List<Consumption> consumptionList()

}