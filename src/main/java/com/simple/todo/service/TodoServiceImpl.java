package com.simple.todo.service;

import com.simple.todo.model.Todo;
import com.simple.todo.model.User;
import com.simple.todo.repo.TodoRepository;
import com.simple.todo.repo.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
@RequiredArgsConstructor
public class TodoServiceImpl implements TodoService{
    private final TodoRepository todoRepository;
    private final UserRepository userRepository;

    @Override
    public List<Todo> getByStatus(Boolean status) {
        return null;
    }

    @Override
    public List<Todo> getTodosByUser(User user) {
        return null;
    }

    @Override
    public Optional<Todo> getTodoById(long id) {
        return todoRepository.findById(id);
    }

    @Override
    public void updateTodo(Long id) {
        Todo t = todoRepository.findById(id).get();
        t.setStatus(true);
        todoRepository.save(t);
    }

    @Override
    public void addTodo(User user, String desc, Date targetDate) { }

    @Override
    public void deleteTodo(long id) {
        Optional <Todo> todo = todoRepository.findById(id);
        todo.ifPresent(todoRepository::delete);
    }

    @Override
    public void saveTodo(Todo todo) {
        todoRepository.save(todo);
    }

    @Override
    public List<Todo> getAllList() {
        return todoRepository.findAll();
    }


}
