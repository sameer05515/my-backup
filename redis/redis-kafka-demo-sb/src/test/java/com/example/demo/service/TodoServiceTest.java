package com.example.demo.service;

import com.example.demo.dto.TodoCreateRequest;
import com.example.demo.dto.TodoUpdateRequest;
import com.example.demo.model.Todo;
import com.example.demo.repository.TodoRepository;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.web.server.ResponseStatusException;

import java.util.Optional;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
class TodoServiceTest {

    @Mock
    private TodoRepository todoRepository;

    @Mock
    private RedisService redisService;

    @InjectMocks
    private TodoService todoService;

    @Test
    void createTodoShouldTrimTitleAndInvalidateCache() {
        TodoCreateRequest request = new TodoCreateRequest();
        request.setTitle("  Learn Redis  ");
        request.setCompleted(true);

        when(todoRepository.save(any(Todo.class))).thenAnswer(invocation -> invocation.getArgument(0));

        Todo saved = todoService.createTodo(request);

        assertEquals("Learn Redis", saved.getTitle());
        assertTrue(saved.isCompleted());
        assertNotNull(saved.getCreatedAt());
        assertNotNull(saved.getUpdatedAt());
        verify(redisService).delete("cached_todos_list");
    }

    @Test
    void createTodoShouldRejectBlankTitle() {
        TodoCreateRequest request = new TodoCreateRequest();
        request.setTitle("   ");

        ResponseStatusException ex = assertThrows(ResponseStatusException.class, () -> todoService.createTodo(request));
        assertEquals("400 BAD_REQUEST \"Title is required\"", ex.getMessage());

        verify(todoRepository, never()).save(any(Todo.class));
        verify(redisService, never()).delete(anyString());
    }

    @Test
    void updateTodoShouldUpdateFieldsAndInvalidateCache() {
        Todo existing = new Todo();
        existing.setId("id-1");
        existing.setTitle("Old");
        existing.setCompleted(false);

        TodoUpdateRequest request = new TodoUpdateRequest();
        request.setTitle("  New  ");
        request.setCompleted(true);

        when(todoRepository.findById("id-1")).thenReturn(Optional.of(existing));
        when(todoRepository.save(any(Todo.class))).thenAnswer(invocation -> invocation.getArgument(0));

        Todo updated = todoService.updateTodo("id-1", request);

        assertEquals("New", updated.getTitle());
        assertTrue(updated.isCompleted());
        assertNotNull(updated.getUpdatedAt());
        verify(redisService).delete("cached_todos_list");
    }

    @Test
    void deleteTodoShouldThrowWhenNotFound() {
        when(todoRepository.existsById("missing")).thenReturn(false);

        ResponseStatusException ex = assertThrows(ResponseStatusException.class, () -> todoService.deleteTodo("missing"));
        assertEquals("404 NOT_FOUND \"Todo not found\"", ex.getMessage());

        verify(todoRepository, never()).deleteById(anyString());
        verify(redisService, never()).delete(anyString());
    }

    @Test
    void deleteTodoShouldDeleteAndInvalidateCache() {
        when(todoRepository.existsById("id-2")).thenReturn(true);

        todoService.deleteTodo("id-2");

        verify(todoRepository).deleteById("id-2");
        verify(redisService).delete("cached_todos_list");
    }
}
