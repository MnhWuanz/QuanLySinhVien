<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Student;
use Carbon\Carbon;

class StudentSeeder extends Seeder
{
    public function run(): void
    {
        $students = [
            [
                'student_code' => 'SV001',
                'full_name' => 'Nguyễn Văn An',
                'email' => 'nva@student.edu.vn',
                'dob' => '2003-05-15',
                'class_name' => 'CNTT1',
                'score1' => 8.5,
                'score2' => 9.0,
                'score3' => 8.8,
            ],
            [
                'student_code' => 'SV002',
                'full_name' => 'Trần Thị Bích',
                'email' => 'ttb@student.edu.vn',
                'dob' => '2003-08-20',
                'class_name' => 'CNTT1',
                'score1' => 7.5,
                'score2' => 8.0,
                'score3' => 7.8,
            ],
            [
                'student_code' => 'SV003',
                'full_name' => 'Lê Minh Châu',
                'email' => 'lmc@student.edu.vn',
                'dob' => '2003-03-10',
                'class_name' => 'CNTT2',
                'score1' => 9.0,
                'score2' => 9.5,
                'score3' => 9.2,
            ],
            [
                'student_code' => 'SV004',
                'full_name' => 'Phạm Quốc Dũng',
                'email' => 'pqd@student.edu.vn',
                'dob' => '2003-11-25',
                'class_name' => 'CNTT2',
                'score1' => 6.5,
                'score2' => 7.0,
                'score3' => 6.8,
            ],
            [
                'student_code' => 'SV005',
                'full_name' => 'Hoàng Thị Hà',
                'email' => 'hth@student.edu.vn',
                'dob' => '2003-07-18',
                'class_name' => 'CNTT3',
                'score1' => 5.5,
                'score2' => 6.0,
                'score3' => 5.8,
            ],
        ];

        foreach ($students as $student) {
            Student::create($student);
        }
    }
}
