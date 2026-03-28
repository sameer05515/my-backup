package com.prem.swagger.model;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(description = "A todo item")
public class Todo {

	@Schema(description = "Unique identifier", example = "1")
	private Long id;

	@Schema(description = "Title", example = "Buy milk")
	private String title;

	@Schema(description = "Whether the todo is completed", example = "false")
	private boolean completed;

	public Todo() {
	}

	public Todo(Long id, String title, boolean completed) {
		this.id = id;
		this.title = title;
		this.completed = completed;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public boolean isCompleted() {
		return completed;
	}

	public void setCompleted(boolean completed) {
		this.completed = completed;
	}
}
