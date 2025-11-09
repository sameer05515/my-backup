package com.shoppingcart.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

@Entity
@Table(name = "temp_detail")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class TempDetail {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "BookId", nullable = false)
    private Integer bookId;

    @Column(name = "CategoryId", nullable = false)
    private Integer categoryId;

    @Column(name = "Title", nullable = false, columnDefinition = "TEXT")
    private String title;

    @Column(name = "Author", nullable = false, columnDefinition = "TEXT")
    private String author;

    @Column(name = "Publisher", nullable = false, columnDefinition = "TEXT")
    private String publisher;

    @Column(name = "Edition", nullable = false, columnDefinition = "TEXT")
    private String edition;

    @Column(name = "Price", nullable = false, precision = 7, scale = 2)
    private BigDecimal price;

    @Column(name = "Quantity", nullable = false)
    private Integer quantity;

    @Column(name = "Description", nullable = false, columnDefinition = "TEXT")
    private String description;
}

