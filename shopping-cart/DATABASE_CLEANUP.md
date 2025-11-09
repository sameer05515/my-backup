# Database Cleanup Guide - Duplicate Columns Issue

## Problem

Hibernate may have created duplicate columns in your database tables:
- **PascalCase columns** (correct): `BookId`, `CategoryId`, `Title`, etc.
- **snake_case columns** (duplicates): `book_id`, `category_id`, `title`, etc.

This happens when Hibernate's automatic naming strategy converts column names, even though you've explicitly specified them in `@Column` annotations.

## Solution

### Step 1: Run the Cleanup Script

Execute the cleanup script to remove duplicate snake_case columns:

```bash
mysql -u root -p bce_shopping_cart < src/main/resources/cleanup-duplicate-columns.sql
```

Or manually run the SQL commands in your MySQL client.

**Note**: If you get errors like "Unknown column 'book_id'", it means that column doesn't exist, which is fine. The script will continue.

### Step 2: Verify Configuration

The application is now configured with:

1. **Custom Physical Naming Strategy** (`CustomPhysicalNamingStrategy.java`)
   - Preserves exact column names as specified in `@Column` annotations
   - Prevents automatic conversion from PascalCase to snake_case

2. **DDL Auto = None**
   - `spring.jpa.hibernate.ddl-auto=none`
   - Prevents Hibernate from modifying the schema

3. **Explicit Column Mappings**
   - All entities use `@Column(name = "ColumnName")` to explicitly map to PascalCase columns

### Step 3: Verify Table Structures

After running the cleanup script, verify that tables only have PascalCase columns:

```sql
USE bce_shopping_cart;

DESCRIBE book_details;
DESCRIBE category_details;
DESCRIBE order_table;
DESCRIBE order_details;
DESCRIBE user_auth;
DESCRIBE user_profile;
DESCRIBE temp_detail;
```

### Expected Column Names (PascalCase)

- `book_details`: `BookId`, `CategoryId`, `Title`, `Author`, `Publisher`, `Edition`, `Price`, `Quantity`, `Description`
- `category_details`: `CategoryId`, `CategoryName`
- `order_table`: `OrderId`, `UserId`, `TotalAmount`, `OrderDate`
- `order_details`: `OrderId`, `BookId`, `Quantity` (composite primary key)
- `user_auth`: `UserName`, `Password`
- `user_profile`: `UserName`, `Password`, `FirstName`, `MiddleName`, `LastName`, `Address1`, `Address2`, `City`, `State`, `PinCode`, `Email`, `Phone`
- `temp_detail`: `BookId`, `CategoryId`, `Title`, `Author`, `Publisher`, `Edition`, `Price`, `Quantity`, `Description`

## Prevention

The custom naming strategy (`CustomPhysicalNamingStrategy`) ensures that:
- Column names are used exactly as specified in `@Column(name = "...")` annotations
- No automatic conversion happens
- Future schema changes won't create duplicate columns

## Alternative: Manual Cleanup

If the script fails, you can manually check and drop columns:

```sql
-- Check what columns exist
SHOW COLUMNS FROM book_details;

-- Drop specific columns if they exist
ALTER TABLE book_details DROP COLUMN book_id;
ALTER TABLE book_details DROP COLUMN category_id;
-- ... repeat for other tables
```

## Troubleshooting

1. **Error: "Unknown column"**
   - This is expected if the column doesn't exist. The script will continue.

2. **Error: "Cannot drop column because it's referenced by foreign key"**
   - Drop the foreign key constraint first, then drop the column, then recreate the constraint if needed.

3. **Still seeing duplicate columns after cleanup**
   - Verify that `CustomPhysicalNamingStrategy` is properly configured
   - Check `application.properties` and `JpaConfig.java`
   - Restart the application

## Files Modified

- `CustomPhysicalNamingStrategy.java` - Custom naming strategy to preserve exact column names
- `JpaConfig.java` - Configuration to use custom naming strategy
- `application.properties` - DDL auto set to `none`
- All entity classes - Explicit `@Column(name = "...")` mappings

