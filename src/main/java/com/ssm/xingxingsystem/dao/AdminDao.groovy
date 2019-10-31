package com.ssm.xingxingsystem.dao

import com.ssm.xingxingsystem.bean.Admin
import com.ssm.xingxingsystem.bean.User
import com.ssm.xingxingsystem.bean.Video
import com.ssm.xingxingsystem.util.PageCountUtil
import org.apache.ibatis.annotations.*
/*
 *      Created by IntelliJ IDEA.
 *      User:baiziming
 *      Date: 2019/10/25 0025
 *      Time: 15:29
*/
@Mapper
public interface AdminDao {


    @ResultMap("userMap")
    @Select("""<script>
        select * from tb_user where 1=1
            <if test="selectByValue != null and selectByValue != ''">
            and  user_name  like concat('%',#{selectByValue},'%') or user_telephone_num like concat('%',#{selectByValue},'%') or user_email like concat('%',#{selectByValue},'%')
        </if>
        limit #{pageCount},#{pageSize}
    </script>""")
    def List<User> getAllUser(@Param("selectByValue")String selectByValue,@Param("pageCount") Integer pageCount,@Param("pageSize") Integer pageSize)

    @ResultType(Integer)
    @Select("select count(id) from tb_user")
    def int getUserCount()

    @ResultMap("userMap")
    @Select("select  *  from tb_user where id = #{id}")
    def User getUserById(@Param("id")Integer id)

    @ResultMap("userMap")
    @Update("""<script>
            update tb_user set 
         <if test="user.recoveryFlag != null and user.recoveryFlag != ''">
                  recovery_flag = #{user.recoveryFlag} 
        </if>
         <if test="user.iceFlag != null and user.iceFlag != ''">
                  ice_flag = #{user.iceFlag}  
        </if>
         <if test="user.delFlag != null and user.delFlag != ''">
                  del_flag = #{user.delFlag}  
        </if>
                  where  id =  #{user.id}
                  </script>""")
    def void updateUserByFlag(@Param("user")User user)

    @ResultMap("userMap")
    @Delete("delete from tb_user where  id = #{id} ")
    def void deleteUserById(@Param("id")int id)


    @ResultType(Integer)
    @Select("select count(id) from tb_video_upload")
    def int getVideoCount()

    @ResultMap("videoMap")
    @Select("""<script>
            select * from tb_video_upload where 1=1 
      <if test="selectByValue != null and selectByValue != ''">
                and   video_name like concat('%',#{selectByValue},'%') 
        </if>
         limit #{pageCountUtil.pageCount},#{pageCountUtil.pageSize}
      </script> """)
    def List<Video> managementVideoList(@Param("selectByValue")String selectByValue, @Param("pageCountUtil")PageCountUtil pageCountUtil)

    /**
     * 管理员登陆
     * @param admin
     * @return
     */
    @ResultMap("adminMap")
    @Select("select * from tb_admin where admin_name = #{admin.adminName}")
    def Admin getAdminByAdmin(@Param("admin")Admin admin)


    @ResultMap("videoMap")
    @Select("select * from tb_video_upload where id = #{id}")
    def Video selectVideoById(@Param("id")int vid)

    @ResultMap("videoMap")
    @Update("""<script>
        update tb_video_upload set 
        <if test="video.examineFlag != null and video.examineFlag != ''">
          examine_flag = #{video.examineFlag} 
        </if>
          <if test="video.examineFlag != null and video.examineFlag != ''and video.auditPass != null and video.auditPass != ''">
          , 
        </if>
           <if test="video.auditPass != null and video.auditPass != ''">
          audit_pass = #{video.auditPass} 
        </if>
            where  id =  #{video.id} 
       </script>  """ )
    def void updateVideoExamineFlag(@Param("video")Video video)
}