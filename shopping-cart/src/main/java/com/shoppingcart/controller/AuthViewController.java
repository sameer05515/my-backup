package com.shoppingcart.controller;

import com.shoppingcart.dto.LoginRequestDTO;
import com.shoppingcart.entity.UserAuth;
import com.shoppingcart.service.AuthService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.Optional;

@Controller
public class AuthViewController {

    @Autowired
    private AuthService authService;

    @PostMapping("/login")
    public String handleLogin(@RequestParam String userName, 
                              @RequestParam String password,
                              HttpSession session,
                              RedirectAttributes redirectAttributes) {
        LoginRequestDTO loginRequest = new LoginRequestDTO();
        loginRequest.setUserName(userName);
        loginRequest.setPassword(password);

        Optional<UserAuth> userAuth = authService.authenticateAndGetUser(loginRequest);
        if (userAuth.isPresent()) {
            UserAuth user = userAuth.get();
            session.setAttribute("userName", userName);
            session.setAttribute("userRole", user.getRole() != null ? user.getRole() : "USER");
            session.setAttribute("loggedIn", true);
            return "redirect:/";
        } else {
            redirectAttributes.addFlashAttribute("error", "Invalid username or password");
            return "redirect:/login";
        }
    }
}

