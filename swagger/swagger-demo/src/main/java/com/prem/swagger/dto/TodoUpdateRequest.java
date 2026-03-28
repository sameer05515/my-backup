package com.prem.swagger.dto;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(description = "Payload to update a todo (all fields optional)")
public class TodoUpdateRequest {

	@Schema(description = "Title", example = "Learn OpenAPI")
	private String title;

	@Schema(description = "Completed flag", example = "true")
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
