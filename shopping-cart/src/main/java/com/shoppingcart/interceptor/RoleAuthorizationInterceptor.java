package com.shoppingcart.interceptor;

import com.shoppingcart.annotation.RequiresRole;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Component;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerInterceptor;

import java.util.Arrays;

@Component
public class RoleAuthorizationInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        // Only check for method-level annotations
        if (!(handler instanceof HandlerMethod)) {
            return true;
        }

        HandlerMethod handlerMethod = (HandlerMethod) handler;
        RequiresRole requiresRole = handlerMethod.getMethodAnnotation(RequiresRole.class);

        // If no role requirement, allow access
        if (requiresRole == null) {
            // Check class-level annotation
            requiresRole = handlerMethod.getBeanType().getAnnotation(RequiresRole.class);
            if (requiresRole == null) {
                return true;
            }
        }

        HttpSession session = request.getSession(false);
        if (session == null) {
            response.sendError(HttpServletResponse.SC_UNAUTHORIZED, "Authentication required");
            return false;
        }

        String userRole = (String) session.getAttribute("userRole");
        if (userRole == null) {
            response.sendError(HttpServletResponse.SC_FORBIDDEN, "Access denied: No role assigned");
            return false;
        }

        String[] allowedRoles = requiresRole.value();
        boolean hasAccess = Arrays.asList(allowedRoles).contains(userRole);

        if (!hasAccess) {
            response.sendError(HttpServletResponse.SC_FORBIDDEN, 
                "Access denied: Required role(s) " + Arrays.toString(allowedRoles));
            return false;
        }

        return true;
    }
}

