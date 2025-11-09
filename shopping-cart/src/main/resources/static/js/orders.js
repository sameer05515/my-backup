let allBooks = [];
let allOrders = [];

// Load orders and books on page load
document.addEventListener('DOMContentLoaded', async () => {
    await loadOrders();
    await loadBooks();
});

async function loadBooks() {
    try {
        allBooks = await api.getBooks();
        populateBookSelects();
    } catch (error) {
        console.error('Error loading books:', error);
    }
}

async function loadOrders() {
    try {
        allOrders = await api.getOrders();
        displayOrders(allOrders);
    } catch (error) {
        showError(error.message);
        document.getElementById('ordersContainer').innerHTML = '<p class="error-message">Failed to load orders</p>';
    }
}

function populateBookSelects() {
    const selects = document.querySelectorAll('.book-select');
    selects.forEach(select => {
        select.innerHTML = '<option value="">Select Book</option>';
        allBooks.forEach(book => {
            if (book.quantity > 0) {
                const option = document.createElement('option');
                option.value = book.bookId;
                option.textContent = `${book.title} - $${book.price.toFixed(2)} (Stock: ${book.quantity})`;
                option.dataset.price = book.price;
                select.appendChild(option);
            }
        });
    });
}

function displayOrders(orders) {
    const container = document.getElementById('ordersContainer');
    
    if (orders.length === 0) {
        container.innerHTML = '<p>No orders found.</p>';
        return;
    }
    
    container.innerHTML = orders.map(order => {
        const orderDate = formatDate(order.orderDate);
        const itemsHtml = order.items.map(item => `
            <li>
                <strong>${escapeHtml(item.bookTitle)}</strong> - 
                Qty: ${item.quantity} × $${item.price.toFixed(2)} = 
                $${item.subtotal.toFixed(2)}
            </li>
        `).join('');
        
        return `
            <div class="order-card">
                <div class="order-header">
                    <div>
                        <h3>Order #${order.orderId}</h3>
                        <p>User: ${escapeHtml(order.userId)}</p>
                        <p>Date: ${orderDate}</p>
                    </div>
                </div>
                <ul class="order-item-list">
                    ${itemsHtml}
                </ul>
                <div class="order-total">
                    Total: $${order.totalAmount.toFixed(2)}
                </div>
            </div>
        `;
    }).join('');
}

function showOrderForm() {
    document.getElementById('orderForm').style.display = 'block';
    document.getElementById('orderFormElement').reset();
    document.getElementById('orderItemsContainer').innerHTML = `
        <div class="order-item">
            <select class="book-select" required>
                <option value="">Select Book</option>
            </select>
            <input type="number" class="quantity-input" placeholder="Quantity" min="1" required>
            <button type="button" class="btn btn-danger" onclick="removeOrderItem(this)">Remove</button>
        </div>
    `;
    populateBookSelects();
}

function closeOrderForm() {
    document.getElementById('orderForm').style.display = 'none';
}

function addOrderItem() {
    const container = document.getElementById('orderItemsContainer');
    const itemDiv = document.createElement('div');
    itemDiv.className = 'order-item';
    itemDiv.innerHTML = `
        <select class="book-select" required>
            <option value="">Select Book</option>
        </select>
        <input type="number" class="quantity-input" placeholder="Quantity" min="1" required>
        <button type="button" class="btn btn-danger" onclick="removeOrderItem(this)">Remove</button>
    `;
    container.appendChild(itemDiv);
    populateBookSelects();
}

function removeOrderItem(button) {
    const container = document.getElementById('orderItemsContainer');
    if (container.children.length > 1) {
        button.parentElement.remove();
    } else {
        alert('At least one item is required');
    }
}

async function createOrder(event) {
    event.preventDefault();
    
    const userId = document.getElementById('userId').value;
    const items = [];
    
    const orderItems = document.querySelectorAll('.order-item');
    orderItems.forEach(item => {
        const bookId = item.querySelector('.book-select').value;
        const quantity = item.querySelector('.quantity-input').value;
        
        if (bookId && quantity) {
            items.push({
                bookId: parseInt(bookId),
                quantity: parseInt(quantity)
            });
        }
    });
    
    if (items.length === 0) {
        showError('Please add at least one item to the order');
        return;
    }
    
    const order = {
        userId: userId,
        items: items
    };
    
    try {
        await api.createOrder(order);
        showSuccess('Order created successfully');
        closeOrderForm();
        await loadOrders();
    } catch (error) {
        showError(error.message);
    }
}

function formatDate(dateString) {
    if (dateString.length === 8) {
        const year = dateString.substring(0, 4);
        const month = dateString.substring(4, 6);
        const day = dateString.substring(6, 8);
        return `${year}-${month}-${day}`;
    }
    return dateString;
}

function escapeHtml(text) {
    const div = document.createElement('div');
    div.textContent = text;
    return div.innerHTML;
}

