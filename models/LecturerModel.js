const db = require('../database/db');
const bcrypt = require('bcryptjs');

class LecturerModel {
    // Đăng nhập giảng viên
    static async login(email, password) {
        try {
            const [rows] = await db.execute(
                'SELECT * FROM lecturers WHERE email = ?',
                [email]
            );
            
            if (rows.length === 0) {
                return { success: false, message: 'Email không tồn tại' };
            }
            
            const lecturer = rows[0];
            
            // Kiểm tra mật khẩu (bcrypt)
            const isPasswordValid = await bcrypt.compare(password, lecturer.password);
            
            if (!isPasswordValid) {
                return { success: false, message: 'Mật khẩu không đúng' };
            }
            
            // Không trả về password
            delete lecturer.password;
            return { success: true, lecturer };
        } catch (error) {
            console.error('Lỗi đăng nhập:', error);
            return { success: false, message: 'Lỗi hệ thống' };
        }
    }
    
    // Lấy tất cả giảng viên
    static async getAll() {
        try {
            const [rows] = await db.execute(
                'SELECT id, email, full_name, phone_number, created_at FROM lecturers ORDER BY id'
            );
            return rows;
        } catch (error) {
            console.error('Lỗi lấy danh sách giảng viên:', error);
            return [];
        }
    }
    
    // Lấy thông tin giảng viên theo ID
    static async getById(id) {
        try {
            const [rows] = await db.execute(
                'SELECT id, email, full_name, phone_number, created_at FROM lecturers WHERE id = ?',
                [id]
            );
            return rows[0] || null;
        } catch (error) {
            console.error('Lỗi lấy thông tin giảng viên:', error);
            return null;
        }
    }
    
    // Tạo giảng viên mới
    static async create(lecturerData) {
        try {
            const hashedPassword = await bcrypt.hash(lecturerData.password, 10);
            
            const [result] = await db.execute(
                'INSERT INTO lecturers (email, password, full_name, phone_number) VALUES (?, ?, ?, ?)',
                [lecturerData.email, hashedPassword, lecturerData.full_name, lecturerData.phone_number]
            );
            
            return { success: true, id: result.insertId };
        } catch (error) {
            console.error('Lỗi tạo giảng viên:', error);
            if (error.code === 'ER_DUP_ENTRY') {
                return { success: false, message: 'Email đã tồn tại' };
            }
            return { success: false, message: error.message };
        }
    }
    
    // Cập nhật giảng viên
    static async update(id, lecturerData) {
        try {
            const [result] = await db.execute(
                'UPDATE lecturers SET full_name = ?, phone_number = ? WHERE id = ?',
                [lecturerData.full_name, lecturerData.phone_number, id]
            );
            return { success: result.affectedRows > 0 };
        } catch (error) {
            console.error('Lỗi cập nhật giảng viên:', error);
            return { success: false, message: error.message };
        }
    }
    
    // Đổi mật khẩu
    static async changePassword(id, oldPassword, newPassword) {
        try {
            const [rows] = await db.execute(
                'SELECT password FROM lecturers WHERE id = ?',
                [id]
            );
            
            if (rows.length === 0) {
                return { success: false, message: 'Giảng viên không tồn tại' };
            }
            
            const isPasswordValid = await bcrypt.compare(oldPassword, rows[0].password);
            if (!isPasswordValid) {
                return { success: false, message: 'Mật khẩu cũ không đúng' };
            }
            
            const hashedPassword = await bcrypt.hash(newPassword, 10);
            const [result] = await db.execute(
                'UPDATE lecturers SET password = ? WHERE id = ?',
                [hashedPassword, id]
            );
            
            return { success: result.affectedRows > 0 };
        } catch (error) {
            console.error('Lỗi đổi mật khẩu:', error);
            return { success: false, message: error.message };
        }
    }
    
    // Xóa giảng viên
    static async delete(id) {
        try {
            const [result] = await db.execute(
                'DELETE FROM lecturers WHERE id = ?',
                [id]
            );
            return { success: result.affectedRows > 0 };
        } catch (error) {
            console.error('Lỗi xóa giảng viên:', error);
            return { success: false, message: error.message };
        }
    }
}

module.exports = LecturerModel;
