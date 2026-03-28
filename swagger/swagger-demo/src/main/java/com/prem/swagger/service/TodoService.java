package com.prem.swagger.service;

import com.prem.swagger.dto.TodoCreateRequest;
import com.prem.swagger.dto.TodoUpdateRequest;
import com.prem.swagger.model.Todo;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.server.ResponseStatusException;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;

@Service
public class TodoService {

	private final Map<Long, Todo> todos = new ConcurrentHashMap<>();
	private final AtomicLong idSequence = new AtomicLong(1);

	public List<Todo> findAll() {
		return new ArrayList<>(todos.values());
	}

	public Todo findById(Long id) {
		Todo todo = todos.get(id);
		if (todo == null) {
			throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Todo not found");
		}
		return todo;
	}

	public Todo create(TodoCreateRequest request) {
		if (request.getTitle() == null || request.getTitle().trim().isEmpty()) {
			throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Title is required");
		}
		long id = idSequence.getAndIncrement();
		boolean completed = Boolean.TRUE.equals(request.getCompleted());
		Todo todo = new Todo(id, request.getTitle().trim(), completed);
		todos.put(id, todo);
		return todo;
	}

	public Todo update(Long id, TodoUpdateRequest request) {
		Todo todo = findById(id);
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
		return todo;
	}

	public void deleteById(Long id) {
		if (todos.remove(id) == null) {
			throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Todo not found");
		}
	}
}
