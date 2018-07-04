package cn.demon.service;

import cn.demon.entity.User;

import java.util.List;

public interface IUserService {
    int addMiaiUser(User user);
    List<User> queryAll();
}
