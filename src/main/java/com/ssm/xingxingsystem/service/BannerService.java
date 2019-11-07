package com.ssm.xingxingsystem.service;

import com.ssm.xingxingsystem.bean.Banner;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public interface BannerService {
    List selecytList(String bannerLikeName);

    void addBanner(Banner banner, String s);

    Banner selectBannerById(Integer id);

    void bannerUpdate(Banner banner, String url);

    void bannerDelete(Integer id);

    List selectJK();
}
