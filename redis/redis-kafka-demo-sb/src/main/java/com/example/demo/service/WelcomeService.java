package com.example.demo.service;

import org.springframework.stereotype.Service;

import java.util.Date;

@Service
public class WelcomeService {

    public String getWelcomeMessage() throws InterruptedException {

        Thread.sleep(4000);
        return "Welcome to the Spring Boot application! - " + new Date().toString();
    }
}
