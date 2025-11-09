package com.shoppingcart.interceptor;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

@Component
public class AuthInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        // Skip authentication check for API endpoints, login page, and static resources
        String requestURI = request.getRequestURI();
        
        if (requestURI.startsWith("/api/") ||
            requestURI.startsWith("/swagger-ui") ||
            requestURI.startsWith("/api-docs") ||
            requestURI.startsWith("/redoc") ||
            requestURI.equals("/login") ||
            requestURI.startsWith("/css/") ||
            requestURI.startsWith("/js/") ||
            requestURI.startsWith("/error")) {
            return true;
        }

        HttpSession session = request.getSession(false);
        boolean isLoggedIn = session != null && session.getAttribute("userName") != null;

        if (!isLoggedIn) {
            response.sendRedirect("/login");
            return false;
        }

        return true;
    }
}

