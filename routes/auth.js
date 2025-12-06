const express = require('express');
const router = express.Router();
const LecturerModel = require('../models/LecturerModel');

// API Đăng ký giảng viên
router.post('/register', async (req, res) => {
    try {
        const { full_name, email, phone_number, password } = req.body;
        
        // Validate input
        if (!full_name || !email || !password) {
            return res.json({
                success: false,
                message: 'Vui lòng điền đầy đủ thông tin bắt buộc'
            });
        }
        
        // Validate email format
        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailRegex.test(email)) {
            return res.json({
                success: false,
                message: 'Email không đúng định dạng'
            });
        }
        
        // Validate password length
        if (password.length < 6) {
            return res.json({
                success: false,
                message: 'Mật khẩu phải có ít nhất 6 ký tự'
            });
        }
        
        // Tạo tài khoản
        const result = await LecturerModel.create({
            full_name,
            email,
            phone_number: phone_number || null,
            password
        });
        
        if (result.success) {
            res.json({
                success: true,
                message: 'Đăng ký thành công',
                lecturer_id: result.id
            });
        } else {
            res.json({
                success: false,
                message: result.message
            });
        }
        
    } catch (error) {
        console.error('Lỗi API register:', error);
        res.status(500).json({
            success: false,
            message: 'Lỗi server'
        });
    }
});

// API Đăng nhập
router.post('/login', async (req, res) => {
    try {
        const { email, password } = req.body;
        
        if (!email || !password) {
            return res.json({
                success: false,
                message: 'Vui lòng nhập email và mật khẩu'
            });
        }
        
        const result = await LecturerModel.login(email, password);
        
        if (result.success) {
            // Lưu session
            req.session.userId = result.lecturer.id;
            req.session.userEmail = result.lecturer.email;
            req.session.userName = result.lecturer.full_name;
            
            res.json({
                success: true,
                lecturer: result.lecturer
            });
        } else {
            res.json({
                success: false,
                message: result.message
            });
        }
        
    } catch (error) {
        console.error('Lỗi API login:', error);
        res.status(500).json({
            success: false,
            message: 'Lỗi server'
        });
    }
});

// API Đăng xuất
router.post('/logout', (req, res) => {
    req.session.destroy((err) => {
        if (err) {
            return res.json({
                success: false,
                message: 'Lỗi khi đăng xuất'
            });
        }
        res.json({
            success: true,
            message: 'Đăng xuất thành công'
        });
    });
});

// API Lấy thông tin user hiện tại
router.get('/me', async (req, res) => {
    if (!req.session.userId) {
        return res.json({
            success: false,
            message: 'Chưa đăng nhập'
        });
    }
    
    try {
        const lecturer = await LecturerModel.getById(req.session.userId);
        if (lecturer) {
            res.json({
                success: true,
                lecturer
            });
        } else {
            res.json({
                success: false,
                message: 'Không tìm thấy thông tin user'
            });
        }
    } catch (error) {
        console.error('Lỗi API me:', error);
        res.status(500).json({
            success: false,
            message: 'Lỗi server'
        });
    }
});

module.exports = router;
