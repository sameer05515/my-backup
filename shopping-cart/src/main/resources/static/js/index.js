// Load dashboard statistics
document.addEventListener('DOMContentLoaded', async () => {
    try {
        const [books, categories, orders] = await Promise.all([
            api.getBooks().catch(() => []),
            api.getCategories().catch(() => []),
            api.getOrders().catch(() => [])
        ]);

        document.getElementById('bookCount').textContent = books.length;
        document.getElementById('categoryCount').textContent = categories.length;
        document.getElementById('orderCount').textContent = orders.length;
    } catch (error) {
        console.error('Error loading dashboard:', error);
        document.getElementById('bookCount').textContent = '0';
        document.getElementById('categoryCount').textContent = '0';
        document.getElementById('orderCount').textContent = '0';
    }
});

