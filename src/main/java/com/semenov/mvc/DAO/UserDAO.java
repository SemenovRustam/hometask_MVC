package com.semenov.mvc.DAO;

import com.semenov.mvc.entity.User;

import java.util.List;

public interface UserDAO {
    List<User> getAllUsers();

    User getUser(long id);

    void saveUser(User user);

    void deleteUser(long id);
}
