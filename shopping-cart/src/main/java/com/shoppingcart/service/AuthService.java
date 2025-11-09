package com.shoppingcart.service;

import com.shoppingcart.dto.LoginRequestDTO;
import com.shoppingcart.entity.UserAuth;
import com.shoppingcart.repository.UserAuthRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class AuthService {

    @Autowired
    private UserAuthRepository userAuthRepository;

    public boolean authenticate(LoginRequestDTO loginRequest) {
        return userAuthRepository.findByUserNameAndPassword(
                loginRequest.getUserName(),
                loginRequest.getPassword()
        ).isPresent();
    }

    public Optional<UserAuth> authenticateAndGetUser(LoginRequestDTO loginRequest) {
        return userAuthRepository.findByUserNameAndPassword(
                loginRequest.getUserName(),
                loginRequest.getPassword()
        );
    }

    public boolean validateUser(String userName, String password) {
        return userAuthRepository.findByUserNameAndPassword(userName, password).isPresent();
    }
}

