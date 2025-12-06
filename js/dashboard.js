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

// Dữ liệu sinh viên mẫu
const studentsData = [
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

// Event listeners
document.getElementById('searchInput').addEventListener('input', searchStudents);

// Khởi tạo
if (checkAuth()) {
    displayUserName();
    displayStudents(studentsData);
}
