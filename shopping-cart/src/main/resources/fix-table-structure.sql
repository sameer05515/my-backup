-- Fix Table Structure - Remove Duplicate Columns
-- This script removes snake_case columns created by Hibernate and keeps PascalCase columns
-- Run this script to clean up your database tables

USE bce_shopping_cart;

-- Function to check if column exists and drop it safely
-- Note: MySQL doesn't support DROP COLUMN IF EXISTS directly, so we'll use a stored procedure approach
-- or manual checks

-- For book_details table
SET @dbname = DATABASE();
SET @tablename = 'book_details';
SET @preparedStatement = (SELECT IF(
  (
    SELECT COUNT(*) FROM INFORMATION_SCHEMA.COLUMNS
    WHERE
      (table_name = @tablename)
      AND (table_schema = @dbname)
      AND (column_name = 'book_id')
  ) > 0,
  'ALTER TABLE book_details DROP COLUMN book_id;',
  'SELECT "Column book_id does not exist in book_details";'
));
PREPARE alterIfExists FROM @preparedStatement;
EXECUTE alterIfExists;
DEALLOCATE PREPARE alterIfExists;

-- Repeat for other snake_case columns in book_details
SET @preparedStatement = (SELECT IF(
  (SELECT COUNT(*) FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = 'book_details' AND table_schema = DATABASE() AND column_name = 'category_id') > 0,
  'ALTER TABLE book_details DROP COLUMN category_id;',
  'SELECT "Column category_id does not exist";'
));
PREPARE alterIfExists FROM @preparedStatement;
EXECUTE alterIfExists;
DEALLOCATE PREPARE alterIfExists;

-- For category_details table
SET @preparedStatement = (SELECT IF(
  (SELECT COUNT(*) FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = 'category_details' AND table_schema = DATABASE() AND column_name = 'category_id') > 0,
  'ALTER TABLE category_details DROP COLUMN category_id;',
  'SELECT "Column category_id does not exist in category_details";'
));
PREPARE alterIfExists FROM @preparedStatement;
EXECUTE alterIfExists;
DEALLOCATE PREPARE alterIfExists;

SET @preparedStatement = (SELECT IF(
  (SELECT COUNT(*) FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = 'category_details' AND table_schema = DATABASE() AND column_name = 'category_name') > 0,
  'ALTER TABLE category_details DROP COLUMN category_name;',
  'SELECT "Column category_name does not exist";'
));
PREPARE alterIfExists FROM @preparedStatement;
EXECUTE alterIfExists;
DEALLOCATE PREPARE alterIfExists;

-- For order_table
SET @preparedStatement = (SELECT IF(
  (SELECT COUNT(*) FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = 'order_table' AND table_schema = DATABASE() AND column_name = 'order_id') > 0,
  'ALTER TABLE order_table DROP COLUMN order_id;',
  'SELECT "Column order_id does not exist in order_table";'
));
PREPARE alterIfExists FROM @preparedStatement;
EXECUTE alterIfExists;
DEALLOCATE PREPARE alterIfExists;

SET @preparedStatement = (SELECT IF(
  (SELECT COUNT(*) FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = 'order_table' AND table_schema = DATABASE() AND column_name = 'user_id') > 0,
  'ALTER TABLE order_table DROP COLUMN user_id;',
  'SELECT "Column user_id does not exist";'
));
PREPARE alterIfExists FROM @preparedStatement;
EXECUTE alterIfExists;
DEALLOCATE PREPARE alterIfExists;

SET @preparedStatement = (SELECT IF(
  (SELECT COUNT(*) FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = 'order_table' AND table_schema = DATABASE() AND column_name = 'total_amount') > 0,
  'ALTER TABLE order_table DROP COLUMN total_amount;',
  'SELECT "Column total_amount does not exist";'
));
PREPARE alterIfExists FROM @preparedStatement;
EXECUTE alterIfExists;
DEALLOCATE PREPARE alterIfExists;

SET @preparedStatement = (SELECT IF(
  (SELECT COUNT(*) FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = 'order_table' AND table_schema = DATABASE() AND column_name = 'order_date') > 0,
  'ALTER TABLE order_table DROP COLUMN order_date;',
  'SELECT "Column order_date does not exist";'
));
PREPARE alterIfExists FROM @preparedStatement;
EXECUTE alterIfExists;
DEALLOCATE PREPARE alterIfExists;

-- For order_details
SET @preparedStatement = (SELECT IF(
  (SELECT COUNT(*) FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = 'order_details' AND table_schema = DATABASE() AND column_name = 'id') > 0,
  'ALTER TABLE order_details DROP COLUMN id;',
  'SELECT "Column id does not exist in order_details";'
));
PREPARE alterIfExists FROM @preparedStatement;
EXECUTE alterIfExists;
DEALLOCATE PREPARE alterIfExists;

SET @preparedStatement = (SELECT IF(
  (SELECT COUNT(*) FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = 'order_details' AND table_schema = DATABASE() AND column_name = 'order_id') > 0,
  'ALTER TABLE order_details DROP COLUMN order_id;',
  'SELECT "Column order_id does not exist";'
));
PREPARE alterIfExists FROM @preparedStatement;
EXECUTE alterIfExists;
DEALLOCATE PREPARE alterIfExists;

SET @preparedStatement = (SELECT IF(
  (SELECT COUNT(*) FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = 'order_details' AND table_schema = DATABASE() AND column_name = 'book_id') > 0,
  'ALTER TABLE order_details DROP COLUMN book_id;',
  'SELECT "Column book_id does not exist";'
));
PREPARE alterIfExists FROM @preparedStatement;
EXECUTE alterIfExists;
DEALLOCATE PREPARE alterIfExists;

SET @preparedStatement = (SELECT IF(
  (SELECT COUNT(*) FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = 'order_details' AND table_schema = DATABASE() AND column_name = 'quantity') > 0,
  'ALTER TABLE order_details DROP COLUMN quantity;',
  'SELECT "Column quantity does not exist";'
));
PREPARE alterIfExists FROM @preparedStatement;
EXECUTE alterIfExists;
DEALLOCATE PREPARE alterIfExists;

-- For user_auth
SET @preparedStatement = (SELECT IF(
  (SELECT COUNT(*) FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = 'user_auth' AND table_schema = DATABASE() AND column_name = 'user_name') > 0,
  'ALTER TABLE user_auth DROP COLUMN user_name;',
  'SELECT "Column user_name does not exist in user_auth";'
));
PREPARE alterIfExists FROM @preparedStatement;
EXECUTE alterIfExists;
DEALLOCATE PREPARE alterIfExists;

-- For user_profile
SET @preparedStatement = (SELECT IF(
  (SELECT COUNT(*) FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = 'user_profile' AND table_schema = DATABASE() AND column_name = 'user_name') > 0,
  'ALTER TABLE user_profile DROP COLUMN user_name;',
  'SELECT "Column user_name does not exist in user_profile";'
));
PREPARE alterIfExists FROM @preparedStatement;
EXECUTE alterIfExists;
DEALLOCATE PREPARE alterIfExists;

SET @preparedStatement = (SELECT IF(
  (SELECT COUNT(*) FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = 'user_profile' AND table_schema = DATABASE() AND column_name = 'first_name') > 0,
  'ALTER TABLE user_profile DROP COLUMN first_name;',
  'SELECT "Column first_name does not exist";'
));
PREPARE alterIfExists FROM @preparedStatement;
EXECUTE alterIfExists;
DEALLOCATE PREPARE alterIfExists;

SET @preparedStatement = (SELECT IF(
  (SELECT COUNT(*) FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = 'user_profile' AND table_schema = DATABASE() AND column_name = 'last_name') > 0,
  'ALTER TABLE user_profile DROP COLUMN last_name;',
  'SELECT "Column last_name does not exist";'
));
PREPARE alterIfExists FROM @preparedStatement;
EXECUTE alterIfExists;
DEALLOCATE PREPARE alterIfExists;

SET @preparedStatement = (SELECT IF(
  (SELECT COUNT(*) FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = 'user_profile' AND table_schema = DATABASE() AND column_name = 'pin_code') > 0,
  'ALTER TABLE user_profile DROP COLUMN pin_code;',
  'SELECT "Column pin_code does not exist";'
));
PREPARE alterIfExists FROM @preparedStatement;
EXECUTE alterIfExists;
DEALLOCATE PREPARE alterIfExists;

-- For temp_detail
SET @preparedStatement = (SELECT IF(
  (SELECT COUNT(*) FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = 'temp_detail' AND table_schema = DATABASE() AND column_name = 'id') > 0,
  'ALTER TABLE temp_detail DROP COLUMN id;',
  'SELECT "Column id does not exist in temp_detail";'
));
PREPARE alterIfExists FROM @preparedStatement;
EXECUTE alterIfExists;
DEALLOCATE PREPARE alterIfExists;

SET @preparedStatement = (SELECT IF(
  (SELECT COUNT(*) FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = 'temp_detail' AND table_schema = DATABASE() AND column_name = 'book_id') > 0,
  'ALTER TABLE temp_detail DROP COLUMN book_id;',
  'SELECT "Column book_id does not exist";'
));
PREPARE alterIfExists FROM @preparedStatement;
EXECUTE alterIfExists;
DEALLOCATE PREPARE alterIfExists;

-- Show final table structures
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

