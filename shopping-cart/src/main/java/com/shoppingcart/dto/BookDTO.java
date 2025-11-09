package com.shoppingcart.dto;

import jakarta.validation.constraints.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class BookDTO {

    private Integer bookId;

    @NotNull(message = "Category ID is required")
    private Integer categoryId;

    @NotBlank(message = "Title is required")
    @Size(max = 100, message = "Title must not exceed 100 characters")
    private String title;

    @NotBlank(message = "Author is required")
    @Size(max = 200, message = "Author must not exceed 200 characters")
    private String author;

    @NotBlank(message = "Publisher is required")
    @Size(max = 200, message = "Publisher must not exceed 200 characters")
    private String publisher;

    @NotBlank(message = "Edition is required")
    @Size(max = 100, message = "Edition must not exceed 100 characters")
    private String edition;

    @NotNull(message = "Price is required")
    @DecimalMin(value = "0.0", inclusive = false, message = "Price must be greater than 0")
    private BigDecimal price;

    @NotNull(message = "Quantity is required")
    @Min(value = 0, message = "Quantity must be 0 or greater")
    private Integer quantity;

    @NotBlank(message = "Description is required")
    private String description;
}

