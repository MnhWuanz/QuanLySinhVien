<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
    protected $fillable = [
        'student_code',
        'full_name',
        'email',
        'dob',
        'class_name',
        'score1',
        'score2',
        'score3',
        'score',
        'gpa',
    ];

    protected $casts = [
        'dob' => 'date',
        'score1' => 'float',
        'score2' => 'float',
        'score3' => 'float',
        'score' => 'float',
        'gpa' => 'float',
    ];

    // Calculate average score
    public function calculateAverageScore(): float
    {
        return round(($this->score1 + $this->score2 + $this->score3) / 3, 2);
    }

    // Convert score to GPA
    public function convertScoreToGPA(float $score): float
    {
        if ($score >= 9.0) return 4.0;
        if ($score >= 8.5) return 3.7;
        if ($score >= 8.0) return 3.5;
        if ($score >= 7.5) return 3.3;
        if ($score >= 7.0) return 3.0;
        if ($score >= 6.5) return 2.7;
        if ($score >= 6.0) return 2.5;
        if ($score >= 5.5) return 2.3;
        if ($score >= 5.0) return 2.0;
        if ($score >= 4.0) return 1.5;
        return 0.0;
    }

    // Get grade classification
    public function getGradeClassification(): array
    {
        $gpa = $this->gpa;
        
        if ($gpa >= 3.6) return ['text' => 'Xuất sắc', 'class' => 'grade-xuat-sac'];
        if ($gpa >= 3.0) return ['text' => 'Giỏi', 'class' => 'grade-gioi'];
        if ($gpa >= 2.5) return ['text' => 'Khá', 'class' => 'grade-kha'];
        if ($gpa >= 2.0) return ['text' => 'Trung bình', 'class' => 'grade-trung-binh'];
        if ($gpa >= 1.0) return ['text' => 'Yếu', 'class' => 'grade-yeu'];
        return ['text' => 'Kém', 'class' => 'grade-yeu'];
    }

    // Auto calculate on save
    protected static function boot()
    {
        parent::boot();

        static::saving(function ($student) {
            $student->score = $student->calculateAverageScore();
            $student->gpa = $student->convertScoreToGPA($student->score);
        });
    }
}
