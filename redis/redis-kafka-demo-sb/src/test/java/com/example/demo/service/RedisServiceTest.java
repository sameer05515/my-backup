package com.example.demo.service;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.ValueOperations;
import tools.jackson.databind.ObjectMapper;

import java.util.List;
import java.util.concurrent.TimeUnit;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.anyString;
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
class RedisServiceTest {

    @Mock
    private RedisTemplate<String, String> redisTemplate;

    @Mock
    private ValueOperations<String, String> valueOperations;

    private RedisService redisService;

    @BeforeEach
    void setUp() {
        redisService = new RedisService(redisTemplate, new ObjectMapper());
    }

    @Test
    void getShouldDeserializeValue() {
        when(redisTemplate.opsForValue()).thenReturn(valueOperations);
        when(valueOperations.get("key1")).thenReturn("\"hello\"");

        String result = redisService.get("key1", String.class);

        assertEquals("hello", result);
    }

    @Test
    void getShouldReturnNullWhenValueMissing() {
        when(redisTemplate.opsForValue()).thenReturn(valueOperations);
        when(valueOperations.get("missing")).thenReturn(null);

        String result = redisService.get("missing", String.class);

        assertNull(result);
    }

    @Test
    void getShouldReturnNullWhenRedisThrows() {
        when(redisTemplate.opsForValue()).thenReturn(valueOperations);
        when(valueOperations.get(anyString())).thenThrow(new RuntimeException("redis down"));

        String result = redisService.get("k", String.class);

        assertNull(result);
    }

    @Test
    void setShouldSerializeAndStoreWithTtl() {
        when(redisTemplate.opsForValue()).thenReturn(valueOperations);
        redisService.set("k2", List.of("a", "b"), 120L);

        verify(valueOperations).set("k2", "[\"a\",\"b\"]", 120L, TimeUnit.SECONDS);
    }

    @Test
    void getListShouldDeserializeList() {
        when(redisTemplate.opsForValue()).thenReturn(valueOperations);
        when(valueOperations.get("todos")).thenReturn("[{\"id\":\"1\",\"title\":\"t1\"}]");

        List<TestTodo> list = redisService.getList("todos", TestTodo.class);

        assertNotNull(list);
        assertEquals(1, list.size());
        assertEquals("1", list.get(0).id);
        assertEquals("t1", list.get(0).title);
    }

    @Test
    void setListShouldStoreSerializedList() {
        when(redisTemplate.opsForValue()).thenReturn(valueOperations);
        redisService.setList("todos", List.of("x", "y"), 45L);

        verify(valueOperations).set("todos", "[\"x\",\"y\"]", 45L, TimeUnit.SECONDS);
    }

    @Test
    void deleteShouldDelegateToRedisTemplate() {
        redisService.delete("k3");

        verify(redisTemplate).delete("k3");
    }

    private static class TestTodo {
        public String id;
        public String title;
    }
}
