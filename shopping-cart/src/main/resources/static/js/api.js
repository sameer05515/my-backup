// API Base URL
const API_BASE_URL = '/api';

// API Utility Functions
const api = {
    // Books API
    async getBooks() {
        const response = await fetch(`${API_BASE_URL}/books`);
        if (!response.ok) throw new Error('Failed to fetch books');
        return await response.json();
    },

    async getBook(id) {
        const response = await fetch(`${API_BASE_URL}/books/${id}`);
        if (!response.ok) throw new Error('Failed to fetch book');
        return await response.json();
    },

    async createBook(book) {
        const response = await fetch(`${API_BASE_URL}/books`, {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify(book)
        });
        if (!response.ok) throw new Error('Failed to create book');
        return await response.json();
    },

    async updateBook(id, book) {
        const response = await fetch(`${API_BASE_URL}/books/${id}`, {
            method: 'PUT',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify(book)
        });
        if (!response.ok) throw new Error('Failed to update book');
        return await response.json();
    },

    async deleteBook(id) {
        const response = await fetch(`${API_BASE_URL}/books/${id}`, {
            method: 'DELETE'
        });
        if (!response.ok) throw new Error('Failed to delete book');
    },

    async searchBooks(title) {
        const response = await fetch(`${API_BASE_URL}/books/search?title=${encodeURIComponent(title)}`);
        if (!response.ok) throw new Error('Failed to search books');
        return await response.json();
    },

    async getBooksByCategory(categoryId) {
        const response = await fetch(`${API_BASE_URL}/books/category/${categoryId}`);
        if (!response.ok) throw new Error('Failed to fetch books by category');
        return await response.json();
    },

    // Categories API
    async getCategories() {
        const response = await fetch(`${API_BASE_URL}/categories`);
        if (!response.ok) throw new Error('Failed to fetch categories');
        return await response.json();
    },

    async getCategory(id) {
        const response = await fetch(`${API_BASE_URL}/categories/${id}`);
        if (!response.ok) throw new Error('Failed to fetch category');
        return await response.json();
    },

    async createCategory(category) {
        const response = await fetch(`${API_BASE_URL}/categories`, {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify(category)
        });
        if (!response.ok) throw new Error('Failed to create category');
        return await response.json();
    },

    async updateCategory(id, category) {
        const response = await fetch(`${API_BASE_URL}/categories/${id}`, {
            method: 'PUT',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify(category)
        });
        if (!response.ok) throw new Error('Failed to update category');
        return await response.json();
    },

    async deleteCategory(id) {
        const response = await fetch(`${API_BASE_URL}/categories/${id}`, {
            method: 'DELETE'
        });
        if (!response.ok) throw new Error('Failed to delete category');
    },

    // Orders API
    async getOrders() {
        const response = await fetch(`${API_BASE_URL}/orders`);
        if (!response.ok) throw new Error('Failed to fetch orders');
        return await response.json();
    },

    async getOrder(id) {
        const response = await fetch(`${API_BASE_URL}/orders/${id}`);
        if (!response.ok) throw new Error('Failed to fetch order');
        return await response.json();
    },

    async getOrdersByUser(userId) {
        const response = await fetch(`${API_BASE_URL}/orders/user/${userId}`);
        if (!response.ok) throw new Error('Failed to fetch user orders');
        return await response.json();
    },

    async createOrder(order) {
        const response = await fetch(`${API_BASE_URL}/orders`, {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify(order)
        });
        if (!response.ok) {
            const error = await response.json();
            throw new Error(error.error || 'Failed to create order');
        }
        return await response.json();
    },

    // Auth API
    async login(credentials) {
        const response = await fetch(`${API_BASE_URL}/auth/login`, {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify(credentials)
        });
        const data = await response.json();
        if (!response.ok) {
            throw new Error(data.message || 'Login failed');
        }
        return data;
    }
};

// Utility function to show error messages
function showError(message) {
    alert('Error: ' + message);
}

// Utility function to show success messages
function showSuccess(message) {
    alert('Success: ' + message);
}

