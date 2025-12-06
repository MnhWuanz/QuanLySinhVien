// Kiểm tra đăng nhập
function checkAuth() {
    const loggedIn = sessionStorage.getItem('loggedIn');
    if (!loggedIn) {
        window.location.href = 'login.html';
        return false;
    }
    return true;
}

// Hiển thị tên user
function displayUserName() {
    const userName = sessionStorage.getItem('userName') || 'Giảng viên';
    document.getElementById('userName').textContent = `Xin chào, ${userName}`;
}

// Dữ liệu sinh viên (load từ localStorage hoặc dữ liệu mẫu)
let studentsData = JSON.parse(localStorage.getItem('studentsData')) || [
    { id: 1, student_code: 'SV2024001', full_name: 'Nguyễn Văn An', dob: '2003-05-15', class_name: 'CNTT-K14', email: 'an.nguyen@example.com', gpa: 8.5 },
    { id: 2, student_code: 'SV2024002', full_name: 'Trần Thị Bích', dob: '2003-08-20', class_name: 'KT-K14', email: 'bich.tran@example.com', gpa: 7.2 },
    { id: 3, student_code: 'SV2024003', full_name: 'Lê Hoàng Nam', dob: '2002-12-01', class_name: 'QTKD-K13', email: 'nam.le@example.com', gpa: 6.8 },
    { id: 4, student_code: 'SV2024004', full_name: 'Phạm Minh Tuấn', dob: '2003-01-10', class_name: 'CNTT-K14', email: 'tuan.pham@example.com', gpa: 9.0 },
    { id: 5, student_code: 'SV2024005', full_name: 'Đỗ Thúy Hằng', dob: '2003-11-25', class_name: 'NNA-K15', email: 'hang.do@example.com', gpa: 7.5 },
    { id: 6, student_code: 'SV2024006', full_name: 'Vũ Minh Quân', dob: '2003-03-18', class_name: 'CNTT-K14', email: 'quan.vu@example.com', gpa: 8.8 },
    { id: 7, student_code: 'SV2024007', full_name: 'Hoàng Thị Mai', dob: '2003-07-22', class_name: 'KT-K14', email: 'mai.hoang@example.com', gpa: 7.9 },
    { id: 8, student_code: 'SV2024008', full_name: 'Trần Đức Anh', dob: '2002-11-05', class_name: 'CNTT-K13', email: 'anh.tran@example.com', gpa: 6.2 },
    { id: 9, student_code: 'SV2024009', full_name: 'Nguyễn Thị Lan', dob: '2003-09-30', class_name: 'NNA-K15', email: 'lan.nguyen@example.com', gpa: 8.3 },
    { id: 10, student_code: 'SV2024010', full_name: 'Lê Văn Hùng', dob: '2003-02-14', class_name: 'QTKD-K13', email: 'hung.le@example.com', gpa: 5.8 }
];

// Format ngày
function formatDate(dateString) {
    if (!dateString) return '-';
    const date = new Date(dateString);
    const day = String(date.getDate()).padStart(2, '0');
    const month = String(date.getMonth() + 1).padStart(2, '0');
    const year = date.getFullYear();
    return `${day}/${month}/${year}`;
}

// Lấy class GPA
function getGPAClass(gpa) {
    if (gpa >= 8.0) return 'gpa-badge gpa-excellent';
    if (gpa >= 6.5) return 'gpa-badge gpa-good';
    if (gpa >= 5.0) return 'gpa-badge gpa-average';
    return 'gpa-badge gpa-poor';
}

// Hiển thị danh sách sinh viên
function displayStudents(students) {
    const tbody = document.getElementById('studentsBody');
    
    if (students.length === 0) {
        tbody.innerHTML = '<tr><td colspan="7" class="no-data">Không tìm thấy sinh viên</td></tr>';
        return;
    }
    
    tbody.innerHTML = students.map((student, index) => `
        <tr>
            <td>${index + 1}</td>
            <td><strong>${student.student_code}</strong></td>
            <td>${student.full_name}</td>
            <td>${formatDate(student.dob)}</td>
            <td>${student.class_name || '-'}</td>
            <td>${student.email}</td>
            <td><span class="${getGPAClass(student.gpa)}">${student.gpa.toFixed(1)}</span></td>
        </tr>
    `).join('');
}

// Tìm kiếm sinh viên
function searchStudents() {
    const searchTerm = document.getElementById('searchInput').value.toLowerCase().trim();
    
    if (!searchTerm) {
        displayStudents(studentsData);
        return;
    }
    
    const filtered = studentsData.filter(student => 
        student.student_code.toLowerCase().includes(searchTerm) ||
        student.full_name.toLowerCase().includes(searchTerm) ||
        student.email.toLowerCase().includes(searchTerm) ||
        (student.class_name && student.class_name.toLowerCase().includes(searchTerm))
    );
    
    displayStudents(filtered);
}

// Đăng xuất
function logout() {
    if (confirm('Bạn có chắc chắn muốn đăng xuất?')) {
        sessionStorage.clear();
        window.location.href = 'login.html';
    }
}

// Mở modal thêm
function openAddModal() {
    document.getElementById('addForm').reset();
    document.getElementById('addModal').classList.add('show');
    document.body.style.overflow = 'hidden';
}

// Đóng modal
function closeModal() {
    document.getElementById('addModal').classList.remove('show');
    document.body.style.overflow = 'auto';
}

// Lưu dữ liệu vào localStorage
function saveToLocalStorage() {
    localStorage.setItem('studentsData', JSON.stringify(studentsData));
}

// Thêm sinh viên
function addStudent(e) {
    e.preventDefault();
    
    const newStudent = {
        id: studentsData.length > 0 ? Math.max(...studentsData.map(s => s.id)) + 1 : 1,
        student_code: document.getElementById('studentCode').value.trim(),
        full_name: document.getElementById('fullName').value.trim(),
        dob: document.getElementById('dob').value || null,
        class_name: document.getElementById('className').value.trim() || null,
        email: document.getElementById('email').value.trim(),
        gpa: parseFloat(document.getElementById('gpa').value) || 0
    };
    
    // Kiểm tra mã SV trùng
    if (studentsData.find(s => s.student_code === newStudent.student_code)) {
        alert('❌ Mã sinh viên đã tồn tại!');
        return;
    }
    
    studentsData.push(newStudent);
    saveToLocalStorage();
    displayStudents(studentsData);
    closeModal();
    showNotification('✅ Thêm sinh viên thành công!');
}

// Hiển thị thông báo
function showNotification(message) {
    const notification = document.createElement('div');
    notification.style.cssText = `
        position: fixed;
        top: 20px;
        right: 20px;
        background: #51cf66;
        color: white;
        padding: 15px 25px;
        border-radius: 10px;
        box-shadow: 0 4px 20px rgba(0,0,0,0.2);
        z-index: 10000;
        font-weight: 500;
    `;
    notification.textContent = message;
    document.body.appendChild(notification);
    
    setTimeout(() => {
        notification.remove();
    }, 3000);
}

// Event listeners
document.getElementById('searchInput').addEventListener('input', searchStudents);

// Khởi tạo
if (checkAuth()) {
    displayUserName();
    displayStudents(studentsData);
    saveToLocalStorage(); // Lưu dữ liệu ban đầu nếu chưa có
}
