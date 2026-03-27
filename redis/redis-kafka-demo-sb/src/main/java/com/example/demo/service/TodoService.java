package com.example.demo.service;

import com.example.demo.dto.TodoCreateRequest;
import com.example.demo.dto.TodoUpdateRequest;
import com.example.demo.model.Todo;
import com.example.demo.repository.TodoRepository;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.server.ResponseStatusException;

import java.time.Instant;
import java.util.List;

@Service
public class TodoService {

    private final TodoRepository todoRepository;
    private final TodoEventPublisher todoEventPublisher;

    public TodoService(TodoRepository todoRepository, TodoEventPublisher todoEventPublisher) {
        this.todoRepository = todoRepository;
        this.todoEventPublisher = todoEventPublisher;
    }

    public List<Todo> getAllTodos() {
        return todoRepository.findAll();
    }

    public Todo getTodoById(String id) {
        return todoRepository.findById(id)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Todo not found"));
    }

    public Todo createTodo(TodoCreateRequest request) {
        if (request.getTitle() == null || request.getTitle().trim().isEmpty()) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Title is required");
        }

        Todo todo = new Todo();
        todo.setTitle(request.getTitle().trim());
        todo.setCompleted(Boolean.TRUE.equals(request.getCompleted()));
        todo.setCreatedAt(Instant.now());
        todo.setUpdatedAt(Instant.now());

        Todo savedTodo = todoRepository.save(todo);
        todoEventPublisher.publish("CREATE", savedTodo.getId());

        return savedTodo;
    }

    public Todo updateTodo(String id, TodoUpdateRequest request) {
        Todo todo = getTodoById(id);

        if (request.getTitle() != null) {
            String title = request.getTitle().trim();
            if (title.isEmpty()) {
                throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Title must not be blank");
            }
            todo.setTitle(title);
        }

        if (request.getCompleted() != null) {
            todo.setCompleted(request.getCompleted());
        }

        todo.setUpdatedAt(Instant.now());
        Todo updatedTodo = todoRepository.save(todo);
        todoEventPublisher.publish("UPDATE", updatedTodo.getId());

        return updatedTodo;
    }

    public void deleteTodo(String id) {
        if (!todoRepository.existsById(id)) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Todo not found");
        }
        todoRepository.deleteById(id);
        todoEventPublisher.publish("DELETE", id);
    }
}
