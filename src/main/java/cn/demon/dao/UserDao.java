package cn.demon.dao;

import cn.demon.entity.User;

import java.util.List;

public interface UserDao {
    int addMiaiUser(User user);
    List<User> queryAll();
}
