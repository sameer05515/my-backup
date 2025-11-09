package com.shoppingcart.config;

import com.shoppingcart.interceptor.AuthInterceptor;
import com.shoppingcart.interceptor.RoleAuthorizationInterceptor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebMvcConfig implements WebMvcConfigurer {

    @Autowired
    private AuthInterceptor authInterceptor;

    @Autowired
    private RoleAuthorizationInterceptor roleAuthorizationInterceptor;

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        // Authentication interceptor for view pages
        registry.addInterceptor(authInterceptor)
                .addPathPatterns("/**")
                .excludePathPatterns(
                        "/login",
                        "/api/**",
                        "/swagger-ui/**",
                        "/api-docs/**",
                        "/redoc**",
                        "/css/**",
                        "/js/**",
                        "/error"
                );

        // Role-based authorization interceptor for API endpoints
        registry.addInterceptor(roleAuthorizationInterceptor)
                .addPathPatterns("/api/**")
                .excludePathPatterns(
                        "/api/auth/**",
                        "/swagger-ui/**",
                        "/api-docs/**",
                        "/redoc**"
                );
    }
}

