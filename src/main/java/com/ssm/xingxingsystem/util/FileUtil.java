package com.ssm.xingxingsystem.util;/*
 *  @author changguiying
 *  @description
 *  @date 2019/10/21
 */

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class FileUtil {
    public static String pictureName="/Users/changguiying/Documents/DownLoadFile/" ;
    public String picturePath=null ;
    public static void copyFile(InputStream inputStream,OutputStream os){
        if (pictureName != null) {
            byte[] buffer = new byte[1024];
            try {
                int i = inputStream.read(buffer);
                while (i != -1) {
                    os.write(buffer, 0, i);
                    i = inputStream.read(buffer);
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
    }

}
