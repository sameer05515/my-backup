package com.prem.swagger.config;

import io.swagger.v3.oas.models.OpenAPI;
import io.swagger.v3.oas.models.info.Info;
import io.swagger.v3.oas.models.info.License;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class SwaggerConfig {

	@Bean
	public OpenAPI swaggerDemoOpenAPI() {
		return new OpenAPI()
				.info(new Info()
						.title("swagger-demo API")
						.description("In-memory todo CRUD and OpenAPI documentation")
						.version("0.0.1")
						.license(new License().name("Apache 2.0").url("https://www.apache.org/licenses/LICENSE-2.0")));
	}
}
