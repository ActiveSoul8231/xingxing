package com.ssm.xingxingsystem.controller.frontend.photo;

import com.ssm.xingxingsystem.bean.Photo;
import com.ssm.xingxingsystem.service.AlbumService;
import com.ssm.xingxingsystem.service.PhotoService;

import com.ssm.xingxingsystem.util.AliyunOSSUtil;
import com.ssm.xingxingsystem.util.PageCountUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import static com.ssm.xingxingsystem.util.FileUtil.pictureName;

@Controller
@RequestMapping("photo")
public class PhotoController {
    @Autowired
    private AlbumService albumService;
    @Autowired
    private PhotoService photoService;


    @RequestMapping(path = "toInsertPhoto",method = RequestMethod.GET)
//    public ModelAndView toInsertPhoto(Integer aId){
    public ModelAndView toInsertPhoto(Integer albumId){

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("albumId",albumId);
        modelAndView.setViewName("frontend/albumPhoto/insertPhoto");
        return modelAndView;
    }
    //添加图片
    @RequestMapping(path = "insertPhoto",method = RequestMethod.POST)
    public String insertPhoto(MultipartFile upload, HttpServletRequest request,Integer albumId){
//        User user = (User) request.getSession().getAttribute("user");
        String s = AliyunOSSUtil.uploadObject2OSS(upload);
        Photo Photo = new Photo();
        Photo.setUserId(1);
//        Photo.setUserId(user.getId());
        Photo.setFileName(upload.getOriginalFilename());
        Photo.setPhotoAddress(s);
        Photo.setAlbumId(albumId);

        Photo.setUploadTime(new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
        photoService.insertPhoto(Photo);
        return "redirect:/album/albumPhoto?id="+albumId;

    }
    //图片下载
    @RequestMapping(path = "download")
    @ResponseBody
    public void fileDownload(HttpServletResponse response, Integer id) throws IOException {
        Photo photo = photoService.getPhotoById(id);
        URL url = new URL(photo.getPhotoAddress());
        URLConnection urlConnection = url.openConnection();
        HttpURLConnection httpURLConnection = (HttpURLConnection) urlConnection;// http的连接类
        httpURLConnection.setConnectTimeout(1000 * 5);//设置超时
        httpURLConnection.setRequestProperty("Charset", "UTF-8");// 设置字符编码
        httpURLConnection.connect();// 打开连接
        BufferedInputStream bis = new BufferedInputStream(httpURLConnection.getInputStream());
        if (pictureName != null) {
            response.setContentType("application/force-download");// 设置强制下载不打开
            response.addHeader("Content-Disposition",
                    "attachment;fileName=" + photo.getFileName());// 设置文件名
            byte[] buffer = new byte[1024];
            try {
                OutputStream os = response.getOutputStream();
                int i = bis.read(buffer);
                while (i != -1) {
                    os.write(buffer, 0, i);
                    i = bis.read(buffer);
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                if (bis != null) {
                    try {
                        bis.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
    }
    //图片删除
    @RequestMapping(path = "deletePhoto",method = RequestMethod.GET)
    public String deletePhoto(Integer id,String albumId){
        photoService.deletePhoto(id);

        return "redirect:/album/albumPhoto?id="+albumId;

    }
    }
