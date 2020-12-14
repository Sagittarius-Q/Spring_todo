package com.simple.todo.service;

import com.simple.todo.model.User;

public interface UserService {
    public void save(User user);
    public User findByUserName(String userName);
}
