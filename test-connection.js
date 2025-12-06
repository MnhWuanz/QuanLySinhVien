// File test kết nối database
const db = require('./database/db');
const StudentModel = require('./models/StudentModel');
const LecturerModel = require('./models/LecturerModel');

async function testConnection() {
    try {
        console.log('\n🔍 Testing database connection...\n');
        
        // Test 1: Lấy danh sách sinh viên
        console.log('📚 Lấy danh sách sinh viên:');
        const students = await StudentModel.getAll();
        console.log(`   → Tìm thấy ${students.length} sinh viên`);
        if (students.length > 0) {
            console.log(`   → Sinh viên đầu tiên: ${students[0].full_name} (${students[0].student_code})`);
        }
        
        // Test 2: Lấy danh sách giảng viên
        console.log('\n👨‍🏫 Lấy danh sách giảng viên:');
        const lecturers = await LecturerModel.getAll();
        console.log(`   → Tìm thấy ${lecturers.length} giảng viên`);
        if (lecturers.length > 0) {
            console.log(`   → Giảng viên đầu tiên: ${lecturers[0].full_name} (${lecturers[0].email})`);
        }
        
        // Test 3: Thống kê
        console.log('\n📊 Thống kê sinh viên:');
        const stats = await StudentModel.getStats();
        if (stats) {
            console.log(`   → Tổng số sinh viên: ${stats.total}`);
            console.log(`   → Điểm TB chung: ${stats.avgGpa}`);
            console.log(`   → Phân bổ theo lớp:`);
            stats.byClass.forEach(c => {
                console.log(`      • ${c.class_name}: ${c.count} sinh viên`);
            });
        }
        
        console.log('\n✅ Test hoàn tất!\n');
        process.exit(0);
        
    } catch (error) {
        console.error('\n❌ Lỗi:', error.message);
        process.exit(1);
    }
}

testConnection();
