package com.prem.swagger.controller;

import com.prem.swagger.dto.TodoCreateRequest;
import com.prem.swagger.dto.TodoUpdateRequest;
import com.prem.swagger.model.Todo;
import com.prem.swagger.service.TodoService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/todos")
@Tag(name = "Todos", description = "In-memory todo CRUD")
public class TodoController {

	private final TodoService todoService;

	public TodoController(TodoService todoService) {
		this.todoService = todoService;
	}

	@GetMapping
	@Operation(summary = "List all todos")
	public List<Todo> list() {
		return todoService.findAll();
	}

	@GetMapping("/{id}")
	@Operation(summary = "Get todo by id")
	public Todo get(@PathVariable Long id) {
		return todoService.findById(id);
	}

	@PostMapping
	@Operation(summary = "Create a todo")
	public ResponseEntity<Todo> create(@RequestBody TodoCreateRequest request) {
		Todo created = todoService.create(request);
		return ResponseEntity.status(HttpStatus.CREATED).body(created);
	}

	@PutMapping("/{id}")
	@Operation(summary = "Update a todo")
	public Todo update(@PathVariable Long id, @RequestBody TodoUpdateRequest request) {
		return todoService.update(id, request);
	}

	@DeleteMapping("/{id}")
	@Operation(summary = "Delete a todo")
	public ResponseEntity<Void> delete(@PathVariable Long id) {
		todoService.deleteById(id);
		return ResponseEntity.noContent().build();
	}
}
