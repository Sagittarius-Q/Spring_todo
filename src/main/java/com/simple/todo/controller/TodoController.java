    package com.simple.todo.controller;

    import com.simple.todo.model.Todo;
    import com.simple.todo.model.User;
    import com.simple.todo.service.TodoService;
    import com.simple.todo.service.UserService;
    import lombok.RequiredArgsConstructor;

    import org.springframework.stereotype.Controller;
    import org.springframework.ui.Model;
    import org.springframework.web.bind.annotation.*;


    import javax.servlet.http.HttpServletRequest;


    import java.util.ArrayList;
    import java.util.Date;
    import java.util.List;

    @RequiredArgsConstructor
    @Controller
    @RequestMapping("/todo")
    public class TodoController {
        private final TodoService todoService;
        private final UserService userService;

        @PostMapping("/delete")
        public String deleteTodo(@RequestParam("id")Long id){
            todoService.deleteTodo(id);
            return "redirect:/todo";
        }
        @PostMapping("/addtodone")
        public String addToDone(@RequestParam("id")Long id){
            todoService.updateTodo(id);
            return "redirect:/todo";
        }
        @GetMapping("/done")
        public String getDoneTodo(HttpServletRequest req, Model model){
            User user = userService.findByUserName(req.getUserPrincipal().getName());
            List<Todo> list = user.getTodoLists();
            List<Todo> doneList = new ArrayList<>();
            for(Todo todo: list ){
                if (todo.isDone()){
                    doneList.add(todo);
                }
            }
            model.addAttribute("list", doneList);
            return "todoDoneList";
        }

        @GetMapping
        public String getTodo(HttpServletRequest req, Model model){
            User user = userService.findByUserName(req.getUserPrincipal().getName());
            List<Todo> todoList = new ArrayList<>();
            for(Todo todo: user.getTodoLists()){
                if(!todo.isDone()){
                    todoList.add(todo);
                }
            }
            model.addAttribute("name", req.getUserPrincipal().getName());
            model.addAttribute("list" , todoList);
            System.out.println(req.getUserPrincipal());
            return "todoList";
        }
        @GetMapping("/add")
        public String addTodo(){
            return "todoForm";
        }
        @PostMapping
            public String addTodo( HttpServletRequest request, Model model){
                Todo todo = new Todo();
                todo.setUser(userService.findByUserName(request.getUserPrincipal().getName()));
                todo.setName(request.getParameter("name"));
                todo.setTargetDate(new Date());
                todo.setDescription(request.getParameter("description"));
                todoService.saveTodo(todo);
                 return "redirect:/todo";
            }
    }
