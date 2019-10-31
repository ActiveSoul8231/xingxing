package com.ssm.xingxingsystem.util;
/*
 *  @author changguiying
 *  @description
 *  @date 2019/10/2
 */

import com.aliyun.oss.OSSClient;
import com.aliyun.oss.model.ObjectMetadata;
import com.aliyun.oss.model.PutObjectResult;
import org.apache.commons.io.FileUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.UUID;

public class AliyunOSSUtil {
    private static final String endpoint = "oss-cn-beijing.aliyuncs.com";
    private static final String accessKeyId = "LTAI4FhM1gMGn4FnD73zRYMc";
    private static final String accessKeySecret = "VnvrBXTpZnRP3DTbwNF6sSOkX2dVQ0";
    private static final String BACKET_NAME = "changguiying";
    private static final String FOLDER = "yc1";
    public static final String PATH_HTTP = "http://";
    public static final String PATH_TYPE_KEY = "2";
    public static final String PATH_TYPE_FULL = "1";
    // 阿里云API的外网域名
    private static String ENDPOINT_RETURN_URL="oss-cn-beijing.aliyuncs.com";

    /*public static void main(String[] args) throws FileNotFoundException {

        File file = new File("G:\\生活娱乐\\图片\\5958231\\330703-1512230Q45262.jpg");
        String url = uploadObject2OSS(file, "1");
        System.out.println(url);

    }*/
    public static String uploadFile(File uploadFile, String fileName) throws IOException {
        File file = new File("C:\\Users\\lenovo1\\Desktop\\aaa");
        if(!file.exists()){
            file.mkdir();
        }
        File file1 = new File(file.getPath(),fileName);
        FileUtils.copyFile(uploadFile,file1);
        String url = uploadObject2OSS(file1, "1");
        file1.delete();
        return url;
    }

    /**
     * 上传图片至OSS
     *
     * @param in
     *            上传文件流
     * @param
     *            TYPE=1 网络全路径，TYPE=2 文件KEY，FOLDER/UUID.jpg
     * @return String 返回访问路径,图片存储KEY
     *
     */
    /**
     *
     * @param in
     * @param name
     * @param size
     * @param PathType
     * @return
     */
    public static String uploadObject2OSS(InputStream in, String name, Long size, String PathType) {
        OSSClient ossClient = getOSSClient();
        String resultStr = null;
        String FileName = null;
        try {

            // 文件名 如果出现重复，则重新生成名字，再上传
            FileName = getFileName(name);
            if (ossClient.doesObjectExist(BACKET_NAME, FOLDER + FileName)) {
                FileName = getFileName(name);

            }

            // 文件大小
            Long fileSize = size;
            // 创建上传Object的Metadata
            ObjectMetadata metadata = new ObjectMetadata();
            // 上传的文件的长度
            metadata.setContentLength(in.available());
            // 指定该Object被下载时的网页的缓存行为
            metadata.setCacheControl("no-cache");
            // 指定该Object下设置Header
            metadata.setHeader("Pragma", "no-cache");
            // 指定该Object被下载时的内容编码格式
            metadata.setContentEncoding("utf-8");
            // 文件的MIME，定义文件的类型及网页编码，决定浏览器将以什么形式、什么编码读取文件。如果用户没有指定则根据Key或文件名的扩展名生成，
            // 如果没有扩展名则填默认值application/octet-stream
            metadata.setContentType(getContentType(FileName));
            // 指定该Object被下载时的名称（指示MINME用户代理如何显示附加的文件，打开或下载，及文件名称）
            metadata.setContentDisposition("filename/filesize=" + FileName + "/" + fileSize + "Byte.");
            // 上传文件 (上传文件流的形式)
            PutObjectResult putResult = ossClient.putObject(BACKET_NAME, FOLDER + "/" + FileName, in, metadata);
            resultStr = putResult.getETag();
            System.out.println("上传阿里云OSS服务器成功URL: " + resultStr);
            // 解析结果
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("上传阿里云OSS服务器异常." + e.getMessage());
            return null;
        }
        // 返回文件名
        if (PATH_TYPE_KEY.equals(PathType)) {
            return FOLDER + "/" + FileName;
        }
        // 返回全路径
        return PATH_HTTP + BACKET_NAME + "." + ENDPOINT_RETURN_URL + "/" + FOLDER + "/" + FileName;
    }

    public static String uploadObject2OSS(File file, String pathType) {

        OSSClient ossClient = getOSSClient();
        String resultStr = null;
        String fileName = null;
        try {

            // 以输入流的形式上传文件
            InputStream is = new FileInputStream(file);

            // 文件名 如果出现重复，则重新生成名字，再上传
            fileName = getFileName(file.getName());


            // 文件大小
            Long fileSize = file.length();
            // 创建上传Object的Metadata
            ObjectMetadata metadata = new ObjectMetadata();
            // 上传的文件的长度
            metadata.setContentLength(is.available());
            // 指定该Object被下载时的网页的缓存行为
            metadata.setCacheControl("no-cache");
            // 指定该Object下设置Header
            metadata.setHeader("Pragma", "no-cache");
            // 指定该Object被下载时的内容编码格式
            metadata.setContentEncoding("utf-8");
            // 文件的MIME，定义文件的类型及网页编码，决定浏览器将以什么形式、什么编码读取文件。如果用户没有指定则根据Key或文件名的扩展名生成，
            // 如果没有扩展名则填默认值application/octet-stream
            metadata.setContentType(getContentType(fileName));
            // 指定该Object被下载时的名称（指示MINME用户代理如何显示附加的文件，打开或下载，及文件名称）
            metadata.setContentDisposition("filename/filesize=" + fileName + "/" + fileSize + "Byte.");
            // 上传文件 (上传文件流的形式)
            PutObjectResult putResult = ossClient.putObject(BACKET_NAME, FOLDER + "/" + fileName, is, metadata);
            resultStr = putResult.getETag();
            System.out.println("上传阿里云OSS服务器成功URL: " + resultStr);
            // 解析结果
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("上传阿里云OSS服务器异常" + e.getMessage());
            return null;
        }

        // 返回文件名
        if (PATH_TYPE_KEY.equals(pathType)) {
            return FOLDER + "/" + fileName;
        }
        // 返回全路径
        return PATH_HTTP + BACKET_NAME + "." + ENDPOINT_RETURN_URL + "/" + FOLDER + "/" + fileName;
    }

    private static OSSClient getOSSClient() {
        return new OSSClient(endpoint, accessKeyId, accessKeySecret);
    }

    /**
     * 修改文件名
     *
     * @param fileName
     *            文件名
     * @return 文件的新名称
     */
    private static String getFileName(String fileName) {
        if (StringUtils.isEmpty(fileName))
            return null;
        String fileType = fileName.substring(fileName.lastIndexOf("."), fileName.length());
        String name = uuid() + fileType;
        return name;

    }

    /**
     * 上传单个文件
     *
     * @param multipartFile
     * @return
     */
    public static String uploadObject2OSS(MultipartFile multipartFile) {
        try {
            if (multipartFile != null && !multipartFile.isEmpty()) {
                //获取上传的文件名
                String fileName = multipartFile.getOriginalFilename();
                // 获取文件后缀名
                String suffix=fileName.substring(fileName.lastIndexOf("."));
                // 用uuid作为文件名，防止生成的临时文件重复
                File dest = File.createTempFile(uuid(), suffix);
                // 将上传文件复制到临时文件
                FileUtils.copyInputStreamToFile(multipartFile.getInputStream(),dest);
                String s = uploadFile(dest, fileName);
                dest.delete();
                return s;
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "";
    }

    private static String uuid() {
        String uuid = "";
        for (int i = 0; i < 5; i++) {
            //注意replaceAll前面的是正则表达式
            uuid = UUID.randomUUID().toString().replaceAll("-","");
        }
        return uuid;
    }

    /**
     * 通过文件名判断并获取OSS服务文件上传时文件的contentType
     *
     * @param fileName
     *            文件名
     * @return 文件的contentType
     */
    private static String getContentType(String fileName) {
        if (StringUtils.isEmpty(fileName))
            return null;
        // 文件的后缀名
        String fileExtension = fileName.substring(fileName.lastIndexOf("."));
        if (".bmp".equalsIgnoreCase(fileExtension)) {
            return "image/bmp";
        }
        if (".gif".equalsIgnoreCase(fileExtension)) {
            return "image/gif";
        }
        if (".jpeg".equalsIgnoreCase(fileExtension) || ".jpg".equalsIgnoreCase(fileExtension) || ".png".equalsIgnoreCase(fileExtension)) {
            return "image/jpeg";
        }
        if (".html".equalsIgnoreCase(fileExtension)) {
            return "text/html";
        }
        if (".txt".equalsIgnoreCase(fileExtension)) {
            return "text/plain";
        }
        if (".vsd".equalsIgnoreCase(fileExtension)) {
            return "application/vnd.visio";
        }
        if (".ppt".equalsIgnoreCase(fileExtension) || "pptx".equalsIgnoreCase(fileExtension)) {
            return "application/x-ppt";
        }
        if (".doc".equalsIgnoreCase(fileExtension) || "docx".equalsIgnoreCase(fileExtension)) {
            return "application/msword";
        }
        if (".xml".equalsIgnoreCase(fileExtension)) {
            return "text/xml";
        }
        if (".mp4".equalsIgnoreCase(fileExtension)) {
            return "audio/mp4";
        }
        if (".mp3".equalsIgnoreCase(fileExtension)) {
            return "audio/mp3";
        }
        if (".acp".equalsIgnoreCase(fileExtension)) {
            return "audio/x-mei-aac";
        }
        if (".aif".equalsIgnoreCase(fileExtension)) {
            return "audio/aiff";
        }
        if (".aifc".equalsIgnoreCase(fileExtension)) {
            return "audio/aiff";
        }
        if (".au".equalsIgnoreCase(fileExtension)) {
            return "audio/basic";
        }
        if (".lavs".equalsIgnoreCase(fileExtension)) {
            return "audio/x-liquid-secure";
        }
        if (".lmsff".equalsIgnoreCase(fileExtension)) {
            return "audio/x-la-lms";
        }
        if (".m3u".equalsIgnoreCase(fileExtension)) {
            return "audio/mpegurl";
        }if (".mid".equalsIgnoreCase(fileExtension)) {
            return "audio/mid";
        }
        if (".mp1".equalsIgnoreCase(fileExtension)) {
            return "audio/mp1";
        }
        if (".mp2".equalsIgnoreCase(fileExtension)) {
            return "audio/mp2";
        }
//		if (".ac3".equalsIgnoreCase(fileExtension)) {
//			return "audio/ac3";
//		}
//		if (".wave".equalsIgnoreCase(fileExtension)) {
//			return "audio/wave";
//		}
//		if (".mpeg".equalsIgnoreCase(fileExtension)) {
//			return "audio/mpeg";
//		}
        if (".wma".equalsIgnoreCase(fileExtension)) {
            return "audio/x-ms-wma";
        }


        // 默认返回类型
        return "image/jpeg";
    }

}
