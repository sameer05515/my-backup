# Database Setup Instructions

## Issue Resolution

The application was encountering Hibernate schema modification errors because:
1. The database tables already exist
2. Hibernate's `ddl-auto=update` was trying to modify existing tables
3. Column name mismatches between entity mappings and database

## Solution

The configuration has been updated to:
- Set `spring.jpa.hibernate.ddl-auto=none` to prevent Hibernate from modifying the schema
- Remove deprecated dialect settings

## Database Schema Setup

You have two options:

### Option 1: Use Existing Database (Recommended)

If your database already has the tables, the application will work as-is. Just ensure:
- Database `bce_shopping_cart` exists
- Tables are created with the correct structure

### Option 2: Fresh Setup

If you want to recreate the database:

1. **Drop and recreate the database:**
```sql
DROP DATABASE IF EXISTS bce_shopping_cart;
CREATE DATABASE bce_shopping_cart;
USE bce_shopping_cart;
```

2. **Run the SQL script:**
```bash
mysql -u root -p bce_shopping_cart < src/main/resources/bce_shopping_cart.sql
```

Or manually execute the SQL file:
- Location: `src/main/resources/bce_shopping_cart.sql`

## Current Configuration

The application is now configured with:
- `spring.jpa.hibernate.ddl-auto=none` - No automatic schema changes
- Entities mapped to match existing database column names (PascalCase)
- All foreign key relationships properly configured

## Troubleshooting

If you still see errors:

1. **Verify database exists:**
```sql
SHOW DATABASES LIKE 'bce_shopping_cart';
```

2. **Check table structure:**
```sql
USE bce_shopping_cart;
SHOW TABLES;
DESCRIBE book_details;
DESCRIBE category_details;
DESCRIBE order_table;
DESCRIBE order_details;
```

3. **If tables don't match, recreate them:**
   - Drop existing tables
   - Run the SQL script provided

## Entity Mappings

All entities use PascalCase column names to match the database:
- `BookId` (not `book_id`)
- `CategoryId` (not `category_id`)
- `OrderId` (not `order_id`)
- etc.

