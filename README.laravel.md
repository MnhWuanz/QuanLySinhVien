# 🎓 Student Management System - Laravel Version

Hệ thống quản lý sinh viên được chuyển đổi sang Laravel Framework.

## 🚀 Tính năng

- ✅ Đăng nhập/Đăng ký giảng viên
- ✅ Quản lý sinh viên (CRUD)
- ✅ Tính GPA tự động từ 3 kỳ học
- ✅ Phân loại học lực
- ✅ Đổi mật khẩu
- ✅ Tìm kiếm sinh viên
- ✅ Validation đầy đủ

## 📦 Công nghệ

- **Framework:** Laravel 11
- **Database:** MySQL
- **Frontend:** Blade Templates + Vanilla JS
- **Authentication:** Laravel Auth
- **ORM:** Eloquent

## 🔧 Cài đặt

### Yêu cầu
- PHP >= 8.1
- Composer
- MySQL
- Apache/Nginx

### Các bước cài đặt

1. Clone repository:
```bash
git clone https://github.com/MnhWuanz/MoPhongQuanLyLoi.git
cd MoPhongQuanLyLoi
git checkout dev-version-2
```

2. Cài đặt dependencies:
```bash
composer install
```

3. Copy file .env:
```bash
copy .env.example .env
```

4. Cấu hình database trong `.env`:
```env
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=student_management
DB_USERNAME=root
DB_PASSWORD=
```

5. Generate APP_KEY:
```bash
php artisan key:generate
```

6. Chạy migrations:
```bash
php artisan migrate
```

7. Khởi động server:
```bash
php artisan serve
```

8. Truy cập: `http://localhost:8000`

## 📁 Cấu trúc dự án

```
MoPhongQuanLyLoi/
├── app/
│   ├── Http/Controllers/
│   │   ├── AuthController.php
│   │   ├── DashboardController.php
│   │   └── StudentController.php
│   └── Models/
│       ├── Lecturer.php
│       └── Student.php
├── config/
│   ├── app.php
│   ├── auth.php
│   ├── database.php
│   └── session.php
├── database/migrations/
│   ├── 2024_01_01_000001_create_lecturers_table.php
│   └── 2024_01_01_000002_create_students_table.php
├── public/
│   ├── index.php
│   └── assets/
├── resources/views/
│   ├── auth/
│   │   ├── login.blade.php
│   │   ├── register.blade.php
│   │   └── change-password.blade.php
│   ├── layouts/
│   │   └── app.blade.php
│   └── dashboard.blade.php
└── routes/
    ├── web.php
    └── console.php
```

## 🎯 API Endpoints

### Authentication
- `GET /login` - Trang đăng nhập
- `POST /login` - Xử lý đăng nhập
- `GET /register` - Trang đăng ký
- `POST /register` - Xử lý đăng ký
- `POST /logout` - Đăng xuất

### Student Management (Protected)
- `GET /dashboard` - Dashboard chính
- `GET /students` - Lấy danh sách sinh viên
- `POST /students` - Thêm sinh viên mới
- `GET /students/{id}` - Xem chi tiết sinh viên
- `PUT /students/{id}` - Cập nhật sinh viên
- `DELETE /students/{id}` - Xóa sinh viên

### Password Management
- `GET /change-password` - Trang đổi mật khẩu
- `POST /change-password` - Xử lý đổi mật khẩu

## 📊 Database Schema

### Lecturers Table
```sql
- id (PK)
- email (unique)
- password (hashed)
- full_name
- role
- timestamps
```

### Students Table
```sql
- id (PK)
- student_code (unique)
- full_name
- email (unique)
- dob (date)
- class_name
- score1 (decimal)
- score2 (decimal)
- score3 (decimal)
- score (auto-calculated average)
- gpa (auto-calculated 4.0 scale)
- timestamps
```

## 💡 Tính năng nổi bật

### Auto-calculate GPA
Model Student tự động tính điểm TB và GPA khi save:
```php
protected static function boot()
{
    parent::boot();
    
    static::saving(function ($student) {
        $student->score = $student->calculateAverageScore();
        $student->gpa = $student->convertScoreToGPA($student->score);
    });
}
```

### GPA Conversion Scale
- 9.0-10: 4.0 (Xuất sắc)
- 8.5-8.9: 3.7 (Giỏi)
- 8.0-8.4: 3.5
- 7.5-7.9: 3.3 (Khá)
- ...và thang điểm chi tiết khác

## 🔐 Bảo mật

- Password được hash bằng bcrypt
- CSRF protection
- SQL Injection prevention (Eloquent ORM)
- XSS protection
- Authentication middleware
- Validation đầy vào

## 📝 License

MIT License

## 👨‍💻 Author

**MnhWuanz**
- GitHub: [@MnhWuanz](https://github.com/MnhWuanz)

## 🎉 Changelog

### Version 2.0 (Laravel) - 2025-12-07
- ✅ Chuyển đổi hoàn toàn sang Laravel 11
- ✅ Sử dụng Eloquent ORM
- ✅ Blade templating engine
- ✅ Laravel Authentication
- ✅ Migration system
- ✅ RESTful API
- ✅ Auto GPA calculation in Model

### Version 1.0 (Pure PHP) - 2024
- Hệ thống PHP thuần
- PDO database
- Session authentication

---

Made with ❤️ by MnhWuanz
