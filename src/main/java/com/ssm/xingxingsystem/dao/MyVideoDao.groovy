package com.ssm.xingxingsystem.dao

import com.ssm.xingxingsystem.bean.Video
import org.apache.ibatis.annotations.*
import org.springframework.web.servlet.ModelAndView

@Mapper
 public interface MyVideoDao {
   @ResultType(Integer)
    @Select("select count(*) from tb_video_upload")
    def int getTableCount()

    @ResultMap("videoMap")
    @Select("""<script>
            select * from tb_video_upload where 1=1
            <if test = "videoName != null and videoName != '' ">
            and video_name like concat('%',#{videoName},'%')
            </if>
            limit #{pageCount},#{pageSize}
        </script>""")
    def List<Video> getVideoList(
            @Param("pageCount")int pageCount,
            @Param("pageSize")int pageSize,
            @Param("videoName")String videoName)


   @ResultMap("videoMap")
   @Select("select * from tb_video_upload where id=#{id}")
    def Video getVideoById(@Param("id")int id)


   @Insert("insert into tb_video_upload (video_name,upload_time,video_address,video_cover,user_id) values(#{v.videoName},#{v.uploadTime},#{v.videoAddress},#{v.videoCover},#{v.userId})")
   def void videoInsert(@Param("v") Video video)


    @ResultMap("videoMap")
    @Select("select * from tb_video_upload where id = #{id}")
    def Video topVideo(@Param("id")int id)



    @ResultMap("videoMap")
    @Update("""<script>
            update tb_video_upload set 
         <if test="video.topVideo != null and video.topVideo != ''">
                  top_video = #{video.topVideo} 
        </if>
     </script>"""
    )
    def void updateVideoTop(
            @Param("video") Video video)




    @ResultMap("videoMap")
    @Update("")
    ModelAndView toVideo(@Param("video") Video video)
}

