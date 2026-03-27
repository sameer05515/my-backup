package com.example.demo.service;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import static org.mockito.Mockito.verify;

@ExtendWith(MockitoExtension.class)
class TodoCacheInvalidationConsumerTest {

    @Mock
    private RedisService redisService;

    @Test
    void consumeShouldDeleteTodosCache() {
        TodoCacheInvalidationConsumer consumer = new TodoCacheInvalidationConsumer(redisService);

        consumer.consume("DELETE:abc");

        verify(redisService).delete("cached_todos_list");
    }
}
