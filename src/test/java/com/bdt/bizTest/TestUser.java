package com.bdt.bizTest;

import com.bdt.framework.common.Sendmail;
import com.bdt.framework.entity.User;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.defaults.DefaultSqlSessionFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.io.IOException;
import java.util.Calendar;

/**
 * @author zhanghongbo
 * @data 2016/7/11.
 */
public class TestUser {
    private static ApplicationContext ctx;
    private static SqlSessionFactory sqlSessionFactory;

    public static SqlSessionFactory getSqlSessionFactory() {
        return sqlSessionFactory;
    }

    public static void main(String[] args) throws IOException {
        /*ctx = new ClassPathXmlApplicationContext("springConfig.xml");
        sqlSessionFactory = ctx.getBean("sqlSessionFactory", DefaultSqlSessionFactory.class);
        SqlSession sqlSession = sqlSessionFactory.openSession();
        try {
            *//*UserMapper userMapper=sqlSession.getMapper(UserMapper.class);
            User user=userMapper.selectByPrimaryKey(51);
            System.out.println(user.getName());*//*
            Calendar c = Calendar.getInstance();
            //现在的时间(单位：毫秒)
            //TODO:时间换算问题，如何处理int和long之间的关系
            long time = c.getTimeInMillis();
            //当前毫秒数
            long times=System.currentTimeMillis();
            //获取现在时间（单位：秒）
            //过期时间为24小时后
		    //int token_exptime1=(int)(time+1000*60*60*24);
            long token_exptime =time + (1000*20);    //这里测试是用的20秒
            String token_exptimes =time + (1000*20)+"";    //这里测试是用的20秒
            System.out.print("当前毫秒数time:"+time+"/20秒token_exptime:"+token_exptime+"/20秒String："+token_exptimes);
            System.out.print("结果："+(token_exptime-time));
            *//*if(token_exptimes>){
                System.out.print("true");
            }else{
                System.out.print("false");
            }*//*
            long num = System.currentTimeMillis() + (1000 * 20);
            System.out.print("当前毫秒数system:"+times+"/20秒System:"+num);
            System.out.print("结果:"+(num-times));

        } finally {
            sqlSession.close();
        }*/

        User user=new User();
        user.setEmail("1002688187@qq.com");
        /*Member member=memberBiz.getUserById(1);
        logger.debug("结果："+member.getName());*/
        Sendmail sendmail = new Sendmail(user);
        //启动线程，线程启动之后就会执行run方法来发送邮件
        sendmail.start();
    }


}
