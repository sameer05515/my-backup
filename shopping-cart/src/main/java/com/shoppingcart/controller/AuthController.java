package com.shoppingcart.controller;

import com.shoppingcart.dto.LoginRequestDTO;
import com.shoppingcart.entity.UserAuth;
import com.shoppingcart.service.AuthService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

@RestController
@RequestMapping("/api/auth")
@CrossOrigin(origins = "*")
@Tag(name = "Authentication", description = "API for user authentication")
public class AuthController {

    @Autowired
    private AuthService authService;

    @Operation(summary = "User login", description = "Authenticate a user with username and password")
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Login successful"),
            @ApiResponse(responseCode = "401", description = "Invalid credentials", content = @Content)
    })
    @PostMapping("/login")
    public ResponseEntity<Map<String, Object>> login(@Valid @RequestBody LoginRequestDTO loginRequest) {
        Map<String, Object> response = new HashMap<>();
        
        Optional<UserAuth> userAuth = authService.authenticateAndGetUser(loginRequest);
        if (userAuth.isPresent()) {
            UserAuth user = userAuth.get();
            response.put("success", true);
            response.put("message", "Login successful");
            response.put("userName", user.getUserName());
            response.put("role", user.getRole() != null ? user.getRole() : "USER");
            return ResponseEntity.ok(response);
        } else {
            response.put("success", false);
            response.put("message", "Invalid username or password");
            return ResponseEntity.status(401).body(response);
        }
    }
}

