package com.ssm.xingxingsystem.service.impl;

import com.ssm.xingxingsystem.bean.Banner;
import com.ssm.xingxingsystem.dao.BannerDao;
import com.ssm.xingxingsystem.service.BannerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Transactional
@Service
public class BannerServiceImpl  implements BannerService {

    @Autowired
    BannerDao bannerDao;

    @Override
    public List selecytList(String bannerLikeName) {
        return bannerDao.selectList(bannerLikeName);
    }

    @Override
    public void addBanner(Banner banner, String s) {
        Date date = new Date();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String format = simpleDateFormat.format(date);
        bannerDao.addBanner(banner,format,s);
    }

    @Override
    public Banner selectBannerById(Integer id) {
        return bannerDao.selectBannerById(id);

    }

    @Override
    public void bannerUpdate(Banner banner, String url) {
        Date date = new Date();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String format = simpleDateFormat.format(date);
        bannerDao.bannerUpdate(banner,format,url);
    }

    @Override
    public void bannerDelete(Integer id) {
        bannerDao.bannerDelete(id);
    }

    @Override
    public List selectJK() {
        return bannerDao.selectJK();
    }


}
