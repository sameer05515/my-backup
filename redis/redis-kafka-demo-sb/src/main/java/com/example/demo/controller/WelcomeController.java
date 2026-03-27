package com.example.demo.controller;

import com.example.demo.service.RedisService;
import com.example.demo.service.WelcomeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class WelcomeController {

    @Autowired
    private WelcomeService welcomeService;

    @Autowired
    private RedisService redisService;

    @GetMapping("/welcome")
    public String welcome() {
        try {
            String cachedWelcomeMessage = redisService.get("cached_welcome_msg", String.class);
            if (cachedWelcomeMessage != null) {
                return cachedWelcomeMessage;
            } else {
                String welcomeMessage = welcomeService.getWelcomeMessage();
                redisService.set("cached_welcome_msg", welcomeMessage, 60L);
                return welcomeMessage;
            }
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }
}
