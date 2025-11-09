package com.shoppingcart.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "user_auth")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserAuth {

    @Id
    @Column(name = "UserName", length = 50)
    private String userName;

    @Column(name = "Password", nullable = false, length = 15)
    private String password;

    @Column(name = "Role", length = 20, nullable = false)
    private String role = "USER"; // Default role is USER
}

