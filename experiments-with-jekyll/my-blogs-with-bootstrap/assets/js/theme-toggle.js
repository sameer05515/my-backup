// Theme toggle functionality for Bootstrap
(function() {
  // Get theme from localStorage or default to light
  function getTheme() {
    return localStorage.getItem('theme') || 'light';
  }

  // Set theme
  function setTheme(theme) {
    localStorage.setItem('theme', theme);
    document.documentElement.setAttribute('data-bs-theme', theme);
    updateThemeIcon(theme);
  }

  // Update theme icon
  function updateThemeIcon(theme) {
    const sunIcon = document.getElementById('sun-icon');
    const moonIcon = document.getElementById('moon-icon');
    
    if (sunIcon && moonIcon) {
      if (theme === 'dark') {
        sunIcon.classList.add('d-none');
        moonIcon.classList.remove('d-none');
      } else {
        sunIcon.classList.remove('d-none');
        moonIcon.classList.add('d-none');
      }
    }
  }

  // Toggle theme
  function toggleTheme() {
    const currentTheme = getTheme();
    const newTheme = currentTheme === 'dark' ? 'light' : 'dark';
    setTheme(newTheme);
  }

  // Initialize theme on page load
  function initTheme() {
    const theme = getTheme();
    setTheme(theme);
  }

  // Initialize when DOM is ready
  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', initTheme);
  } else {
    initTheme();
  }

  // Attach click handler to theme toggle button
  document.addEventListener('DOMContentLoaded', function() {
    const themeToggle = document.getElementById('theme-toggle');
    if (themeToggle) {
      themeToggle.addEventListener('click', toggleTheme);
    }
  });

  // Make toggleTheme available globally
  window.toggleTheme = toggleTheme;
})();

