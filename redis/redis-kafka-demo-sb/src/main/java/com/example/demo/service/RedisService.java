package com.example.demo.service;

import lombok.extern.slf4j.Slf4j;
import org.springframework.data.redis.core.ValueOperations;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;
import tools.jackson.databind.JavaType;
import tools.jackson.databind.ObjectMapper;

import java.util.List;
import java.util.concurrent.TimeUnit;

@Service
@Slf4j
public class RedisService {

    private final RedisTemplate<String, String> redisTemplate;
    private final ObjectMapper objectMapper;

    public RedisService(RedisTemplate<String, String> redisTemplate, ObjectMapper objectMapper) {
        this.redisTemplate = redisTemplate;
        this.objectMapper = objectMapper;
    }

    public <T> T get(String key, Class<T> entityClass) {
        try {
            ValueOperations<String, String> ops = redisTemplate.opsForValue();
            String value = ops.get(key);
            if (value == null) {
                return null;
            }
            return objectMapper.readValue(value, entityClass);
        } catch (Exception e) {
            log.error("Redis get failed for key={}", key, e);
            return null;
        }
    }

    public void set(String key, Object o, Long ttl) {
        try {
            String jsonValue = objectMapper.writeValueAsString(o);
            redisTemplate.opsForValue().set(key, jsonValue, ttl, TimeUnit.SECONDS);
        } catch (Exception e) {
            log.error("Redis set failed for key={}", key, e);
        }
    }

    public <T> List<T> getList(String key, Class<T> elementClass) {
        try {
            String value = redisTemplate.opsForValue().get(key);
            if (value == null) {
                return null;
            }
            JavaType listType = objectMapper.getTypeFactory().constructCollectionType(List.class, elementClass);
            return objectMapper.readValue(value, listType);
        } catch (Exception e) {
            log.error("Redis getList failed for key={}", key, e);
            return null;
        }
    }

    public void setList(String key, List<?> list, Long ttl) {
        set(key, list, ttl);
    }

    public void delete(String key) {
        try {
            redisTemplate.delete(key);
        } catch (Exception e) {
            log.error("Redis delete failed for key={}", key, e);
        }
    }

}
