<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('students', function (Blueprint $table) {
            $table->id();
            $table->string('student_code', 20)->unique();
            $table->string('full_name', 100);
            $table->string('email', 100)->unique();
            $table->date('dob')->nullable();
            $table->string('class_name', 50)->nullable();
            $table->decimal('score1', 4, 2)->default(0);
            $table->decimal('score2', 4, 2)->default(0);
            $table->decimal('score3', 4, 2)->default(0);
            $table->decimal('score', 4, 2)->default(0);
            $table->float('gpa')->default(0);
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('students');
    }
};
