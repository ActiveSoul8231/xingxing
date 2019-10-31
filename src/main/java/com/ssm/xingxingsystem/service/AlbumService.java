package com.ssm.xingxingsystem.service;

import com.ssm.xingxingsystem.bean.Album;
import com.ssm.xingxingsystem.bean.Photo;
import com.ssm.xingxingsystem.vo.AlbumVo;

import java.util.List;

public interface AlbumService {
    List<AlbumVo> albumList(String userId);

    void insertAlbum(Album album);

    void deleteAlbum(String id);

    List<Photo> getPhotoByAlbumId(Integer id);
}
