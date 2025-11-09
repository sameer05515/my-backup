-- Add Role column to user_auth table
-- Admin: can manage categories and books
-- USER: can place orders

USE bce_shopping_cart;

-- Check if Role column exists, if not add it
SET @dbname = DATABASE();
SET @tablename = 'user_auth';
SET @preparedStatement = (SELECT IF(
  (
    SELECT COUNT(*) FROM INFORMATION_SCHEMA.COLUMNS
    WHERE
      (table_name = @tablename)
      AND (table_schema = @dbname)
      AND (column_name = 'Role')
  ) > 0,
  'SELECT "Role column already exists" AS message;',
  'ALTER TABLE user_auth ADD COLUMN `Role` VARCHAR(20) DEFAULT ''USER'' NOT NULL AFTER `Password`;'
));
PREPARE alterIfNotExists FROM @preparedStatement;
EXECUTE alterIfNotExists;
DEALLOCATE PREPARE alterIfNotExists;

-- Set existing admin users to ADMIN role
UPDATE user_auth 
SET `Role` = 'ADMIN' 
WHERE `UserName` IN ('admin', 'admin1', 'admin2', 'Administrator');

-- Set default role for any other users to USER
UPDATE user_auth 
SET `Role` = 'USER' 
WHERE `Role` IS NULL OR `Role` = '';

-- Verify the changes
SELECT UserName, Password, Role FROM user_auth;

