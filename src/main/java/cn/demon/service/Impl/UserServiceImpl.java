package cn.demon.service.Impl;

import cn.demon.dao.UserDao;
import cn.demon.entity.User;
import cn.demon.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements IUserService{

    @Autowired
    private UserDao userDao;

    @Override
    public int addMiaiUser(User user){
        return userDao.addMiaiUser(user);
    }

    @Override
    public List<User> queryAll() {
        return userDao.queryAll();
    }
}
