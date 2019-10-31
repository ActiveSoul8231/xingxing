package com.ssm.xingxingsystem.util;/*
 *  @author changguiying
 *  @description
 *  @date 2019/10/21
 */

import javax.servlet.http.HttpServletResponse;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;

public class FileDownLoad {

    public static void downLoadFile(HttpServletResponse response, String address, String fileName){
        try{
            URL url = new URL(address);
            URLConnection urlConnection = url.openConnection();
            HttpURLConnection httpURLConnection = (HttpURLConnection) urlConnection;// http的连接类
            httpURLConnection.setConnectTimeout(1000*5);//设置超时
            httpURLConnection.setRequestProperty("Charset", "UTF-8");// 设置字符编码
            httpURLConnection.connect();// 打开连接
            BufferedInputStream bis = new BufferedInputStream(httpURLConnection.getInputStream());
            setResponse(response,fileName,bis);
        }catch (IOException e){
            System.out.println("温馨提示 ：io 异常"+e.getMessage());
        }
    }


    private static void setResponse(HttpServletResponse response, String fileName, InputStream inputStream){
        response.setContentType("application/force-download");// 设置 response 响应格式
        response.addHeader("Content-Disposition",
                "attachment;fileName="+fileName);// 设置文件名
        try {
            FileUtil.copyFile(inputStream,response.getOutputStream());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}
