package com.example.demo.service;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;
import tools.jackson.databind.ObjectMapper;

import java.util.concurrent.TimeUnit;

@Service
@Slf4j
public class RedisService {

    @Autowired
    private RedisTemplate<String, String> redisTemplate;

    public <T> T get(String key, Class<T> entityClass) {
        try {
            String value = redisTemplate.opsForValue().get(key);
            if (value == null) {
                return null;
            }
            ObjectMapper mapper = new ObjectMapper();
            return mapper.readValue(value, entityClass);
        } catch (Exception e) {
            log.error("Exception ", e);
            return null;
        }
    }

    public void set(String key, Object o, Long ttl) {
        try {
            ObjectMapper objectMapper = new ObjectMapper();
            String jsonValue = objectMapper.writeValueAsString(o);
            redisTemplate.opsForValue().set(key, jsonValue, ttl, TimeUnit.SECONDS);
        } catch (Exception e) {
            log.error("Exception ", e);
        }
    }

}
