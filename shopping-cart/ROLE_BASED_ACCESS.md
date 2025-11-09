# Role-Based Access Control (RBAC) Implementation

## Overview

The shopping cart application now supports role-based access control with two user roles:

- **ADMIN**: Can add/manage categories and books
- **USER**: Can view books and create orders

## Database Setup

### Step 1: Add Role Column to Database

Run the SQL script to add the `Role` column to the `user_auth` table:

```bash
mysql -u root -p bce_shopping_cart < src/main/resources/add-role-column.sql
```

Or execute manually:

```sql
USE bce_shopping_cart;

-- Add Role column
ALTER TABLE user_auth 
ADD COLUMN `Role` VARCHAR(20) DEFAULT 'USER' NOT NULL AFTER `Password`;

-- Set existing admin users to ADMIN role
UPDATE user_auth 
SET `Role` = 'ADMIN' 
WHERE `UserName` IN ('admin', 'admin1', 'admin2', 'Administrator');

-- Verify
SELECT UserName, Password, Role FROM user_auth;
```

## Role Permissions

### ADMIN Role
- ✅ Add/Edit/Delete Categories
- ✅ Add/Edit/Delete Books
- ✅ View all Books
- ✅ View all Orders
- ✅ Create Orders

### USER Role
- ✅ View all Books (read-only)
- ✅ View Categories (read-only)
- ✅ Create Orders
- ✅ View own Orders
- ❌ Cannot add/edit/delete Books
- ❌ Cannot add/edit/delete Categories

## Implementation Details

### 1. Entity Updates
- `UserAuth` entity now includes a `Role` field
- Default role is `USER` if not specified

### 2. Authentication
- User role is stored in session after login
- Session attributes: `userName`, `userRole`, `loggedIn`

### 3. Authorization
- **Annotation-based**: `@RequiresRole("ADMIN")` or `@RequiresRole({"USER", "ADMIN"})`
- **Interceptor**: `RoleAuthorizationInterceptor` checks role before API endpoints
- **UI**: Thymeleaf templates conditionally show/hide features based on role

### 4. Protected Endpoints

#### Admin Only:
- `POST /api/books` - Create book
- `PUT /api/books/{id}` - Update book
- `DELETE /api/books/{id}` - Delete book
- `POST /api/categories` - Create category
- `PUT /api/categories/{id}` - Update category
- `DELETE /api/categories/{id}` - Delete category

#### User and Admin:
- `POST /api/orders` - Create order

#### Public (No role required):
- `GET /api/books` - List books
- `GET /api/books/{id}` - Get book
- `GET /api/categories` - List categories
- `GET /api/orders` - List orders

## UI Features

### Admin UI
- "Add New Book" button on Books page
- "Add New Category" button on Categories page
- Edit/Delete buttons on book and category cards
- Categories link in navigation menu
- Admin-only quick actions on home page

### User UI
- View-only access to books and categories
- Create order functionality
- No edit/delete buttons
- No Categories menu item (unless admin)

## Testing

### Test as Admin
1. Login with: `admin` / `admin@202012`
2. You should see:
   - "Add New Book" button
   - "Add New Category" button
   - Edit/Delete buttons on items
   - Categories menu item

### Test as User
1. Create a user in database:
   ```sql
   INSERT INTO user_auth (UserName, Password, Role) VALUES ('user1', 'password123', 'USER');
   ```
2. Login with: `user1` / `password123`
3. You should see:
   - Books (read-only, no edit/delete)
   - Create Order button
   - No Categories menu item
   - No admin-only features

## Default Users

After running the SQL script, default users will have:
- `admin`, `admin1`, `admin2`, `Administrator` → **ADMIN** role
- All other users → **USER** role (default)

## Troubleshooting

1. **403 Forbidden errors on API calls**
   - Check if user is logged in
   - Verify role is set in session: `session.getAttribute("userRole")`
   - Ensure role matches required role for endpoint

2. **UI features not showing/hiding correctly**
   - Check Thymeleaf conditionals: `th:if="${session.userRole == 'ADMIN'}"`
   - Verify session contains `userRole` attribute
   - Check browser console for JavaScript errors

3. **Role column missing**
   - Run the SQL script: `add-role-column.sql`
   - Verify column exists: `DESCRIBE user_auth;`

## Files Modified

- `UserAuth.java` - Added Role field
- `AuthService.java` - Returns UserAuth with role
- `AuthViewController.java` - Stores role in session
- `AuthController.java` - Returns role in API response
- `BookController.java` - Added `@RequiresRole("ADMIN")` to write operations
- `CategoryController.java` - Added `@RequiresRole("ADMIN")` to write operations
- `OrderController.java` - Added `@RequiresRole({"USER", "ADMIN"})` to create
- `RoleAuthorizationInterceptor.java` - Checks role for API endpoints
- `WebMvcConfig.java` - Registers role interceptor
- All UI templates - Conditional display based on role

