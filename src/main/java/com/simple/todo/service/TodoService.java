package com.simple.todo.service;

import com.simple.todo.model.Todo;
import com.simple.todo.model.User;

import java.util.Date;
import java.util.List;
import java.util.Optional;

public interface TodoService {
    List< Todo > getTodosByUser(User user);
    List<Todo> getByStatus(Boolean status);
    Optional< Todo > getTodoById(long id);
    void updateTodo(Long id);
    void addTodo( User user, String desc, Date targetDate);
    void deleteTodo(long id);
    void saveTodo(Todo todo);
    List<Todo> getAllList();

}
