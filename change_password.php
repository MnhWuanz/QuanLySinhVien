<?php
require_once __DIR__ . '/config/session.php';
require_once __DIR__ . '/includes/functions.php';

// Yêu cầu đăng nhập
requireLogin();
$user = getCurrentUser();

// Xử lý đổi mật khẩu
$error = '';
$success = '';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $oldPassword = $_POST['old_password'] ?? '';
    $newPassword = $_POST['new_password'] ?? '';
    $confirmPassword = $_POST['confirm_password'] ?? '';
    
    // Validate
    if (empty($oldPassword) || empty($newPassword) || empty($confirmPassword)) {
        $error = 'Vui lòng nhập đầy đủ thông tin!';
    } elseif (strlen($newPassword) < 6) {
        $error = 'Mật khẩu mới phải có ít nhất 6 ký tự!';
    } elseif ($newPassword !== $confirmPassword) {
        $error = 'Mật khẩu xác nhận không khớp!';
    } elseif ($oldPassword === $newPassword) {
        $error = 'Mật khẩu mới phải khác mật khẩu cũ!';
    } else {
        $result = changePassword($user['id'], $oldPassword, $newPassword);
        if ($result['success']) {
            $success = $result['message'];
            // Reset form
            $_POST = [];
        } else {
            $error = $result['message'];
        }
    }
}
?>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đổi Mật Khẩu - Quản Lý Sinh Viên</title>
    <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
    <div class="dashboard">
        <!-- Header -->
        <header class="header">
            <h1>🎓 Quản Lý Sinh Viên</h1>
            <div class="user-info">
                <span>Xin chào, <strong><?php echo htmlspecialchars($user['full_name']); ?></strong></span>
                <a href="dashboard.php" class="btn btn-secondary">← Quay lại</a>
                <a href="logout.php" class="btn btn-danger">Đăng xuất</a>
            </div>
        </header>
        
        <!-- Change Password Form -->
        <div class="change-password-container">
            <div class="change-password-box">
                <h2>🔒 Đổi Mật Khẩu</h2>
                <p class="subtitle">Thay đổi mật khẩu cho tài khoản: <strong><?php echo htmlspecialchars($user['email']); ?></strong></p>
                
                <?php if ($error): ?>
                    <div class="alert error"><?php echo htmlspecialchars($error); ?></div>
                <?php endif; ?>
                
                <?php if ($success): ?>
                    <div class="alert success">
                        <?php echo htmlspecialchars($success); ?>
                        <br><small>Bạn có thể <a href="dashboard.php">quay lại dashboard</a></small>
                    </div>
                <?php endif; ?>
                
                <form method="POST" action="">
                    <div class="form-group">
                        <label for="old_password">🔐 Mật khẩu cũ <span class="required">*</span></label>
                        <input 
                            type="password" 
                            id="old_password" 
                            name="old_password" 
                            placeholder="Nhập mật khẩu hiện tại"
                            required
                            autocomplete="current-password"
                        >
                    </div>
                    
                    <div class="form-group">
                        <label for="new_password">🔑 Mật khẩu mới <span class="required">*</span></label>
                        <input 
                            type="password" 
                            id="new_password" 
                            name="new_password" 
                            placeholder="Ít nhất 6 ký tự"
                            required
                            autocomplete="new-password"
                        >
                        <small style="color: #666; font-size: 12px; margin-top: 5px; display: block;">
                            Mật khẩu phải có ít nhất 6 ký tự và khác mật khẩu cũ
                        </small>
                    </div>
                    
                    <div class="form-group">
                        <label for="confirm_password">🔑 Xác nhận mật khẩu mới <span class="required">*</span></label>
                        <input 
                            type="password" 
                            id="confirm_password" 
                            name="confirm_password" 
                            placeholder="Nhập lại mật khẩu mới"
                            required
                            autocomplete="new-password"
                        >
                    </div>
                    
                    <div class="form-actions">
                        <button type="submit" class="btn btn-primary">💾 Đổi Mật Khẩu</button>
                        <a href="dashboard.php" class="btn btn-secondary">Hủy</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
