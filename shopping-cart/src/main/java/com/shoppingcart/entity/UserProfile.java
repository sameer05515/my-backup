package com.shoppingcart.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "user_profile")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserProfile {

    @Id
    @Column(name = "UserName", length = 50)
    private String userName;

    @Column(name = "Password", nullable = false, length = 15)
    private String password;

    @Column(name = "FirstName", nullable = false, length = 25)
    private String firstName;

    @Column(name = "MiddleName", length = 25)
    private String middleName;

    @Column(name = "LastName", nullable = false, length = 25)
    private String lastName;

    @Column(name = "Address1", nullable = false, length = 40)
    private String address1;

    @Column(name = "Address2", length = 40)
    private String address2;

    @Column(name = "City", nullable = false, length = 20)
    private String city;

    @Column(name = "State", nullable = false, length = 20)
    private String state;

    @Column(name = "PinCode", nullable = false, length = 10)
    private String pinCode;

    @Column(name = "Email", nullable = false, length = 50)
    private String email;

    @Column(name = "Phone", nullable = false, length = 12)
    private String phone;
}

