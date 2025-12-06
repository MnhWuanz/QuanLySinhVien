const mysql = require('mysql2');

// Cấu hình kết nối database
const dbConfig = {
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: '',  // Thay bằng mật khẩu MySQL của bạn
    database: 'simple_student_management',
    charset: 'utf8mb4',
    waitForConnections: true,
    connectionLimit: 10,
    queueLimit: 0
};

// Tạo connection pool
const pool = mysql.createPool(dbConfig);

// Sử dụng Promise wrapper để dùng async/await
const promisePool = pool.promise();

// Test connection
pool.getConnection((err, connection) => {
    if (err) {
        console.error('❌ Lỗi kết nối database:', err.message);
        if (err.code === 'ECONNREFUSED') {
            console.error('   → MySQL server chưa được khởi động');
        } else if (err.code === 'ER_ACCESS_DENIED_ERROR') {
            console.error('   → Sai username hoặc password');
        } else if (err.code === 'ER_BAD_DB_ERROR') {
            console.error('   → Database "simple_student_management" không tồn tại');
        }
        return;
    }
    console.log('✅ Kết nối database thành công!');
    console.log(`   Database: ${dbConfig.database}`);
    connection.release();
});

// Export để sử dụng trong các file khác
module.exports = promisePool;
