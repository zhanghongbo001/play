package com.bdt.biz.impl;

import com.bdt.biz.UserBiz;
import com.bdt.framework.entity.User;
import com.bdt.framework.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author zhanghongbo
 * @data 2016/7/21.
 */
@Service
public class UserBizImpl implements UserBiz {

    @Autowired(required=false)
    private UserMapper userMapper;

    @Override
    public User getUserById(int id) {
        User user=userMapper.selectByPrimaryKey(id);
        return user;
    }

    @Override
    public int updateByPrimaryKeySelective(User user) {
        int users=userMapper.updateByPrimaryKeySelective(user);
        return users;
    }

    @Override
    public int deleteById(int id) {
        int users=userMapper.deleteByPrimaryKey(id);
        return users;
    }

    @Override
    public User findUserByLoginName(String username) {
        return null;
    }

    @Override
    public int addUser(User user) {
        int num=userMapper.insertSelective(user);
        return num;
    }

    @Override
    public User getUserByName(String name) {
        User user=userMapper.selectByName(name);
        return user;
    }

    @Override
    public User getUserByEmail(String email) {
        User user=userMapper.selectByEmail(email);
        return user;
    }

}
