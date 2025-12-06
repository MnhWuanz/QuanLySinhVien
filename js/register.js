document.getElementById('registerForm').addEventListener('submit', async function(e) {
    e.preventDefault();
    
    const fullname = document.getElementById('fullname').value.trim();
    const email = document.getElementById('email').value.trim();
    const phone = document.getElementById('phone').value.trim();
    const password = document.getElementById('password').value;
    const confirmPassword = document.getElementById('confirm_password').value;
    const agreeTerms = document.getElementById('agree_terms').checked;
    
    // Validate
    if (!agreeTerms) {
        alert('Vui lòng đồng ý với điều khoản sử dụng!');
        return;
    }
    
    if (password !== confirmPassword) {
        alert('Mật khẩu xác nhận không khớp!');
        document.getElementById('confirm_password').focus();
        return;
    }
    
    if (password.length < 6) {
        alert('Mật khẩu phải có ít nhất 6 ký tự!');
        document.getElementById('password').focus();
        return;
    }
    
    // Disable button
    const submitBtn = e.target.querySelector('button[type="submit"]');
    submitBtn.disabled = true;
    submitBtn.textContent = 'Đang xử lý...';
    
    try {
        // Gọi API đăng ký
        const response = await fetch('/api/register', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                full_name: fullname,
                email: email,
                phone_number: phone,
                password: password
            })
        });
        
        const result = await response.json();
        
        if (result.success) {
            alert('Đăng ký thành công! Vui lòng đăng nhập.');
            window.location.href = 'login.html';
        } else {
            alert(result.message || 'Đăng ký thất bại!');
        }
    } catch (error) {
        // Demo mode - lưu vào localStorage
        console.warn('Backend chưa sẵn sàng, dùng chế độ demo');
        
        // Kiểm tra email đã tồn tại
        const existingUsers = JSON.parse(localStorage.getItem('registeredUsers') || '[]');
        const emailExists = existingUsers.some(user => user.email === email);
        
        if (emailExists) {
            alert('Email đã được đăng ký!');
            submitBtn.disabled = false;
            submitBtn.textContent = 'Đăng ký';
            return;
        }
        
        // Lưu user mới
        const newUser = {
            id: Date.now(),
            full_name: fullname,
            email: email,
            phone_number: phone,
            password: password, // Trong thực tế sẽ mã hóa
            created_at: new Date().toISOString()
        };
        
        existingUsers.push(newUser);
        localStorage.setItem('registeredUsers', JSON.stringify(existingUsers));
        
        alert('Đăng ký thành công! (Demo mode)\n\nBạn có thể đăng nhập với:\nEmail: ' + email + '\nPassword: ' + password);
        window.location.href = 'login.html';
    } finally {
        submitBtn.disabled = false;
        submitBtn.textContent = 'Đăng ký';
    }
});

// Validate email format
document.getElementById('email').addEventListener('blur', function() {
    const email = this.value.trim();
    const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    
    if (email && !emailPattern.test(email)) {
        alert('Email không đúng định dạng!');
        this.focus();
    }
});

// Validate phone format
document.getElementById('phone').addEventListener('blur', function() {
    const phone = this.value.trim();
    const phonePattern = /^[0-9]{10,11}$/;
    
    if (phone && !phonePattern.test(phone)) {
        alert('Số điện thoại phải có 10-11 chữ số!');
        this.focus();
    }
});

// Check password strength
document.getElementById('password').addEventListener('input', function() {
    const password = this.value;
    const strength = document.getElementById('password-strength');
    
    if (!strength) {
        const strengthDiv = document.createElement('small');
        strengthDiv.id = 'password-strength';
        strengthDiv.style.display = 'block';
        strengthDiv.style.marginTop = '5px';
        this.parentElement.appendChild(strengthDiv);
    }
    
    const strengthIndicator = document.getElementById('password-strength');
    
    if (password.length === 0) {
        strengthIndicator.textContent = '';
        strengthIndicator.style.color = '';
    } else if (password.length < 6) {
        strengthIndicator.textContent = '⚠️ Mật khẩu quá yếu';
        strengthIndicator.style.color = '#dc3545';
    } else if (password.length < 8) {
        strengthIndicator.textContent = '✓ Mật khẩu trung bình';
        strengthIndicator.style.color = '#ffc107';
    } else {
        strengthIndicator.textContent = '✓ Mật khẩu mạnh';
        strengthIndicator.style.color = '#28a745';
    }
});
