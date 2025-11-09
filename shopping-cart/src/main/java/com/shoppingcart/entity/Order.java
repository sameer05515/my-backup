package com.shoppingcart.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

@Entity
@Table(name = "order_table")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Order {

    @Id
    @Column(name = "OrderId")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer orderId;

    @Column(name = "UserId", nullable = false, length = 50)
    private String userId;

    @Column(name = "TotalAmount", nullable = false, precision = 15, scale = 2)
    private BigDecimal totalAmount;

    @Column(name = "OrderDate", nullable = false, length = 8)
    private String orderDate;
}

