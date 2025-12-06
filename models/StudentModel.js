const db = require('../database/db');

class StudentModel {
    // Lấy tất cả sinh viên
    static async getAll(filters = {}) {
        try {
            let query = 'SELECT * FROM students WHERE 1=1';
            const params = [];
            
            // Filter theo lớp
            if (filters.class_name) {
                query += ' AND class_name = ?';
                params.push(filters.class_name);
            }
            
            // Tìm kiếm theo tên hoặc mã sinh viên
            if (filters.search) {
                query += ' AND (student_code LIKE ? OR full_name LIKE ? OR email LIKE ?)';
                const searchTerm = `%${filters.search}%`;
                params.push(searchTerm, searchTerm, searchTerm);
            }
            
            // Sắp xếp
            query += ' ORDER BY student_code';
            
            const [rows] = await db.execute(query, params);
            return rows;
        } catch (error) {
            console.error('Lỗi lấy danh sách sinh viên:', error);
            return [];
        }
    }
    
    // Lấy thông tin sinh viên theo ID
    static async getById(id) {
        try {
            const [rows] = await db.execute(
                'SELECT * FROM students WHERE id = ?',
                [id]
            );
            return rows[0] || null;
        } catch (error) {
            console.error('Lỗi lấy thông tin sinh viên:', error);
            return null;
        }
    }
    
    // Lấy sinh viên theo mã sinh viên
    static async getByCode(student_code) {
        try {
            const [rows] = await db.execute(
                'SELECT * FROM students WHERE student_code = ?',
                [student_code]
            );
            return rows[0] || null;
        } catch (error) {
            console.error('Lỗi lấy thông tin sinh viên:', error);
            return null;
        }
    }
    
    // Tạo sinh viên mới
    static async create(studentData) {
        try {
            const [result] = await db.execute(
                `INSERT INTO students (student_code, full_name, dob, class_name, email, gpa)
                 VALUES (?, ?, ?, ?, ?, ?)`,
                [
                    studentData.student_code,
                    studentData.full_name,
                    studentData.dob,
                    studentData.class_name,
                    studentData.email,
                    studentData.gpa || 0
                ]
            );
            return { success: true, id: result.insertId };
        } catch (error) {
            console.error('Lỗi tạo sinh viên:', error);
            if (error.code === 'ER_DUP_ENTRY') {
                return { success: false, message: 'Mã sinh viên hoặc email đã tồn tại' };
            }
            return { success: false, message: error.message };
        }
    }
    
    // Cập nhật sinh viên
    static async update(id, studentData) {
        try {
            const [result] = await db.execute(
                `UPDATE students 
                 SET full_name = ?, dob = ?, class_name = ?, email = ?, gpa = ?
                 WHERE id = ?`,
                [
                    studentData.full_name,
                    studentData.dob,
                    studentData.class_name,
                    studentData.email,
                    studentData.gpa,
                    id
                ]
            );
            return { success: result.affectedRows > 0 };
        } catch (error) {
            console.error('Lỗi cập nhật sinh viên:', error);
            if (error.code === 'ER_DUP_ENTRY') {
                return { success: false, message: 'Email đã tồn tại' };
            }
            return { success: false, message: error.message };
        }
    }
    
    // Xóa sinh viên
    static async delete(id) {
        try {
            const [result] = await db.execute(
                'DELETE FROM students WHERE id = ?',
                [id]
            );
            return { success: result.affectedRows > 0 };
        } catch (error) {
            console.error('Lỗi xóa sinh viên:', error);
            return { success: false, message: error.message };
        }
    }
    
    // Thống kê
    static async getStats() {
        try {
            const [total] = await db.execute('SELECT COUNT(*) as total FROM students');
            const [avgGpa] = await db.execute('SELECT AVG(gpa) as avg_gpa FROM students');
            const [byClass] = await db.execute(`
                SELECT class_name, COUNT(*) as count 
                FROM students 
                GROUP BY class_name 
                ORDER BY count DESC
            `);
            
            return {
                total: total[0].total,
                avgGpa: parseFloat(avgGpa[0].avg_gpa).toFixed(2),
                byClass: byClass
            };
        } catch (error) {
            console.error('Lỗi lấy thống kê:', error);
            return null;
        }
    }
}

module.exports = StudentModel;
