<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>🔓 Test SQL Injection - Demo Học Tập</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            padding: 40px 20px;
        }
        .container {
            max-width: 1000px;
            margin: 0 auto;
            background: white;
            border-radius: 15px;
            padding: 40px;
            box-shadow: 0 20px 60px rgba(0,0,0,0.3);
        }
        h1 {
            color: #e74c3c;
            text-align: center;
            margin-bottom: 10px;
            font-size: 2em;
        }
        .subtitle {
            text-align: center;
            color: #7f8c8d;
            margin-bottom: 30px;
        }
        .warning {
            background: #fff3cd;
            border: 2px solid #ffc107;
            padding: 20px;
            border-radius: 10px;
            margin-bottom: 30px;
            color: #856404;
            font-weight: bold;
        }
        .test-case {
            background: #f8f9fa;
            border-left: 5px solid #e74c3c;
            padding: 25px;
            margin-bottom: 25px;
            border-radius: 8px;
            transition: transform 0.2s;
        }
        .test-case:hover {
            transform: translateX(5px);
        }
        .test-case h3 {
            color: #e74c3c;
            margin-bottom: 15px;
            font-size: 1.3em;
        }
        .test-case p {
            margin-bottom: 15px;
            line-height: 1.6;
        }
        .payload {
            background: #2d3436;
            color: #00ff00;
            padding: 15px;
            border-radius: 5px;
            font-family: 'Courier New', monospace;
            margin: 15px 0;
            overflow-x: auto;
            font-size: 14px;
            border: 2px solid #00ff00;
        }
        .payload-label {
            font-weight: bold;
            color: #34495e;
            margin-top: 15px;
            margin-bottom: 5px;
        }
        .try-btn {
            background: linear-gradient(135deg, #e74c3c, #c0392b);
            color: white;
            border: none;
            padding: 12px 25px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 15px;
            margin-top: 15px;
            transition: all 0.3s;
            font-weight: bold;
        }
        .try-btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(231, 76, 60, 0.3);
        }
        .explanation {
            background: #e8f5e9;
            border-left: 4px solid #4caf50;
            padding: 20px;
            margin-top: 15px;
            border-radius: 5px;
            font-size: 14px;
        }
        .explanation strong {
            color: #27ae60;
        }
        .explanation code {
            background: #dcedc8;
            padding: 2px 6px;
            border-radius: 3px;
            font-family: 'Courier New', monospace;
            color: #1b5e20;
        }
        .steps {
            margin: 15px 0;
        }
        .steps ol, .steps ul {
            margin-left: 25px;
        }
        .steps li {
            margin-bottom: 10px;
            line-height: 1.6;
        }
        .fix-section {
            background: #e3f2fd;
            border-left: 5px solid #2196f3;
            padding: 25px;
            margin-top: 30px;
            border-radius: 8px;
        }
        .fix-section h3 {
            color: #1976d2;
            margin-bottom: 15px;
        }
        .code-block {
            background: #263238;
            color: #aed581;
            padding: 20px;
            border-radius: 5px;
            overflow-x: auto;
            margin: 15px 0;
            font-family: 'Courier New', monospace;
            font-size: 13px;
            line-height: 1.8;
        }
        .danger {
            color: #e74c3c;
            font-weight: bold;
        }
        .success {
            color: #27ae60;
            font-weight: bold;
        }
        .attack-vector {
            background: #ffebee;
            border: 2px solid #e74c3c;
            padding: 15px;
            border-radius: 5px;
            margin: 15px 0;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>🔓 Test SQL Injection</h1>
        <p class="subtitle">Demo Học Tập - Mô Phỏng Lỗ Hổng Bảo Mật</p>
        
        <div class="warning">
            ⚠️ <strong>CẢNH BÁO QUAN TRỌNG:</strong><br>
            File này chỉ dùng để học tập và kiểm tra lỗ hổng bảo mật trong môi trường thử nghiệm.<br>
            <span class="danger">TUYỆT ĐỐI KHÔNG</span> sử dụng để tấn công hệ thống thực tế hoặc trên production!
        </div>

        <!-- Test Case 1 -->
        <div class="test-case">
            <h3>🧪 Test 1: Bypass Authentication (Bỏ qua xác thực)</h3>
            <p><strong>Mục đích:</strong> Đăng nhập vào hệ thống mà không cần biết mật khẩu đúng</p>
            
            <div class="steps">
                <strong>📋 Các bước thực hiện:</strong>
                <ol>
                    <li>Mở trang đăng nhập: <a href="login.php" target="_blank" style="color: #3498db; font-weight: bold;">login.php</a></li>
                    <li>Nhập payload sau vào ô <strong>Email</strong>:</li>
                </ol>
            </div>
            
            <div class="payload-label">📝 Payload Email:</div>
            <div class="payload">admin@test.com' OR '1'='1</div>
            
            <div class="payload-label">📝 Mật khẩu:</div>
            <div class="payload">anything</div>
            
            <div class="steps">
                <ol start="3">
                    <li>Click nút <strong>"Đăng nhập"</strong></li>
                    <li>✅ Kết quả: Đăng nhập thành công mà không cần mật khẩu đúng!</li>
                </ol>
            </div>
            
            <button class="try-btn" onclick="window.open('login.php', '_blank')">🚀 Thử ngay</button>
            
            <div class="explanation">
                <strong>💡 Giải thích kỹ thuật:</strong><br><br>
                <strong>Query SQL ban đầu:</strong><br>
                <code>SELECT * FROM lecturers WHERE email = '$email' AND password = '$password'</code><br><br>
                
                <strong>Query SQL sau khi inject:</strong><br>
                <code>SELECT * FROM lecturers WHERE email = 'admin@test.com' OR '1'='1' AND password = 'anything'</code><br><br>
                
                <strong>Tại sao hoạt động?</strong><br>
                - Điều kiện <code>'1'='1'</code> luôn luôn đúng (TRUE)<br>
                - Toán tử <code>OR</code> khiến cả câu lệnh WHERE trả về TRUE<br>
                - Query trả về user đầu tiên trong database → Đăng nhập thành công!
            </div>
        </div>

        <!-- Test Case 2 -->
        <div class="test-case">
            <h3>🧪 Test 2: Comment-Based Bypass (Bỏ qua bằng comment)</h3>
            <p><strong>Mục đích:</strong> Vô hiệu hóa phần kiểm tra password bằng SQL comment</p>
            
            <div class="payload-label">📝 Payload Email:</div>
            <div class="payload">admin@test.com'--</div>
            
            <div class="payload-label">📝 Mật khẩu:</div>
            <div class="payload">(để trống hoặc gì cũng được)</div>
            
            <button class="try-btn" onclick="window.open('login.php', '_blank')">🚀 Thử ngay</button>
            
            <div class="explanation">
                <strong>💡 Giải thích kỹ thuật:</strong><br><br>
                <strong>Query SQL sau khi inject:</strong><br>
                <code>SELECT * FROM lecturers WHERE email = 'admin@test.com'--' AND password = ''</code><br><br>
                
                <strong>Tại sao hoạt động?</strong><br>
                - Dấu <code>--</code> là ký tự comment trong SQL<br>
                - Mọi thứ sau <code>--</code> đều bị bỏ qua<br>
                - Phần <code>AND password = ''</code> không được thực thi<br>
                - Chỉ cần email đúng là đăng nhập được!
            </div>
        </div>

        <!-- Test Case 3 -->
        <div class="test-case">
            <h3>🧪 Test 3: Always True Condition</h3>
            <p><strong>Mục đích:</strong> Tạo điều kiện luôn đúng để bypass</p>
            
            <div class="payload-label">📝 Payload Email:</div>
            <div class="payload">' OR 1=1--</div>
            
            <div class="payload-label">📝 Mật khẩu:</div>
            <div class="payload">(bất kỳ)</div>
            
            <button class="try-btn" onclick="window.open('login.php', '_blank')">🚀 Thử ngay</button>
            
            <div class="explanation">
                <strong>💡 Giải thích:</strong><br>
                Query thành: <code>SELECT * FROM lecturers WHERE email = '' OR 1=1--' AND password = ''</code><br>
                Điều kiện <code>1=1</code> luôn đúng → Trả về tất cả users → Đăng nhập bằng user đầu tiên
            </div>
        </div>

        <!-- Test Case 4 -->
        <div class="test-case">
            <h3>🧪 Test 4: Union-Based Injection (Lấy dữ liệu)</h3>
            <p><strong>Mục đích:</strong> Trích xuất thông tin từ database</p>
            
            <div class="attack-vector">
                <strong>⚠️ Vector tấn công nâng cao:</strong> Payload này có thể lộ password hash từ database
            </div>
            
            <div class="payload-label">📝 Payload Email:</div>
            <div class="payload">' UNION SELECT id, email, password, full_name, 5 FROM lecturers--</div>
            
            <button class="try-btn" onclick="window.open('login.php', '_blank')">🚀 Thử ngay</button>
            
            <div class="explanation">
                <strong>💡 Giải thích:</strong><br>
                - Sử dụng <code>UNION</code> để kết hợp 2 query<br>
                - Có thể lấy dữ liệu từ bất kỳ bảng nào trong database<br>
                - Nguy hiểm: Có thể lộ password hash, email, thông tin nhạy cảm
            </div>
        </div>

        <!-- Fix Section -->
        <div class="fix-section">
            <h3>🛡️ Cách Sửa Lỗi SQL Injection</h3>
            
            <p><strong>❌ CODE CÓ LỖI (Hiện tại):</strong></p>
            <div class="code-block">
<span style="color: #ff5252;">// ❌ NGUY HIỂM - Ghép trực tiếp biến vào query</span>
$query = "SELECT * FROM lecturers WHERE email = '<span style="color: #ff5252;">$email</span>' AND password = '<span style="color: #ff5252;">$password</span>'";
$stmt = $pdo->query($query);
$user = $stmt->fetch();
            </div>

            <p><strong>✅ CODE ĐÚNG (Dùng Prepared Statement):</strong></p>
            <div class="code-block">
<span style="color: #69f0ae;">// ✅ AN TOÀN - Dùng Prepared Statement</span>
$stmt = $pdo->prepare("SELECT * FROM lecturers WHERE email = <span style="color: #69f0ae;">?</span>");
$stmt->execute([<span style="color: #69f0ae;">$email</span>]);
$user = $stmt->fetch();

<span style="color: #69f0ae;">// Kiểm tra password bằng password_verify()</span>
if ($user && <span style="color: #69f0ae;">password_verify($password, $user['password'])</span>) {
    <span style="color: #69f0ae;">// Đăng nhập thành công</span>
    $_SESSION['user_id'] = $user['id'];
    return ['success' => true, 'message' => 'Đăng nhập thành công!'];
}
            </div>

            <p><strong>🔐 5 Nguyên tắc phòng chống SQL Injection:</strong></p>
            <div class="steps">
                <ol>
                    <li>✅ <strong>Luôn dùng Prepared Statements</strong> với placeholder <code>?</code> hoặc <code>:param</code></li>
                    <li>✅ <strong>Không bao giờ ghép trực tiếp</strong> biến người dùng vào SQL query</li>
                    <li>✅ <strong>Validate & sanitize input</strong> trước khi xử lý</li>
                    <li>✅ <strong>Hash password</strong> bằng <code>password_hash()</code></li>
                    <li>✅ <strong>Verify password</strong> bằng <code>password_verify()</code> - không so sánh trực tiếp trong SQL</li>
                </ol>
            </div>

            <p style="margin-top: 20px;"><strong>📊 So sánh:</strong></p>
            <table style="width: 100%; border-collapse: collapse; margin-top: 10px;">
                <tr style="background: #f8f9fa;">
                    <th style="padding: 12px; border: 1px solid #ddd; text-align: left;">Tiêu chí</th>
                    <th style="padding: 12px; border: 1px solid #ddd; text-align: left;">Code Lỗi ❌</th>
                    <th style="padding: 12px; border: 1px solid #ddd; text-align: left;">Code Đúng ✅</th>
                </tr>
                <tr>
                    <td style="padding: 12px; border: 1px solid #ddd;"><strong>SQL Query</strong></td>
                    <td style="padding: 12px; border: 1px solid #ddd; color: #e74c3c;"><code>WHERE email = '$email'</code></td>
                    <td style="padding: 12px; border: 1px solid #ddd; color: #27ae60;"><code>WHERE email = ?</code></td>
                </tr>
                <tr style="background: #f8f9fa;">
                    <td style="padding: 12px; border: 1px solid #ddd;"><strong>Execute</strong></td>
                    <td style="padding: 12px; border: 1px solid #ddd; color: #e74c3c;"><code>query($query)</code></td>
                    <td style="padding: 12px; border: 1px solid #ddd; color: #27ae60;"><code>execute([$email])</code></td>
                </tr>
                <tr>
                    <td style="padding: 12px; border: 1px solid #ddd;"><strong>Bảo mật</strong></td>
                    <td style="padding: 12px; border: 1px solid #ddd; color: #e74c3c;">❌ Dễ bị SQL Injection</td>
                    <td style="padding: 12px; border: 1px solid #ddd; color: #27ae60;">✅ An toàn 100%</td>
                </tr>
                <tr style="background: #f8f9fa;">
                    <td style="padding: 12px; border: 1px solid #ddd;"><strong>Password Check</strong></td>
                    <td style="padding: 12px; border: 1px solid #ddd; color: #e74c3c;">❌ So sánh trong SQL</td>
                    <td style="padding: 12px; border: 1px solid #ddd; color: #27ae60;">✅ password_verify()</td>
                </tr>
            </table>
        </div>

        <div class="warning" style="margin-top: 30px; background: #ffebee; border-color: #e74c3c;">
            <strong>🎯 KẾT LUẬN:</strong><br><br>
            <strong class="danger">Lỗi SQL Injection</strong> là một trong những lỗ hổng bảo mật nghiêm trọng NHẤT:<br><br>
            🔴 Cho phép hacker bypass authentication (vào hệ thống không cần password)<br>
            🔴 Đọc/sửa/xóa dữ liệu trong database<br>
            🔴 Chiếm quyền điều khiển toàn bộ hệ thống<br>
            🔴 Đánh cắp thông tin nhạy cảm (email, password hash, dữ liệu cá nhân)<br><br>
            <strong class="success">✅ GIẢI PHÁP:</strong> Luôn dùng <strong>Prepared Statements</strong> để bảo vệ ứng dụng!
        </div>

        <div style="text-align: center; margin-top: 30px; padding: 20px; background: #f8f9fa; border-radius: 8px;">
            <p style="color: #7f8c8d; font-size: 14px;">
                📚 File này là một phần của dự án học tập về bảo mật ứng dụng web<br>
                💡 Hãy luôn code an toàn và bảo vệ dữ liệu người dùng!
            </p>
        </div>
    </div>
</body>
</html>
