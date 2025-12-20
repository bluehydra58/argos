// PASSWORD TOGGLE
function togglePassword() {
    const input = document.getElementById('password');
    input.type = input.type === 'password' ? 'text' : 'password';
}

// THEME TOGGLE
const html = document.documentElement;
const toggleBtn = document.getElementById('themeToggle');
const icon = document.getElementById('themeIcon');

// Load saved theme
const savedTheme = localStorage.getItem('argos-theme');
if (savedTheme) {
    html.setAttribute('data-theme', savedTheme);
    icon.textContent = savedTheme === 'dark' ? '🌙' : '☀️';
}

toggleBtn.addEventListener('click', () => {
    const currentTheme = html.getAttribute('data-theme');
    const newTheme = currentTheme === 'dark' ? 'light' : 'dark';

    html.setAttribute('data-theme', newTheme);
    localStorage.setItem('argos-theme', newTheme);
    icon.textContent = newTheme === 'dark' ? '🌙' : '☀️';
});
