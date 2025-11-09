let allCategories = [];
let editingCategoryId = null;

// Load categories on page load
document.addEventListener('DOMContentLoaded', async () => {
    await loadCategories();
});

async function loadCategories() {
    try {
        allCategories = await api.getCategories();
        displayCategories(allCategories);
    } catch (error) {
        showError(error.message);
        document.getElementById('categoriesContainer').innerHTML = '<p class="error-message">Failed to load categories</p>';
    }
}

function displayCategories(categories) {
    const container = document.getElementById('categoriesContainer');
    
    if (categories.length === 0) {
        container.innerHTML = '<p>No categories found.</p>';
        return;
    }
    
    const isAdmin = document.body.dataset.userRole === 'ADMIN';
    
    container.innerHTML = categories.map(category => `
        <div class="category-card">
            <h3>${escapeHtml(category.categoryName)}</h3>
            ${isAdmin ? `
            <div class="actions">
                <button class="btn btn-primary" onclick="editCategory(${category.categoryId})">Edit</button>
                <button class="btn btn-danger" onclick="deleteCategory(${category.categoryId})">Delete</button>
            </div>
            ` : ''}
        </div>
    `).join('');
}

function showCategoryForm() {
    editingCategoryId = null;
    document.getElementById('categoryForm').style.display = 'block';
    document.getElementById('formTitle').textContent = 'Add New Category';
    document.getElementById('categoryFormElement').reset();
    document.getElementById('categoryId').value = '';
}

function closeCategoryForm() {
    document.getElementById('categoryForm').style.display = 'none';
    editingCategoryId = null;
}

async function saveCategory(event) {
    event.preventDefault();
    
    const category = {
        categoryName: document.getElementById('categoryName').value
    };
    
    try {
        if (editingCategoryId) {
            await api.updateCategory(editingCategoryId, category);
            showSuccess('Category updated successfully');
        } else {
            await api.createCategory(category);
            showSuccess('Category created successfully');
        }
        closeCategoryForm();
        await loadCategories();
    } catch (error) {
        showError(error.message);
    }
}

async function editCategory(id) {
    try {
        const category = await api.getCategory(id);
        editingCategoryId = id;
        
        document.getElementById('categoryId').value = category.categoryId;
        document.getElementById('categoryName').value = category.categoryName;
        
        document.getElementById('formTitle').textContent = 'Edit Category';
        document.getElementById('categoryForm').style.display = 'block';
    } catch (error) {
        showError(error.message);
    }
}

async function deleteCategory(id) {
    if (!confirm('Are you sure you want to delete this category?')) return;
    
    try {
        await api.deleteCategory(id);
        showSuccess('Category deleted successfully');
        await loadCategories();
    } catch (error) {
        showError(error.message);
    }
}

function escapeHtml(text) {
    const div = document.createElement('div');
    div.textContent = text;
    return div.innerHTML;
}

