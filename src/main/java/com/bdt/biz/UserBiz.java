package com.bdt.biz;

import com.bdt.framework.entity.User;

/**
 * @author zhanghongbo
 * @data 2016/7/21.
 */
public interface UserBiz {
    User getUserById(int id);

    int updateByPrimaryKeySelective(User user);

    int deleteById(int id);

    User findUserByLoginName(String username);

    int addUser(User user);

    User getUserByName(String name);

    User getUserByEmail(String email);
}

