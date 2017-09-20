package com.bdt.framework;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractJUnit4SpringContextTests;

/**
 * @author zhanghongbo
 * @data 2016/7/21.
 */
@ContextConfiguration(locations = {"classpath*:springConfig.xml"})
public abstract class SpringTestSupport extends AbstractJUnit4SpringContextTests {
    protected Logger logger= LoggerFactory.getLogger(getClass());
}
