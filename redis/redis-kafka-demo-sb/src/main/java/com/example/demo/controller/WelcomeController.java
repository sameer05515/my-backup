package com.example.demo.controller;

import com.example.demo.service.RedisService;
import com.example.demo.service.WelcomeService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class WelcomeController {

    private static final String WELCOME_CACHE_KEY = "cached_welcome_msg";
    private static final Long WELCOME_CACHE_TTL_SECONDS = 60L;

    private final WelcomeService welcomeService;
    private final RedisService redisService;

    public WelcomeController(WelcomeService welcomeService, RedisService redisService) {
        this.welcomeService = welcomeService;
        this.redisService = redisService;
    }

    @GetMapping("/welcome")
    public String welcome() throws InterruptedException {
        String cachedWelcomeMessage = redisService.get(WELCOME_CACHE_KEY, String.class);
        if (cachedWelcomeMessage != null) {
            return cachedWelcomeMessage;
        }

        String welcomeMessage = welcomeService.getWelcomeMessage();
        redisService.set(WELCOME_CACHE_KEY, welcomeMessage, WELCOME_CACHE_TTL_SECONDS);
        return welcomeMessage;
    }
}
