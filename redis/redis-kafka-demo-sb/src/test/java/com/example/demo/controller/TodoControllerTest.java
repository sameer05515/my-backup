package com.example.demo.controller;

import com.example.demo.dto.TodoCreateRequest;
import com.example.demo.dto.TodoUpdateRequest;
import com.example.demo.model.Todo;
import com.example.demo.service.RedisService;
import com.example.demo.service.TodoService;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
class TodoControllerTest {

    @Mock
    private TodoService todoService;

    @Mock
    private RedisService redisService;

    @InjectMocks
    private TodoController todoController;

    @Test
    void getAllTodosShouldReturnCachedListWhenPresent() {
        Todo cached = new Todo();
        cached.setId("1");
        cached.setTitle("cached");

        when(redisService.getList("cached_todos_list", Todo.class)).thenReturn(List.of(cached));

        ResponseEntity<List<Todo>> response = todoController.getAllTodos();

        assertEquals(HttpStatus.OK, response.getStatusCode());
        assertNotNull(response.getBody());
        assertEquals(1, response.getBody().size());
        assertEquals("cached", response.getBody().get(0).getTitle());
        verify(todoService, never()).getAllTodos();
    }

    @Test
    void getAllTodosShouldLoadAndCacheOnMiss() {
        Todo fromDb = new Todo();
        fromDb.setId("2");
        fromDb.setTitle("db");

        when(redisService.getList("cached_todos_list", Todo.class)).thenReturn(null);
        when(todoService.getAllTodos()).thenReturn(List.of(fromDb));

        ResponseEntity<List<Todo>> response = todoController.getAllTodos();

        assertEquals(HttpStatus.OK, response.getStatusCode());
        assertNotNull(response.getBody());
        assertEquals(1, response.getBody().size());
        verify(redisService).setList("cached_todos_list", List.of(fromDb), 180L);
    }

    @Test
    void createTodoShouldReturnCreated() {
        TodoCreateRequest request = new TodoCreateRequest();
        request.setTitle("new");

        Todo created = new Todo();
        created.setId("3");
        created.setTitle("new");

        when(todoService.createTodo(request)).thenReturn(created);

        ResponseEntity<Todo> response = todoController.createTodo(request);

        assertEquals(HttpStatus.CREATED, response.getStatusCode());
        assertNotNull(response.getBody());
        assertEquals("3", response.getBody().getId());
    }

    @Test
    void updateTodoShouldDelegateToService() {
        TodoUpdateRequest request = new TodoUpdateRequest();
        request.setTitle("updated");

        Todo updated = new Todo();
        updated.setId("10");
        updated.setTitle("updated");

        when(todoService.updateTodo("10", request)).thenReturn(updated);

        Todo response = todoController.updateTodo("10", request);

        assertEquals("updated", response.getTitle());
    }

    @Test
    void deleteTodoShouldReturnNoContent() {
        ResponseEntity<Void> response = todoController.deleteTodo("11");

        assertEquals(HttpStatus.NO_CONTENT, response.getStatusCode());
        verify(todoService).deleteTodo("11");
    }
}
