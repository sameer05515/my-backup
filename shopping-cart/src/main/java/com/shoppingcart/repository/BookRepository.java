package com.shoppingcart.repository;

import com.shoppingcart.entity.Book;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BookRepository extends JpaRepository<Book, Integer> {
    List<Book> findByCategoryId(Integer categoryId);
    List<Book> findByTitleContainingIgnoreCase(String title);
}

