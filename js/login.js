document.getElementById('loginForm').addEventListener('submit', async function(e) {
    e.preventDefault();
    
    const username = document.getElementById('username').value;
    const password = document.getElementById('password').value;
    const remember = document.getElementById('remember').checked;
    
    // Disable button khi đang xử lý
    const submitBtn = e.target.querySelector('.btn-login');
    submitBtn.disabled = true;
    submitBtn.textContent = 'Đang xử lý...';
    
    try {
        // Gọi API đăng nhập (cần tạo backend API)
        const response = await fetch('/api/login', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({ email: username, password: password })
        });
        
        const result = await response.json();
        
        if (result.success) {
            if (remember) {
                localStorage.setItem('rememberedUser', username);
            }
            
            // Save login session
            sessionStorage.setItem('loggedIn', 'true');
            sessionStorage.setItem('userEmail', username);
            sessionStorage.setItem('userName', result.lecturer.full_name);
            sessionStorage.setItem('userId', result.lecturer.id);
            
            alert('Đăng nhập thành công! Xin chào ' + result.lecturer.full_name);
            // Redirect to dashboard
            window.location.href = 'dashboard.html';
        } else {
            alert(result.message || 'Tên đăng nhập hoặc mật khẩu không đúng!');
        }
    } catch (error) {
        // Fallback: Demo credentials khi chưa có backend
        console.warn('Backend chưa sẵn sàng, dùng chế độ demo');
        
        if (username === 'admin@example.com' && password === 'password') {
            if (remember) {
                localStorage.setItem('rememberedUser', username);
            }
            
            sessionStorage.setItem('loggedIn', 'true');
            sessionStorage.setItem('userEmail', username);
            sessionStorage.setItem('userName', 'Quản Trị Viên');
            
            alert('Đăng nhập thành công! (Demo mode)');
            window.location.href = 'dashboard.html';
        } else if (username === 'gv01@example.com' && password === 'password') {
            if (remember) {
                localStorage.setItem('rememberedUser', username);
            }
            
            sessionStorage.setItem('loggedIn', 'true');
            sessionStorage.setItem('userEmail', username);
            sessionStorage.setItem('userName', 'Thầy Nguyễn Văn Code');
            
            alert('Đăng nhập thành công! (Demo mode)');
            window.location.href = 'dashboard.html';
        } else {
            alert('Email hoặc mật khẩu không đúng!\n\nTài khoản test:\n- admin@example.com / password\n- gv01@example.com / password');
        }
    } finally {
        // Enable lại button
        submitBtn.disabled = false;
        submitBtn.textContent = 'Đăng nhập';
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
