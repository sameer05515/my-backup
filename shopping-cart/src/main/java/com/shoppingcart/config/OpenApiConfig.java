package com.shoppingcart.config;

import io.swagger.v3.oas.models.OpenAPI;
import io.swagger.v3.oas.models.info.Contact;
import io.swagger.v3.oas.models.info.Info;
import io.swagger.v3.oas.models.info.License;
import io.swagger.v3.oas.models.servers.Server;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.List;

@Configuration
public class OpenApiConfig {

    @Bean
    public OpenAPI shoppingCartOpenAPI() {
        Server devServer = new Server();
        devServer.setUrl("http://localhost:8080");
        devServer.setDescription("Development Server");

        Server prodServer = new Server();
        prodServer.setUrl("https://api.example.com");
        prodServer.setDescription("Production Server");

        Contact contact = new Contact();
        contact.setEmail("premendra.bce05515@gmail.com");
        contact.setName("Shopping Cart API Support");

        License license = new License()
                .name("MIT License")
                .url("https://opensource.org/licenses/MIT");

        Info info = new Info()
                .title("Shopping Cart API")
                .version("1.0.0")
                .contact(contact)
                .description("Comprehensive REST API for Shopping Cart Application. " +
                        "This API provides endpoints for managing books, categories, orders, and user authentication. " +
                        "Use Swagger UI for interactive testing or Redoc for beautiful documentation.")
                .termsOfService("https://example.com/terms")
                .license(license);

        return new OpenAPI()
                .info(info)
                .servers(List.of(devServer, prodServer));
    }
}

