package com.bdt.bizTest;

import com.bdt.framework.SpringTestSupport;
import com.bdt.framework.common.Sendmail;
import com.bdt.framework.entity.User;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * @author zhanghongbo
 * @data 2016/7/21.
 */
public class UserServerTest extends SpringTestSupport {
    private static Logger log= LoggerFactory.getLogger(UserServerTest.class);


    @Test
    public void test(){
        User user=new User();
        user.setEmail("1002688187@qq.com");
        /*Member member=memberBiz.getUserById(1);
        logger.debug("结果："+member.getName());*/
        Sendmail sendmail = new Sendmail(user);
        //启动线程，线程启动之后就会执行run方法来发送邮件
        sendmail.start();
        log.info("测试数据！");
    }
}
