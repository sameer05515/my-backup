package com.example.demo.service;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.kafka.core.KafkaTemplate;

import static org.mockito.Mockito.verify;

@ExtendWith(MockitoExtension.class)
class TodoEventPublisherTest {

    @Mock
    private KafkaTemplate<String, String> kafkaTemplate;

    @Test
    void publishShouldSendMessageToConfiguredTopic() {
        TodoEventPublisher publisher = new TodoEventPublisher(kafkaTemplate, "todo-events");

        publisher.publish("UPDATE", "123");

        verify(kafkaTemplate).send("todo-events", "UPDATE", "UPDATE:123");
    }
}
