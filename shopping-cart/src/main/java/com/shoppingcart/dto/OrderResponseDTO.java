package com.shoppingcart.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class OrderResponseDTO {

    private Integer orderId;
    private String userId;
    private BigDecimal totalAmount;
    private String orderDate;
    private List<OrderItemResponseDTO> items;
}

