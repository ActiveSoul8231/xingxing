package com.ssm.xingxingsystem.dao

import com.ssm.xingxingsystem.bean.menu.FirstMenu
import com.ssm.xingxingsystem.bean.menu.TwoMenu
import com.ssm.xingxingsystem.util.PageCountUtil
import com.ssm.xingxingsystem.vo.FirstMenuVo
import org.apache.ibatis.annotations.Delete
import org.apache.ibatis.annotations.Insert
import org.apache.ibatis.annotations.Mapper
import org.apache.ibatis.annotations.Param
import org.apache.ibatis.annotations.ResultMap
import org.apache.ibatis.annotations.ResultType
import org.apache.ibatis.annotations.Select
import org.apache.ibatis.annotations.Update

@Mapper
interface MenuDao {
    @ResultMap("firstMenuMap")
    @Select("""<script>
          select * from tb_first_menu where 1 = 1 
          <if test = "menuName != null and menuName != ''">
             and menu_name like concat('%',#{menuName},'%')
          </if>
          limit #{pageCountUtil.pageCount},#{pageCountUtil.pageSize}
    </script>""")
    List<FirstMenu> firstMenuSelect(@Param("pageCountUtil")PageCountUtil pageCountUtil, @Param("menuName")String menuName)

    @ResultType(Integer)
    @Select("select count(*) from tb_first_menu")
    int getTableCount()

    @ResultMap("firstMenuMap")
    @Select("select * from tb_first_menu where menu_name = #{menuName}")
    FirstMenu getMenuName(@Param("menuName")String menuName)

    @Insert("insert into tb_first_menu(menu_name) values(#{menuName})")
    void firstMenuInsert(@Param("menuName")String menuName)

    @Delete("delete from tb_first_menu where id = #{id}")
    void firstMenuDeleteById(@Param("id")int id)

    @ResultMap("firstMenuMap")
    @Select("select * from tb_first_menu where id = #{id}")
    FirstMenu toUpdateById(@Param("id")int id)

    @Update("update tb_first_menu set menu_name = #{menuName} where id = #{id}")
    void firstMenuUpdate(@Param("id")int id, @Param("menuName")String menuName)

    @ResultType(Integer)
    @Select("select count(*) from tb_two_menu")
    int getTableCount1()

    @ResultMap("twoMenuMap")
    @Select("""<script>
        select * from tb_two_menu where 1 = 1  
        <if test = "oneMenuId != null and oneMenuId != ''">
           and first_menu_id = #{oneMenuId}
        </if>
        <if test = "menu2Name != null and menu2Name != ''">
           and menu2_name like concat('%',#{menu2Name},'%')
        </if>
        limit #{pageCountUtil.pageCount},#{pageCountUtil.pageSize}
    </script>""")
    List<TwoMenu> twoMenuSelect(@Param("pageCountUtil")PageCountUtil pageCountUtil, @Param("menu2Name")String menu2Name, @Param("oneMenuId")Integer oneMenuId)

    @ResultMap("firstMenuMap")
    @Select("select * from tb_first_menu")
    List<FirstMenu> getFirstMenu()

    @Insert("insert into tb_two_menu(menu2_name,first_menu_id) values(#{menu2Name},#{menuName})")
    void twoMenuInsert(@Param("menu2Name")String menu2Name, @Param("menuName")String menuName)

    @Delete("delete from tb_two_menu where id = #{id}")
    void twoMenuDeleteById(@Param("id") int id)
}