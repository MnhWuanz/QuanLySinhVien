document.getElementById('loginForm').addEventListener('submit', function(e) {
    e.preventDefault();
    
    const username = document.getElementById('username').value;
    const password = document.getElementById('password').value;
    const remember = document.getElementById('remember').checked;
    
    // Demo credentials
    if (username === 'admin' && password === 'admin123') {
        if (remember) {
            localStorage.setItem('rememberedUser', username);
        }
        
        // Save login session
        sessionStorage.setItem('loggedIn', 'true');
        sessionStorage.setItem('username', username);
        
        alert('Đăng nhập thành công!');
        // Redirect to dashboard
        window.location.href = 'dashboard.html';
    } else {
        alert('Tên đăng nhập hoặc mật khẩu không đúng!');
    }
});

// Check if user was remembered
window.addEventListener('load', function() {
    const rememberedUser = localStorage.getItem('rememberedUser');
    if (rememberedUser) {
        document.getElementById('username').value = rememberedUser;
        document.getElementById('remember').checked = true;
    }
});
