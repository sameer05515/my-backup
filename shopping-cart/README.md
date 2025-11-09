# Shopping Cart Application

A comprehensive Spring Boot-based shopping cart application for managing books, categories, orders, and user authentication.

## 🚀 Features

- **Book Management**: CRUD operations for books with search functionality
- **Category Management**: Organize books by categories
- **Order Management**: Create and manage orders with order details
- **User Authentication**: Basic authentication system
- **RESTful API**: Clean REST API endpoints
- **API Documentation**: Swagger UI and Redoc documentation with OpenAPI 3.0
- **Database Integration**: MySQL/MariaDB support with JPA/Hibernate

## 🛠️ Technology Stack

- **Java**: 17
- **Spring Boot**: 3.2.0
- **Spring Data JPA**: For database operations
- **MySQL/MariaDB**: Database
- **Lombok**: For reducing boilerplate code
- **SpringDoc OpenAPI**: API documentation (Swagger UI & Redoc)
- **Maven**: Build tool

## 📋 Prerequisites

- Java JDK 17 or higher
- Maven 3.6+
- MySQL 8.0+ or MariaDB 10.3+
- IDE (IntelliJ IDEA, Eclipse, or VS Code)

## 🔧 Setup Instructions

### 1. Database Setup

Create the database and restore the schema:

```sql
CREATE DATABASE IF NOT EXISTS bce_shopping_cart;
USE bce_shopping_cart;
```

Run the SQL script located at `src/main/resources/bce_shopping_cart.sql` to create tables and sample data.

### 2. Configure Database Connection

Update `src/main/resources/application.properties` with your database credentials:

```properties
spring.datasource.url=jdbc:mysql://localhost:3306/bce_shopping_cart?createDatabaseIfNotExist=true&useSSL=false&serverTimezone=UTC
spring.datasource.username=root
spring.datasource.password=your_password
```

### 3. Build and Run

#### Using Maven:

```bash
# Navigate to project directory
cd shopping-cart

# Build the project
mvn clean install

# Run the application
mvn spring-boot:run
```

#### Using IDE:

1. Import the project as a Maven project
2. Run `ShoppingCartApplication.java`

### 4. Access the Application

- **API Base URL**: `http://localhost:8080`
- **Swagger UI**: `http://localhost:8080/swagger-ui.html` - Interactive API testing interface
- **Redoc Documentation**: `http://localhost:8080/redoc.html` - Beautiful API documentation
- **OpenAPI JSON**: `http://localhost:8080/api-docs` - Raw OpenAPI specification
- **OpenAPI YAML**: `http://localhost:8080/api-docs.yaml` - OpenAPI specification in YAML format

## 📚 API Endpoints

### Books

- `GET /api/books` - Get all books
- `GET /api/books/{bookId}` - Get book by ID
- `GET /api/books/category/{categoryId}` - Get books by category
- `GET /api/books/search?title={title}` - Search books by title
- `POST /api/books` - Create a new book
- `PUT /api/books/{bookId}` - Update a book
- `DELETE /api/books/{bookId}` - Delete a book

### Categories

- `GET /api/categories` - Get all categories
- `GET /api/categories/{categoryId}` - Get category by ID
- `POST /api/categories` - Create a new category
- `PUT /api/categories/{categoryId}` - Update a category
- `DELETE /api/categories/{categoryId}` - Delete a category

### Orders

- `GET /api/orders` - Get all orders
- `GET /api/orders/{orderId}` - Get order by ID
- `GET /api/orders/user/{userId}` - Get orders by user ID
- `POST /api/orders` - Create a new order

### Authentication

- `POST /api/auth/login` - User login

## 📝 Example API Requests

### Create a Book

```bash
curl -X POST http://localhost:8080/api/books \
  -H "Content-Type: application/json" \
  -d '{
    "categoryId": 1,
    "title": "Spring Boot in Action",
    "author": "Craig Walls",
    "publisher": "Manning Publications",
    "edition": "5th Edition",
    "price": 49.99,
    "quantity": 10,
    "description": "Comprehensive guide to Spring Boot"
  }'
```

### Create an Order

```bash
curl -X POST http://localhost:8080/api/orders \
  -H "Content-Type: application/json" \
  -d '{
    "userId": "admin",
    "items": [
      {
        "bookId": 1,
        "quantity": 2
      }
    ]
  }'
```

### User Login

```bash
curl -X POST http://localhost:8080/api/auth/login \
  -H "Content-Type: application/json" \
  -d '{
    "userName": "admin",
    "password": "admin@202012"
  }'
```

## 🗂️ Project Structure

```
shopping-cart/
├── src/
│   ├── main/
│   │   ├── java/com/shoppingcart/
│   │   │   ├── controller/     # REST controllers
│   │   │   ├── service/        # Business logic
│   │   │   ├── repository/     # Data access layer
│   │   │   ├── entity/         # JPA entities
│   │   │   ├── dto/            # Data Transfer Objects
│   │   │   ├── exception/      # Exception handlers
│   │   │   └── ShoppingCartApplication.java
│   │   └── resources/
│   │       ├── application.properties
│   │       └── bce_shopping_cart.sql
│   └── test/                   # Test files
├── pom.xml
└── README.md
```

## 🔐 Default Users

The application comes with default users for testing:

- **Username**: `admin`, **Password**: `admin@202012`
- **Username**: `admin1`, **Password**: `admin@202012`
- **Username**: `admin2`, **Password**: `admin@202012`
- **Username**: `Administrator`, **Password**: `admin@202012`

## 🗄️ Database Schema

The application uses the following main tables:

- `book_details` - Book information
- `category_details` - Book categories
- `order_table` - Order headers
- `order_details` - Order line items
- `user_auth` - User authentication
- `user_profile` - User profile information
- `temp_detail` - Temporary cart storage

## 📖 API Documentation

The application provides comprehensive API documentation using both Swagger UI and Redoc.

### Swagger UI

Swagger UI provides an interactive interface to explore and test the API:

- **URL**: `http://localhost:8080/swagger-ui.html`
- **Features**:
  - Interactive API testing
  - Try-out functionality for all endpoints
  - Request/response examples
  - Schema definitions
  - Filter and search capabilities

### Redoc Documentation

Redoc provides a beautiful, responsive documentation interface:

- **URL**: `http://localhost:8080/redoc.html`
- **Features**:
  - Clean, modern interface
  - Mobile-responsive design
  - Three-panel layout (request/response/schema)
  - Code samples
  - Better for sharing with stakeholders

### OpenAPI Specification

The OpenAPI 3.0 specification is available in multiple formats:

- **JSON**: `http://localhost:8080/api-docs`
- **YAML**: `http://localhost:8080/api-docs.yaml`

These can be used with other tools or imported into API testing platforms.

### Customization

The OpenAPI documentation can be customized in `OpenApiConfig.java`:

- API title and description
- Contact information
- License details
- Server configurations
- Tags and operation grouping

All controllers include detailed annotations with:
- Operation summaries and descriptions
- Parameter documentation
- Response codes and descriptions
- Request/response schema definitions

## 🧪 Testing

Run tests using Maven:

```bash
mvn test
```

## 📦 Building WAR File

To build a WAR file for deployment:

```bash
mvn clean package
```

The WAR file will be generated in the `target/` directory.

## 🔍 Troubleshooting

### Database Connection Issues

- Verify MySQL/MariaDB is running
- Check database credentials in `application.properties`
- Ensure the database `bce_shopping_cart` exists

### Port Already in Use

Change the port in `application.properties`:

```properties
server.port=8081
```

### Lombok Not Working

Ensure Lombok plugin is installed in your IDE:
- **IntelliJ IDEA**: Install Lombok plugin from Settings
- **Eclipse**: Install Lombok from https://projectlombok.org/setup/eclipse

## 📄 License

This project is for educational purposes.

## 👤 Author

Created as part of a backup repository project.

---

**Happy Coding! 🎉**

