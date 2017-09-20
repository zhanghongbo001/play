package com.bdt.framework.common;

import com.bdt.framework.entity.User;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Date;
import java.util.Properties;

/**
 * 发送邮件
 * @author zhanghongbo
 * @data 2016/8/9.
 */
public class Sendmail extends Thread {

    //用于给用户发送邮件的邮箱
    private String from = "zhbjavait@163.com";
    //邮箱的用户名
    private String username = "zhbjavait@163.com";
    //邮箱的密码(授权码）
    private String password = "zhanghongbo";
    //发送邮件的服务器地址
    private String host = "smtp.163.com";//163

    //private String host="smtp.qq.com";

    private User user;

    public Sendmail(User user) {
        this.user = user;
    }

    /* 重写run方法的实现，在run方法中发送邮件给指定的用户
      * @see java.lang.Thread#run()
      */
    @Override
    public void run() {
        try {
            Properties props = new Properties();
            props.setProperty("mail.transport.protocol", "smtp");   // 使用的协议（JavaMail规范要求）
            props.setProperty("mail.smtp.host", host);   // 发件人的邮箱的 SMTP 服务器地址
            props.setProperty("mail.smtp.auth", "true");            // 需要请求认证
            Session session = Session.getDefaultInstance(props);
            session.setDebug(true);
            MimeMessage message = createMimeMessage(session, user);
            Transport transport = session.getTransport();
            transport.connect(username, password);
            transport.sendMessage(message, message.getAllRecipients());
            transport.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 创建一封只包含文本的简单邮件
     *
     * @param session 和服务器交互的会话
     * @return
     * @throws Exception
     */
    public MimeMessage createMimeMessage(Session session,User user) throws Exception {
        // 1. 创建一封邮件
        MimeMessage message = new MimeMessage(session);
        // 2. From: 发件人（昵称有广告嫌疑，避免被邮件服务器误认为是滥发广告以至返回失败，请修改昵称）
        message.setFrom(new InternetAddress(from));

        //3.由于554原因需要给自己再抄送一份才可以发的出去
        message.setRecipients(MimeMessage.RecipientType.CC,InternetAddress.parse("zhbjavait@163.com"));
        // 3. To: 收件人（可以增加多个收件人、抄送、密送）
        message.setRecipients(MimeMessage.RecipientType.TO,String.valueOf( new InternetAddress(user.getEmail())));

        // 4. Subject: 邮件主题（标题有广告嫌疑，避免被邮件服务器误认为是滥发广告以至返回失败，请修改标题）
        message.setSubject("新用户注册邮件");
        ///邮件的内容
        StringBuffer sb = new StringBuffer("&nbsp;&nbsp;&nbsp;&nbsp;您好：</br>&nbsp;&nbsp;&nbsp;&nbsp;欢迎账号为"+user.getName()+"注册本产品，点击下面链接激活账号，48小时生效，否则重新注册账号，链接只能使用一次，请尽快激活！</br>");
        sb.append("<a href=\"http://localhost:8080/activation?email=")
                .append(user.getEmail())
                .append("&validateCode=")
                .append(user.getValidatecode())
                .append("\">&nbsp;&nbsp;&nbsp;&nbsp;http://localhost:8080/activation?email=")
                .append(user.getEmail())
                .append("&validateCode=")
                .append(user.getValidatecode())
                .append("</a></br>")
                .append("&nbsp;&nbsp;&nbsp;&nbsp;如果上面的链接无法点击，您也可以复制链接，粘贴到您浏览器的地址栏内，然后按“回车”完成操作。</br>")
                .append("&nbsp;&nbsp;&nbsp;&nbsp;如果您没有进行过注册的操作，请不要点击上述链接，并删除此邮件。</br>")
                .append("&nbsp;&nbsp;&nbsp;&nbsp;此致  公司名称！");
        // 5. Content: 邮件正文（可以使用html标签）（内容有广告嫌疑，避免被邮件服务器误认为是滥发广告以至返回失败，请修改发送内容）
        message.setContent(sb.toString(), "text/html;charset=UTF-8");

        // 6. 设置发件时间
        message.setSentDate(new Date());

        // 7. 保存设置
        message.saveChanges();

        return message;
    }
}
