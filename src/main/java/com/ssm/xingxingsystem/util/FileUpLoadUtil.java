package com.ssm.xingxingsystem.util;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;

/**
 * @Auther wenlan
 * @Date 2019/9/24
 */
public class FileUpLoadUtil {
    public static String fileUpLoad(File upload,String uploadFileName){
        //获取  tomcat 中的 webapps  中的  root  文件夹路径    追加getRealPath("\\文件夹名称")  用于存储上传的图片
        String realPath = ServletActionContext.getServletContext().getRealPath("\\uploadFile");
        //创建文件夹
        File file = new File(realPath);
        if(!file.exists()){
            file.mkdirs();
        }
        //文件上传   使用复制方法  进行try  catch
        try {
            FileUtils.copyFile(upload,new File(realPath,uploadFileName));
        } catch (IOException e) {
            e.printStackTrace();
        }
        //获取动态路径，用于存入数据库
        HttpServletRequest request = ServletActionContext.getRequest();
        //获取访问协议
        String scheme = request.getScheme();
        //获取动态IP地址
        String serverName = request.getServerName();
        //获取动态端口号
        int serverPort = request.getServerPort();
        String url = scheme+"://"+serverName+":"+serverPort+"/uploadFile/"+uploadFileName;
        return url;
    }
}
