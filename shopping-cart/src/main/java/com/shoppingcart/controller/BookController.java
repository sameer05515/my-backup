package com.shoppingcart.controller;

import com.shoppingcart.dto.BookDTO;
import com.shoppingcart.service.BookService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/books")
@CrossOrigin(origins = "*")
@Tag(name = "Books", description = "API for managing books in the shopping cart")
public class BookController {

    @Autowired
    private BookService bookService;

    @Operation(summary = "Get all books", description = "Retrieve a list of all available books")
    @ApiResponse(responseCode = "200", description = "Successfully retrieved list of books")
    @GetMapping
    public ResponseEntity<List<BookDTO>> getAllBooks() {
        return ResponseEntity.ok(bookService.getAllBooks());
    }

    @Operation(summary = "Get book by ID", description = "Retrieve a specific book by its ID")
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Book found"),
            @ApiResponse(responseCode = "404", description = "Book not found", content = @Content)
    })
    @GetMapping("/{bookId}")
    public ResponseEntity<BookDTO> getBookById(
            @Parameter(description = "ID of the book to retrieve") @PathVariable Integer bookId) {
        return ResponseEntity.ok(bookService.getBookById(bookId));
    }

    @Operation(summary = "Get books by category", description = "Retrieve all books belonging to a specific category")
    @ApiResponse(responseCode = "200", description = "Successfully retrieved books by category")
    @GetMapping("/category/{categoryId}")
    public ResponseEntity<List<BookDTO>> getBooksByCategory(
            @Parameter(description = "Category ID to filter books") @PathVariable Integer categoryId) {
        return ResponseEntity.ok(bookService.getBooksByCategory(categoryId));
    }

    @Operation(summary = "Search books", description = "Search for books by title (case-insensitive partial match)")
    @ApiResponse(responseCode = "200", description = "Successfully retrieved matching books")
    @GetMapping("/search")
    public ResponseEntity<List<BookDTO>> searchBooks(
            @Parameter(description = "Title or part of title to search for") @RequestParam String title) {
        return ResponseEntity.ok(bookService.searchBooks(title));
    }

    @Operation(summary = "Create a new book", description = "Add a new book to the catalog (Admin only)")
    @ApiResponses(value = {
            @ApiResponse(responseCode = "201", description = "Book created successfully",
                    content = @Content(schema = @Schema(implementation = BookDTO.class))),
            @ApiResponse(responseCode = "400", description = "Invalid input", content = @Content),
            @ApiResponse(responseCode = "403", description = "Access denied - Admin role required", content = @Content)
    })
    @com.shoppingcart.annotation.RequiresRole("ADMIN")
    @PostMapping
    public ResponseEntity<BookDTO> createBook(@Valid @RequestBody BookDTO bookDTO) {
        return ResponseEntity.status(HttpStatus.CREATED).body(bookService.createBook(bookDTO));
    }

    @Operation(summary = "Update a book", description = "Update an existing book's information (Admin only)")
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Book updated successfully"),
            @ApiResponse(responseCode = "404", description = "Book not found", content = @Content),
            @ApiResponse(responseCode = "400", description = "Invalid input", content = @Content),
            @ApiResponse(responseCode = "403", description = "Access denied - Admin role required", content = @Content)
    })
    @com.shoppingcart.annotation.RequiresRole("ADMIN")
    @PutMapping("/{bookId}")
    public ResponseEntity<BookDTO> updateBook(
            @Parameter(description = "ID of the book to update") @PathVariable Integer bookId,
            @Valid @RequestBody BookDTO bookDTO) {
        return ResponseEntity.ok(bookService.updateBook(bookId, bookDTO));
    }

    @Operation(summary = "Delete a book", description = "Remove a book from the catalog (Admin only)")
    @ApiResponses(value = {
            @ApiResponse(responseCode = "204", description = "Book deleted successfully"),
            @ApiResponse(responseCode = "404", description = "Book not found", content = @Content),
            @ApiResponse(responseCode = "403", description = "Access denied - Admin role required", content = @Content)
    })
    @com.shoppingcart.annotation.RequiresRole("ADMIN")
    @DeleteMapping("/{bookId}")
    public ResponseEntity<Void> deleteBook(
            @Parameter(description = "ID of the book to delete") @PathVariable Integer bookId) {
        bookService.deleteBook(bookId);
        return ResponseEntity.noContent().build();
    }
}

