package com.ssm.xingxingsystem.dao

import com.ssm.xingxingsystem.bean.Banner
import org.apache.ibatis.annotations.Delete
import org.apache.ibatis.annotations.Insert
import org.apache.ibatis.annotations.Mapper
import org.apache.ibatis.annotations.Param
import org.apache.ibatis.annotations.ResultMap
import org.apache.ibatis.annotations.Select
import org.apache.ibatis.annotations.Update


@Mapper
interface BannerDao {

    @ResultMap("bannerMap")
    @Select("""
            <script>
            select * from tb_banner where 1=1
             <if test = "bannerLikeName !=null and bannerLikeName !=''">
                 and photos_name like concat('%',#{bannerLikeName},'%')
              </if>
             </script>
            """)
    def List selectList(@Param("bannerLikeName") String bannerLikeName)

    @Insert("INSERT INTO tb_banner(photos_address,photos_upload_time,photos_jumps,photos_name) VALUES (#{url},#{format},#{banner.photosJumps},#{banner.photosName})")
    def void addBanner(@Param("banner") Banner banner, @Param("format") String format, @Param("url") String s)

    @ResultMap("bannerMap")
    @Select("select * from tb_banner where id=#{id}")
    def Banner selectBannerById(@Param("id") int id)

    @Update("UPDATE tb_banner SET photos_address= #{banner.photosAddress},photos_upload_time= #{format},photos_jumps= #{banner.photosJumps},photos_name= #{banner.photosName} WHERE id =#{banner.id}")
    def void bannerUpdate(@Param("banner") Banner banner, @Param("format") String format, @Param("url") String url)

    @Delete("delete from tb_banner where id=#{id}")
    def void bannerDelete(@Param("id") int id)

    @ResultMap("bannerMap")
    @Select("select * from tb_banner")
    List selectJK()

}