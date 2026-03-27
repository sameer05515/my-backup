package com.example.demo.controller;

import com.example.demo.dto.TodoCreateRequest;
import com.example.demo.dto.TodoUpdateRequest;
import com.example.demo.model.Todo;
import com.example.demo.service.RedisService;
import com.example.demo.service.TodoService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/todos")
public class TodoController {

    private final TodoService todoService;
    private final RedisService redisService;

    public TodoController(TodoService todoService, RedisService redisService) {
        this.todoService = todoService;
        this.redisService = redisService;
    }

    private static final String TODOS_CACHE_KEY = "cached_todos_list";
    private static final Long TODOS_CACHE_TTL_SECONDS = 180L;

    @GetMapping
    public ResponseEntity<List<Todo>> getAllTodos() {
        List<Todo> cachedTodos = redisService.getList(TODOS_CACHE_KEY, Todo.class);
        if (cachedTodos != null && !cachedTodos.isEmpty()) {
            return ResponseEntity.ok(cachedTodos);
        }

        List<Todo> todos = todoService.getAllTodos();
        if (todos != null && !todos.isEmpty()) {
            redisService.setList(TODOS_CACHE_KEY, todos, TODOS_CACHE_TTL_SECONDS);
        }
        return ResponseEntity.ok(todos);
    }

    @GetMapping("/{id}")
    public Todo getTodoById(@PathVariable String id) {
        return todoService.getTodoById(id);
    }

    @PostMapping
    public ResponseEntity<Todo> createTodo(@RequestBody TodoCreateRequest request) {
        Todo created = todoService.createTodo(request);
        return ResponseEntity.status(HttpStatus.CREATED).body(created);
    }

    @PutMapping("/{id}")
    public Todo updateTodo(@PathVariable String id, @RequestBody TodoUpdateRequest request) {
        return todoService.updateTodo(id, request);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteTodo(@PathVariable String id) {
        todoService.deleteTodo(id);
        return ResponseEntity.noContent().build();
    }
}
