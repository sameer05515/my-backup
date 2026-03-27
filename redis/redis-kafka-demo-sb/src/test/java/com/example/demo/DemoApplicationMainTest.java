package com.example.demo;

import org.junit.jupiter.api.Test;
import org.mockito.MockedStatic;
import org.mockito.Mockito;
import org.springframework.boot.SpringApplication;

class DemoApplicationMainTest {

    @Test
    void mainShouldDelegateToSpringApplicationRun() {
        String[] args = new String[]{"--server.port=9090"};

        try (MockedStatic<SpringApplication> mocked = Mockito.mockStatic(SpringApplication.class)) {
            DemoApplication.main(args);

            mocked.verify(() -> SpringApplication.run(DemoApplication.class, args));
        }
    }
}
