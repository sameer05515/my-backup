let allBooks = [];
let allCategories = [];
let editingBookId = null;

// Load books and categories on page load
document.addEventListener('DOMContentLoaded', async () => {
    await loadBooks();
    await loadCategories();
});

async function loadBooks() {
    try {
        allBooks = await api.getBooks();
        displayBooks(allBooks);
    } catch (error) {
        showError(error.message);
        document.getElementById('booksContainer').innerHTML = '<p class="error-message">Failed to load books</p>';
    }
}

async function loadCategories() {
    try {
        allCategories = await api.getCategories();
        populateCategorySelects();
    } catch (error) {
        console.error('Error loading categories:', error);
    }
}

function populateCategorySelects() {
    const categorySelect = document.getElementById('categoryId');
    const categoryFilter = document.getElementById('categoryFilter');
    
    const populateSelect = (select) => {
        select.innerHTML = select.id === 'categoryId' 
            ? '<option value="">Select Category</option>'
            : '<option value="">All Categories</option>';
        
        allCategories.forEach(cat => {
            const option = document.createElement('option');
            option.value = cat.categoryId;
            option.textContent = cat.categoryName;
            select.appendChild(option);
        });
    };
    
    if (categorySelect) populateSelect(categorySelect);
    if (categoryFilter) populateSelect(categoryFilter);
}

function displayBooks(books) {
    const container = document.getElementById('booksContainer');
    
    if (books.length === 0) {
        container.innerHTML = '<p>No books found.</p>';
        return;
    }
    
    // Check if user is admin (we'll get this from a data attribute or check via API)
    const isAdmin = document.body.dataset.userRole === 'ADMIN';
    
    container.innerHTML = books.map(book => `
        <div class="book-card">
            <h3>${escapeHtml(book.title)}</h3>
            <p class="author">by ${escapeHtml(book.author)}</p>
            <p class="price">$${book.price.toFixed(2)}</p>
            <p class="quantity">Stock: ${book.quantity}</p>
            <p>${escapeHtml(book.description.substring(0, 100))}...</p>
            ${isAdmin ? `
            <div class="actions">
                <button class="btn btn-primary" onclick="editBook(${book.bookId})">Edit</button>
                <button class="btn btn-danger" onclick="deleteBook(${book.bookId})">Delete</button>
            </div>
            ` : ''}
        </div>
    `).join('');
}

function showBookForm() {
    editingBookId = null;
    document.getElementById('bookForm').style.display = 'block';
    document.getElementById('formTitle').textContent = 'Add New Book';
    document.getElementById('bookFormElement').reset();
    document.getElementById('bookId').value = '';
}

function closeBookForm() {
    document.getElementById('bookForm').style.display = 'none';
    editingBookId = null;
}

async function saveBook(event) {
    event.preventDefault();
    
    const book = {
        categoryId: parseInt(document.getElementById('categoryId').value),
        title: document.getElementById('title').value,
        author: document.getElementById('author').value,
        publisher: document.getElementById('publisher').value,
        edition: document.getElementById('edition').value,
        price: parseFloat(document.getElementById('price').value),
        quantity: parseInt(document.getElementById('quantity').value),
        description: document.getElementById('description').value
    };
    
    try {
        if (editingBookId) {
            await api.updateBook(editingBookId, book);
            showSuccess('Book updated successfully');
        } else {
            await api.createBook(book);
            showSuccess('Book created successfully');
        }
        closeBookForm();
        await loadBooks();
    } catch (error) {
        showError(error.message);
    }
}

async function editBook(id) {
    try {
        const book = await api.getBook(id);
        editingBookId = id;
        
        document.getElementById('bookId').value = book.bookId;
        document.getElementById('categoryId').value = book.categoryId;
        document.getElementById('title').value = book.title;
        document.getElementById('author').value = book.author;
        document.getElementById('publisher').value = book.publisher;
        document.getElementById('edition').value = book.edition;
        document.getElementById('price').value = book.price;
        document.getElementById('quantity').value = book.quantity;
        document.getElementById('description').value = book.description;
        
        document.getElementById('formTitle').textContent = 'Edit Book';
        document.getElementById('bookForm').style.display = 'block';
    } catch (error) {
        showError(error.message);
    }
}

async function deleteBook(id) {
    if (!confirm('Are you sure you want to delete this book?')) return;
    
    try {
        await api.deleteBook(id);
        showSuccess('Book deleted successfully');
        await loadBooks();
    } catch (error) {
        showError(error.message);
    }
}

async function searchBooks() {
    const searchTerm = document.getElementById('searchInput').value.trim();
    
    if (searchTerm === '') {
        displayBooks(allBooks);
        return;
    }
    
    try {
        const results = await api.searchBooks(searchTerm);
        displayBooks(results);
    } catch (error) {
        showError(error.message);
    }
}

async function filterByCategory() {
    const categoryId = document.getElementById('categoryFilter').value;
    
    if (categoryId === '') {
        displayBooks(allBooks);
        return;
    }
    
    try {
        const books = await api.getBooksByCategory(parseInt(categoryId));
        displayBooks(books);
    } catch (error) {
        showError(error.message);
    }
}

function escapeHtml(text) {
    const div = document.createElement('div');
    div.textContent = text;
    return div.innerHTML;
}

