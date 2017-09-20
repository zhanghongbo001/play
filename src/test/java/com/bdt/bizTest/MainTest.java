package com.bdt.bizTest;

import com.sun.mail.util.MailSSLSocketFactory;

import javax.mail.AuthenticationFailedException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Date;
import java.util.Properties;


/**
 * 邮件发送demo
 * Created by zhanghb on 2017/9/15.
 */
public class MainTest {
    // 发件人的邮箱和密码
    public static String ACCOUNT = "1002688187@qq.com";
    public static String PASSWORD = "zhanghongbo.++";

    public static String SMTPHOST = "smtp.163.com";

    // 收件人邮箱
    public static String  RECEIVEMAILACCOUNT = "zhbjavait@163.com,1825920834@qq.com";

    public static void main(String[] args) throws Exception,AuthenticationFailedException {

        Properties props = new Properties();                    // 参数配置
        //props.setProperty("mail.transport.protocol", "smtp");   // 使用的协议
        //props.setProperty("mail.smtp.host", SMTPHOST);   // 发件人的邮箱的 SMTP 服务器地址
        //props.setProperty("mail.smtp.auth", "true");            // 需要请求认证

        // 开启debug调试
        props.setProperty("mail.debug", "true");
        // 发送服务器需要身份验证
        props.setProperty("mail.smtp.auth", "true");
        // 设置邮件服务器主机名
        props.setProperty("mail.host", "smtp.qq.com");
        // 发送邮件协议名称
        props.setProperty("mail.transport.protocol", "smtp");
        MailSSLSocketFactory sf = new MailSSLSocketFactory();
        sf.setTrustAllHosts(true);
        props.put("mail.smtp.ssl.enable", "true");
        props.put("mail.smtp.ssl.socketFactory", sf);
        Session session = Session.getDefaultInstance(props);
        session.setDebug(true);//打印邮件发送的状态码
        InternetAddress[] internetAddresses=new InternetAddress().parse(RECEIVEMAILACCOUNT);
        MimeMessage message = createMimeMessage(session, ACCOUNT, internetAddresses);
        Transport transport = session.getTransport();
        transport.connect("smtp.qq.com",ACCOUNT, PASSWORD);
        transport.sendMessage(message, message.getAllRecipients());
        transport.close();
    }

    /**
     * 创建一个新的邮件
     * @param session
     * @param sendMail
     * @param internetAddresses
     * @return
     * @throws Exception
     */
    public static MimeMessage createMimeMessage(Session session, String sendMail, InternetAddress[] internetAddresses) throws Exception {
        MimeMessage message = new MimeMessage(session);
        message.setFrom(new InternetAddress(sendMail, "测试邮件", "UTF-8"));

        message.setRecipients(MimeMessage.RecipientType.TO, internetAddresses);
        message.setSubject("测试邮件主题", "UTF-8");
        message.setContent("测试邮件正文编写", "text/html;charset=UTF-8");
        message.setSentDate(new Date());
        message.saveChanges();
        return message;
    }
}

