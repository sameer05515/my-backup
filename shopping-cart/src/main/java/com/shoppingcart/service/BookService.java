package com.shoppingcart.service;

import com.shoppingcart.dto.BookDTO;
import com.shoppingcart.entity.Book;
import com.shoppingcart.repository.BookRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Collectors;

@Service
@Transactional
public class BookService {

    @Autowired
    private BookRepository bookRepository;

    public List<BookDTO> getAllBooks() {
        return bookRepository.findAll().stream()
                .map(this::convertToDTO)
                .collect(Collectors.toList());
    }

    public BookDTO getBookById(Integer bookId) {
        Book book = bookRepository.findById(bookId)
                .orElseThrow(() -> new RuntimeException("Book not found with id: " + bookId));
        return convertToDTO(book);
    }

    public List<BookDTO> getBooksByCategory(Integer categoryId) {
        return bookRepository.findByCategoryId(categoryId).stream()
                .map(this::convertToDTO)
                .collect(Collectors.toList());
    }

    public List<BookDTO> searchBooks(String title) {
        return bookRepository.findByTitleContainingIgnoreCase(title).stream()
                .map(this::convertToDTO)
                .collect(Collectors.toList());
    }

    public BookDTO createBook(BookDTO bookDTO) {
        Book book = convertToEntity(bookDTO);
        Book savedBook = bookRepository.save(book);
        return convertToDTO(savedBook);
    }

    public BookDTO updateBook(Integer bookId, BookDTO bookDTO) {
        Book existingBook = bookRepository.findById(bookId)
                .orElseThrow(() -> new RuntimeException("Book not found with id: " + bookId));
        
        existingBook.setCategoryId(bookDTO.getCategoryId());
        existingBook.setTitle(bookDTO.getTitle());
        existingBook.setAuthor(bookDTO.getAuthor());
        existingBook.setPublisher(bookDTO.getPublisher());
        existingBook.setEdition(bookDTO.getEdition());
        existingBook.setPrice(bookDTO.getPrice());
        existingBook.setQuantity(bookDTO.getQuantity());
        existingBook.setDescription(bookDTO.getDescription());
        
        Book updatedBook = bookRepository.save(existingBook);
        return convertToDTO(updatedBook);
    }

    public void deleteBook(Integer bookId) {
        if (!bookRepository.existsById(bookId)) {
            throw new RuntimeException("Book not found with id: " + bookId);
        }
        bookRepository.deleteById(bookId);
    }

    private BookDTO convertToDTO(Book book) {
        BookDTO dto = new BookDTO();
        dto.setBookId(book.getBookId());
        dto.setCategoryId(book.getCategoryId());
        dto.setTitle(book.getTitle());
        dto.setAuthor(book.getAuthor());
        dto.setPublisher(book.getPublisher());
        dto.setEdition(book.getEdition());
        dto.setPrice(book.getPrice());
        dto.setQuantity(book.getQuantity());
        dto.setDescription(book.getDescription());
        return dto;
    }

    private Book convertToEntity(BookDTO dto) {
        Book book = new Book();
        book.setBookId(dto.getBookId());
        book.setCategoryId(dto.getCategoryId());
        book.setTitle(dto.getTitle());
        book.setAuthor(dto.getAuthor());
        book.setPublisher(dto.getPublisher());
        book.setEdition(dto.getEdition());
        book.setPrice(dto.getPrice());
        book.setQuantity(dto.getQuantity());
        book.setDescription(dto.getDescription());
        return book;
    }
}

