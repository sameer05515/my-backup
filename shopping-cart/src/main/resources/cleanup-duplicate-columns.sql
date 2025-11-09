-- Simple Cleanup Script for Duplicate Columns
-- This script removes snake_case columns that were accidentally created by Hibernate
-- Keep only PascalCase columns as defined in the original schema

USE bce_shopping_cart;

-- ============================================
-- BOOK_DETAILS TABLE
-- ============================================
-- Remove snake_case columns (keep PascalCase: BookId, CategoryId, etc.)
ALTER TABLE book_details DROP COLUMN book_id;
ALTER TABLE book_details DROP COLUMN category_id;
ALTER TABLE book_details DROP COLUMN title;
ALTER TABLE book_details DROP COLUMN author;
ALTER TABLE book_details DROP COLUMN publisher;
ALTER TABLE book_details DROP COLUMN edition;
ALTER TABLE book_details DROP COLUMN price;
ALTER TABLE book_details DROP COLUMN quantity;
ALTER TABLE book_details DROP COLUMN description;

-- ============================================
-- CATEGORY_DETAILS TABLE
-- ============================================
ALTER TABLE category_details DROP COLUMN category_id;
ALTER TABLE category_details DROP COLUMN category_name;

-- ============================================
-- ORDER_TABLE
-- ============================================
ALTER TABLE order_table DROP COLUMN order_id;
ALTER TABLE order_table DROP COLUMN user_id;
ALTER TABLE order_table DROP COLUMN total_amount;
ALTER TABLE order_table DROP COLUMN order_date;

-- ============================================
-- ORDER_DETAILS TABLE
-- ============================================
-- Remove auto-generated id column if it exists (this table uses composite key)
ALTER TABLE order_details DROP COLUMN id;
ALTER TABLE order_details DROP COLUMN order_id;
ALTER TABLE order_details DROP COLUMN book_id;
ALTER TABLE order_details DROP COLUMN quantity;

-- ============================================
-- USER_AUTH TABLE
-- ============================================
ALTER TABLE user_auth DROP COLUMN user_name;
ALTER TABLE user_auth DROP COLUMN password;

-- ============================================
-- USER_PROFILE TABLE
-- ============================================
ALTER TABLE user_profile DROP COLUMN user_name;
ALTER TABLE user_profile DROP COLUMN password;
ALTER TABLE user_profile DROP COLUMN first_name;
ALTER TABLE user_profile DROP COLUMN middle_name;
ALTER TABLE user_profile DROP COLUMN last_name;
ALTER TABLE user_profile DROP COLUMN address1;
ALTER TABLE user_profile DROP COLUMN address2;
ALTER TABLE user_profile DROP COLUMN city;
ALTER TABLE user_profile DROP COLUMN state;
ALTER TABLE user_profile DROP COLUMN pin_code;
ALTER TABLE user_profile DROP COLUMN email;
ALTER TABLE user_profile DROP COLUMN phone;

-- ============================================
-- TEMP_DETAIL TABLE
-- ============================================
ALTER TABLE temp_detail DROP COLUMN id;
ALTER TABLE temp_detail DROP COLUMN book_id;
ALTER TABLE temp_detail DROP COLUMN category_id;
ALTER TABLE temp_detail DROP COLUMN title;
ALTER TABLE temp_detail DROP COLUMN author;
ALTER TABLE temp_detail DROP COLUMN publisher;
ALTER TABLE temp_detail DROP COLUMN edition;
ALTER TABLE temp_detail DROP COLUMN price;
ALTER TABLE temp_detail DROP COLUMN quantity;
ALTER TABLE temp_detail DROP COLUMN description;

-- ============================================
-- VERIFY TABLE STRUCTURES
-- ============================================
SELECT '=== book_details structure ===' AS '';
DESCRIBE book_details;

SELECT '=== category_details structure ===' AS '';
DESCRIBE category_details;

SELECT '=== order_table structure ===' AS '';
DESCRIBE order_table;

SELECT '=== order_details structure ===' AS '';
DESCRIBE order_details;

SELECT '=== user_auth structure ===' AS '';
DESCRIBE user_auth;

SELECT '=== user_profile structure ===' AS '';
DESCRIBE user_profile;

SELECT '=== temp_detail structure ===' AS '';
DESCRIBE temp_detail;
