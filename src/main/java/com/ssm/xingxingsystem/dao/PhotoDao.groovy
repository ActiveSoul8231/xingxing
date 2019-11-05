package com.ssm.xingxingsystem.dao

import com.ssm.xingxingsystem.bean.Photo
import com.ssm.xingxingsystem.util.PageCountUtil
import org.apache.ibatis.annotations.Mapper
import org.apache.ibatis.annotations.Param
import org.apache.ibatis.annotations.ResultMap
import org.apache.ibatis.annotations.ResultType
import org.apache.ibatis.annotations.Select
@Mapper
public interface PhotoDao {
    @ResultType(Integer)
    @Select("select count(id) from tb_my_photos")
    def int getTableCount()


    @ResultMap("photo")
    @Select("""<script>
    select * from tb_my_photos p,tb_user u where 1=1 and u.id=p.user_id
        <if test="beginTime != null and beginTime != ''">
            and p.upload_time between #{beginTime}
            <if test="endTime != null and endTime != ''">
                and #{endTime}
            </if>
            <if test="endTime == null and endTime == ''">
                and '9999'
            </if>
        </if>
        <if test="fileName != null and fileName != ''">
            and p.file_name like concat('%',#{fileName},'%')
        </if>
        limit #{p.pageCount},#{p.pageSize}
    </script>""")
    def List<Photo> getPhotoList(@Param("p")PageCountUtil pageCountUtil,@Param("beginTime") String beginTime, @Param("endTime")String endTime,@Param("fileName") String fileName)

    @ResultMap("photo")
//    @Select("insert into tb_my_photos (photo_address,upload_time,file_name,album_id,user_id,) values(#{p.photoAddress},#{p.uploadTime},#{p.fileName},#{p.userId},#{p.albumId})")
    @Select("insert into tb_my_photos (photo_address,upload_time,file_name,album_id,user_id) values(#{p.photoAddress},#{p.uploadTime},#{p.fileName},#{p.albumId},#{p.userId})")
    def void insertPhoto(@Param("p")Photo photo)

    @ResultMap("photo")
    @Select("select * from tb_my_photos where id = #{id}")
    def Photo getPhotoById(int id)

    @ResultMap("photo")
    @Select("delete from tb_my_photos where id=#{id}")
    def void deletePhoto(@Param("id")int id)
}