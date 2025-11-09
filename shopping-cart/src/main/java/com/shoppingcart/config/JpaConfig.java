package com.shoppingcart.config;

import org.hibernate.dialect.MySQLDialect;
import org.springframework.boot.autoconfigure.orm.jpa.HibernatePropertiesCustomizer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.Map;

@Configuration
public class JpaConfig {

    @Bean
    public HibernatePropertiesCustomizer hibernatePropertiesCustomizer() {
        return (Map<String, Object> hibernateProperties) -> {
            hibernateProperties.put("hibernate.dialect", MySQLDialect.class.getName());
            // Use custom naming strategy to preserve exact column names
            hibernateProperties.put("hibernate.physical_naming_strategy", 
                CustomPhysicalNamingStrategy.class.getName());
        };
    }
}

