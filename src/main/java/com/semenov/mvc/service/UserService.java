package com.semenov.mvc.service;

import com.semenov.mvc.entity.User;


import java.util.List;


public interface UserService {

    List<User> getAllUsers();

    User getUser(Long id);

    void saveUser(User user);

    void deleteUser(Long id);


}
