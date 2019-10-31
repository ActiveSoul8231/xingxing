package com.ssm.xingxingsystem.dao

import com.ssm.xingxingsystem.bean.Album
import com.ssm.xingxingsystem.bean.Photo
import com.ssm.xingxingsystem.vo.AlbumVo
import org.apache.ibatis.annotations.Mapper
import org.apache.ibatis.annotations.Param
import org.apache.ibatis.annotations.ResultMap
import org.apache.ibatis.annotations.Select
@Mapper
interface AlbumDao {

    @ResultMap("AlbumVo")
    @Select("SELECT a.id,a.album_name,b.photo_address FROM tb_my_album a LEFT JOIN (SELECT id,album_id,photo_address FROM tb_my_photos GROUP BY album_id) b ON a.id=b.album_id WHERE a.user_id=#{userId}")
//    @Select("SELECT a.id,a.album_name,b.photo_address FROM tb_my_album a LEFT JOIN (SELECT id,album_id,photo_address FROM tb_my_photos GROUP BY album_id) b ON a.id=b.album_id ")
    def List<AlbumVo> albumList(@Param("userId")userId)

    @ResultMap("Album")
    @Select("insert into tb_my_album (album_name,user_id) values(#{Album.albumName},#{Album.userId})")
    def void insertAlbum(@Param("Album") Album album)

    @ResultMap("Album")
    @Select("delete from tb_my_album where id = #{id}")
    void deleteAlbum(@Param("id")String id)

    @ResultMap("photo")
    @Select("select * from tb_my_photos where album_id=#{id} ")
    def List<Photo> getPhotoByAlbumId(@Param("id")int id)
}