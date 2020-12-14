package com.simple.todo.controller;


import com.simple.todo.model.Role;
import com.simple.todo.model.User;
import com.simple.todo.service.UserService;
import lombok.RequiredArgsConstructor;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


import javax.servlet.http.HttpServletRequest;



@Controller
@RequestMapping("/signup")
@RequiredArgsConstructor
public class UserController {
    private final UserService userService;
    private final PasswordEncoder passwordEncoder;


    @GetMapping
    public String getUser(){
        return "login-page";
    }
    @PostMapping
    public String addUser(HttpServletRequest req){
        User user = new User();
        user.setRole(Role.ADMIN);
        user.setActive(true);
        user.setPassword(passwordEncoder.encode(req.getParameter("password")));
        user.setUsername(req.getParameter("userName"));
        userService.save(user);
        return "redirect:/todo";
    }

}
