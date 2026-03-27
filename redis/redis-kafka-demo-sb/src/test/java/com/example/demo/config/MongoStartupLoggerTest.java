package com.example.demo.config;

import com.mongodb.client.MongoDatabase;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.core.env.Environment;
import org.springframework.data.mongodb.core.MongoTemplate;

import java.lang.reflect.Method;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNull;
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
class MongoStartupLoggerTest {

    @Mock
    private Environment environment;

    @Mock
    private MongoTemplate mongoTemplate;

    @Mock
    private MongoDatabase mongoDatabase;

    @Test
    void runShouldUsePrimaryMongoPropertiesWhenPresent() {
        when(environment.getProperty("spring.mongodb.uri")).thenReturn("mongodb://localhost:27017/redis_kafka_demo");
        when(environment.getProperty("spring.mongodb.database")).thenReturn("redis_kafka_demo");
        when(mongoTemplate.getDb()).thenReturn(mongoDatabase);
        when(mongoDatabase.getName()).thenReturn("redis_kafka_demo");

        MongoStartupLogger logger = new MongoStartupLogger(environment, mongoTemplate);
        logger.run(null);

        verify(environment).getProperty("spring.mongodb.uri");
        verify(environment).getProperty("spring.mongodb.database");
        verify(environment, never()).getProperty("spring.data.mongodb.uri");
        verify(environment, never()).getProperty("spring.data.mongodb.database");
        verify(mongoTemplate).getDb();
        verify(mongoDatabase).getName();
    }

    @Test
    void runShouldFallbackToSpringDataMongoProperties() {
        when(environment.getProperty("spring.mongodb.uri")).thenReturn(null);
        when(environment.getProperty("spring.mongodb.database")).thenReturn(null);
        when(environment.getProperty("spring.data.mongodb.uri")).thenReturn("mongodb://localhost:27017/fallback_db");
        when(environment.getProperty("spring.data.mongodb.database")).thenReturn("fallback_db");
        when(mongoTemplate.getDb()).thenReturn(mongoDatabase);
        when(mongoDatabase.getName()).thenReturn("fallback_db");

        MongoStartupLogger logger = new MongoStartupLogger(environment, mongoTemplate);
        logger.run(null);

        verify(environment).getProperty("spring.data.mongodb.uri");
        verify(environment).getProperty("spring.data.mongodb.database");
        verify(mongoTemplate).getDb();
        verify(mongoDatabase).getName();
    }

    @Test
    void extractDbNameFromUriShouldHandleQueryString() throws Exception {
        MongoStartupLogger logger = new MongoStartupLogger(environment, mongoTemplate);
        Method method = MongoStartupLogger.class.getDeclaredMethod("extractDbNameFromUri", String.class);
        method.setAccessible(true);

        String db = (String) method.invoke(logger, "mongodb://localhost:27017/redis_kafka_demo?retryWrites=true");

        assertEquals("redis_kafka_demo", db);
    }

    @Test
    void extractDbNameFromUriShouldReturnNullWhenMissingDbName() throws Exception {
        MongoStartupLogger logger = new MongoStartupLogger(environment, mongoTemplate);
        Method method = MongoStartupLogger.class.getDeclaredMethod("extractDbNameFromUri", String.class);
        method.setAccessible(true);

        String db = (String) method.invoke(logger, "mongodb://localhost:27017/");

        assertNull(db);
    }
}
