package com.prem.swagger.dto;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(description = "Payload to create a todo")
public class TodoCreateRequest {

	@Schema(description = "Title", example = "Learn Swagger")
	private String title;

	@Schema(description = "Completed flag", example = "false")
	private Boolean completed;

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Boolean getCompleted() {
		return completed;
	}

	public void setCompleted(Boolean completed) {
		this.completed = completed;
	}
}
