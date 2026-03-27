package com.example.demo.service;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.kafka.core.KafkaTemplate;
import org.springframework.stereotype.Service;

@Service
public class TodoEventPublisher {

    private final KafkaTemplate<String, String> kafkaTemplate;
    private final String todoTopic;

    public TodoEventPublisher(
            KafkaTemplate<String, String> kafkaTemplate,
            @Value("${app.kafka.todo-topic:todo-events}") String todoTopic
    ) {
        this.kafkaTemplate = kafkaTemplate;
        this.todoTopic = todoTopic;
    }

    public void publish(String operation, String todoId) {
        String payload = operation + ":" + todoId;
        kafkaTemplate.send(todoTopic, operation, payload);
    }
}
