<?php
header('Content-Type: application/json; charset=utf-8');
require_once __DIR__ . '/../config/session.php';
require_once __DIR__ . '/../includes/functions.php';

// Yêu cầu đăng nhập
if (!isLoggedIn()) {
    echo json_encode(['success' => false, 'message' => 'Chưa đăng nhập!']);
    exit;
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $id = $_POST['id'] ?? null;
    $student_code = trim($_POST['student_code'] ?? '');
    $full_name = trim($_POST['full_name'] ?? '');
    $email = trim($_POST['email'] ?? '');
    $dob = $_POST['dob'] ?? null;
    $class_name = trim($_POST['class_name'] ?? '');
    $score1 = floatval($_POST['score1'] ?? 0);
    $score2 = floatval($_POST['score2'] ?? 0);
    $score3 = floatval($_POST['score3'] ?? 0);
    // score và gpa sẽ được tính tự động trong functions.php
    
    // Validate
    if (empty($student_code) || empty($full_name) || empty($email)) {
        echo json_encode(['success' => false, 'message' => 'Vui lòng nhập đầy đủ thông tin!']);
        exit;
    }
    
    // Validate date of birth: không được lớn hơn ngày hiện tại (không cho phép sinh ngày trong tương lai)
    if (!empty($dob)) {
        $dobDate = strtotime($dob);
        $currentDate = strtotime(date('Y-m-d'));
        if ($dobDate > $currentDate) {
            echo json_encode(['success' => false, 'message' => 'Ngày sinh không được lớn hơn ngày hiện tại!']);
            exit;
        }
    }
    
    if ($id) {
        // Cập nhật
        $result = updateStudent($id, $student_code, $full_name, $email, $dob, $class_name, $score1, $score2, $score3);
    } else {
        // Thêm mới
        $result = createStudent($student_code, $full_name, $email, $dob, $class_name, $score1, $score2, $score3);
    }
    
    echo json_encode($result);
} else {
    echo json_encode(['success' => false, 'message' => 'Method not allowed']);
}
?>
