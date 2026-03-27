package com.example.demo.config;

import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Component;

@Component
@Slf4j
public class MongoStartupLogger implements ApplicationRunner {

    private final Environment environment;
    private final MongoTemplate mongoTemplate;

    public MongoStartupLogger(Environment environment, MongoTemplate mongoTemplate) {
        this.environment = environment;
        this.mongoTemplate = mongoTemplate;
    }

    @Override
    public void run(ApplicationArguments args) {
        String uri = environment.getProperty("spring.mongodb.uri");
        if (uri == null || uri.isBlank()) {
            uri = environment.getProperty("spring.data.mongodb.uri");
        }

        String database = environment.getProperty("spring.mongodb.database");
        if (database == null || database.isBlank()) {
            database = environment.getProperty("spring.data.mongodb.database");
        }

        if ((database == null || database.isBlank()) && uri != null && !uri.isBlank()) {
            database = extractDbNameFromUri(uri);
        }

        log.info("Mongo URI in use: {}", uri != null ? uri : "<not-set>");
        log.info("Mongo database in use: {}", (database != null && !database.isBlank()) ? database : "<not-set>");
        log.info("MongoTemplate resolved database: {}", mongoTemplate.getDb().getName());
    }

    private String extractDbNameFromUri(String uri) {
        int slash = uri.lastIndexOf('/');
        if (slash < 0 || slash == uri.length() - 1) {
            return null;
        }
        String tail = uri.substring(slash + 1);
        int queryIndex = tail.indexOf('?');
        return queryIndex >= 0 ? tail.substring(0, queryIndex) : tail;
    }
}
