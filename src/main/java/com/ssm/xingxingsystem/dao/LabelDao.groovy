package com.ssm.xingxingsystem.dao

import com.ssm.xingxingsystem.bean.Label
import com.ssm.xingxingsystem.bean.menu.FirstMenu
import com.ssm.xingxingsystem.util.PageCountUtil
import org.apache.ibatis.annotations.Delete
import org.apache.ibatis.annotations.Insert
import org.apache.ibatis.annotations.Mapper
import org.apache.ibatis.annotations.Param
import org.apache.ibatis.annotations.ResultMap
import org.apache.ibatis.annotations.Select
import org.apache.ibatis.annotations.Update

@Mapper
interface LabelDao {

    @ResultMap("labelMap")
    @Select("""
        <script>
        select * from tb_label where 1= 1
        <if test = "labelName !=null and labelName !=''">
        and label_name like concat('%',#{labelName},'%')
        </if>
         limit #{pageCountUtil.pageCount},#{pageCountUtil.pageSize}
        </script>
        """)
    def List<Label> selectlabel(@Param("pageCountUtil")PageCountUtil pageCountUtil, @Param("labelName")String labelName)

    @ResultMap("labelMap")
    @Select("select * from tb_label where id=#{id}")
    def Label selectlabelBy(@Param("id")int id)

    @Delete("delete from tb_label where id = #{id}")
    def void deleteLabel(@Param("id")int id)

    @Insert("INSERT INTO tb_label(label_name) VALUES (#{label.labelName})")
    def void addlabel(@Param("label")Label label)

    @Update("UPDATE tb_label SET label_name = #{label.labelName} WHERE id =#{label.id}")
    def void labelUpdate(@Param("label")Label label)

    @ResultMap("labelMap")
    @Select("select * from tb_label")
    def List<Label>  selectlabelCont()
}