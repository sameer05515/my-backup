package com.example.demo.service;

import lombok.extern.slf4j.Slf4j;
import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.stereotype.Service;

@Service
@Slf4j
public class TodoCacheInvalidationConsumer {

    private static final String TODOS_CACHE_KEY = "cached_todos_list";

    private final RedisService redisService;

    public TodoCacheInvalidationConsumer(RedisService redisService) {
        this.redisService = redisService;
    }

    @KafkaListener(topics = "${app.kafka.todo-topic:todo-events}")
    public void consume(String message) {
        redisService.delete(TODOS_CACHE_KEY);
        log.info("Todo event received: {}. Cache invalidated for key={}", message, TODOS_CACHE_KEY);
    }
}
