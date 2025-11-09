package com.shoppingcart.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

@Entity
@Table(name = "book_details")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Book {

    @Id
    @Column(name = "BookId")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer bookId;

    @Column(name = "CategoryId", nullable = false)
    private Integer categoryId;

    @Column(name = "Title", nullable = false, length = 100)
    private String title;

    @Column(name = "Author", nullable = false, length = 200)
    private String author;

    @Column(name = "Publisher", nullable = false, length = 200)
    private String publisher;

    @Column(name = "Edition", nullable = false, length = 100)
    private String edition;

    @Column(name = "Price", nullable = false, precision = 7, scale = 2)
    private BigDecimal price;

    @Column(name = "Quantity", nullable = false)
    private Integer quantity;

    @Column(name = "Description", nullable = false, columnDefinition = "TEXT")
    private String description;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "CategoryId", insertable = false, updatable = false)
    private Category category;
}

