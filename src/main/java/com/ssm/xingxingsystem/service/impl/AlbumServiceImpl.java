package com.ssm.xingxingsystem.service.impl;

import com.ssm.xingxingsystem.bean.Album;
import com.ssm.xingxingsystem.bean.Photo;
import com.ssm.xingxingsystem.dao.AlbumDao;
import com.ssm.xingxingsystem.service.AlbumService;
import com.ssm.xingxingsystem.vo.AlbumVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

//事务注解
@Service
@Transactional
public class AlbumServiceImpl implements AlbumService {
    @Autowired
    private AlbumDao albumDao;
    @Override
    public List<AlbumVo> albumList(String userId) {
            return albumDao.albumList(userId);
    }

    @Override
    public void insertAlbum(Album album) {
        albumDao.insertAlbum(album);
    }

    @Override
    public void deleteAlbum(String id) {
        albumDao.deleteAlbum(id);
    }

    @Override
    public List<Photo> getPhotoByAlbumId(Integer id) {
        return albumDao.getPhotoByAlbumId(id);
    }


}
