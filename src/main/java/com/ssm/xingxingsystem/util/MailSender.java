package com.ssm.xingxingsystem.util;

import javax.mail.Message;
import javax.mail.Message.RecipientType;
import javax.mail.Multipart;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import java.util.Date;
import java.util.Properties;


/**
 * 邮件（可带多个附件）发送器
 */
public class MailSender {

    //邮箱发送人地址
    private static final String EMAILPATH = "wenlan8231@163.com";
    //邮箱发送人密码（授权码）
    private static final String PASSWORD = "Hp0Us4GV3MvtKAS2";

    /*
     * @author changguiying
     * @date 2019/9/27 20:03
     * @param recipientAddress 收件人地址
     * @param nonce_str 验证码
     * @return void
     */
    public static void sendMailFunction(String recipientAddress, String nonce_str) throws Exception {
        //1、连接邮件服务器的参数配置
        Properties props = new Properties();
        String property = "true";
        String property1 = "smtp";
        String property2 = "smtp.163.com";
        //设置用户的认证方式
        props.setProperty("mail.smtp.auth", property);
        //设置传输协议
        props.setProperty("mail.transport.protocol", property1);
        //设置发件人的SMTP服务器地址
        props.setProperty("mail.smtp.host", property2);



        //2、创建定义整个应用程序所需的环境信息的 Session 对
        Session session = Session.getInstance(props);
        //设置调试信息在控制台打印出来
        session.setDebug(true);
        //3、创建邮件的实例对象
        Message msg = getMimeMessage(session,recipientAddress,nonce_str);
        //4、根据session对象获取邮件传输对象Transport
        Transport transport = session.getTransport();
        //设置发件人的账户名和密码
        transport.connect(EMAILPATH, PASSWORD);
        //msg.addRecipients(MimeMessage.RecipientType.CC, InternetAddress.parse(propertiesLoader.getProperty("senderAddress")));
        //发送邮件，并发送到所有收件人地址，message.getAllRecipients() 获取到的是在创建邮件对象时添加的所有收件人, 抄送人, 密送人
        transport.sendMessage(msg,msg.getAllRecipients());

        //如果只想发送给指定的人，可以如下写法
//        transport.sendMessage(msg, new Address[]{new InternetAddress(recipientAddress)});

        //5、关闭邮件连接
        transport.close();
    }

    public static void main(String[] args) throws Exception {
        sendMailFunction("1846038231@qq.com", VerificationCodeUtil.getNonce_str());
    }

    public static MimeMessage getMimeMessage(Session session, String recipientAddress, String nonce_str) throws Exception {
        //创建一封邮件的实例对象
        MimeMessage msg = new MimeMessage(session);

        //设置发件人地址
        msg.setFrom(new InternetAddress(EMAILPATH));
        /**
         * 设置收件人地址（可以增加多个收件人、抄送、密送），即下面这一行代码书写多行
         * MimeMessage.RecipientType.TO:发送
         * MimeMessage.RecipientType.CC：抄送
         * MimeMessage.RecipientType.BCC：密送
         */
        msg.setRecipient(RecipientType.TO,new InternetAddress(recipientAddress));
        //设置邮件主题
        msg.setSubject("++-+- ++-+-","UTF-8");
        //设置邮件正文
        MimeBodyPart part1 = new MimeBodyPart();
        part1.setContent("++-+++    ++-+-"+nonce_str, "text/html;charset= GB2312");
        //设置邮件的发送时间,默认立即发送
        msg.setSentDate(new Date());
        // 附件部分
        Multipart multipart = new MimeMultipart();
        multipart.addBodyPart(part1);
//        BodyPart messageBodyPart = new MimeBodyPart();
//        messageBodyPart = new MimeBodyPart();
//        // 设置要发送附件的文件路径
//        File file = new File("发票.pdf");
//        OutputStream output = new FileOutputStream(file);
//        BufferedOutputStream bufferedOutput = new BufferedOutputStream(output);
//        bufferedOutput.write(bytes);
//        DataSource source = new FileDataSource(file);
//        messageBodyPart.setDataHandler(new DataHandler(source));
//        // messageBodyPart.setFileName(filename);
//        // 处理附件名称中文（附带文件路径）乱码问题
//        messageBodyPart.setFileName(MimeUtility.encodeText(file.getName()));
//        multipart.addBodyPart(messageBodyPart);
//        multipart.setParent(part1);
        msg.setContent(multipart);



        return msg;
    }
}

