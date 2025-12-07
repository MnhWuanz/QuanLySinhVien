<?php

namespace App\Http\Controllers;

use App\Models\Student;
use Illuminate\Http\Request;

class StudentController extends Controller
{
    public function index(Request $request)
    {
        $query = Student::query();

        if ($request->has('search') && $request->search != '') {
            $search = $request->search;
            $query->where(function($q) use ($search) {
                $q->where('student_code', 'like', "%{$search}%")
                  ->orWhere('full_name', 'like', "%{$search}%")
                  ->orWhere('email', 'like', "%{$search}%")
                  ->orWhere('class_name', 'like', "%{$search}%");
            });
        }

        $students = $query->orderBy('id', 'desc')->get();

        if ($request->ajax()) {
            return response()->json([
                'success' => true,
                'students' => $students
            ]);
        }

        return response()->json([
            'success' => true,
            'students' => $students
        ]);
    }

    public function store(Request $request)
    {
        $request->validate([
            'student_code' => 'required|unique:students,student_code',
            'full_name' => 'required|string|max:100',
            'email' => 'required|email|unique:students,email',
            'dob' => 'nullable|date|before:today',
            'class_name' => 'nullable|string|max:50',
            'score1' => 'nullable|numeric|min:0|max:10',
            'score2' => 'nullable|numeric|min:0|max:10',
            'score3' => 'nullable|numeric|min:0|max:10',
        ]);

        $student = Student::create($request->all());

        return response()->json([
            'success' => true,
            'message' => 'Thêm sinh viên thành công!',
            'student' => $student
        ]);
    }

    public function show($id)
    {
        $student = Student::findOrFail($id);
        return response()->json([
            'success' => true,
            'student' => $student
        ]);
    }

    public function update(Request $request, $id)
    {
        $student = Student::findOrFail($id);

        $request->validate([
            'student_code' => 'required|unique:students,student_code,'.$id,
            'full_name' => 'required|string|max:100',
            'email' => 'required|email|unique:students,email,'.$id,
            'dob' => 'nullable|date|before:today',
            'class_name' => 'nullable|string|max:50',
            'score1' => 'nullable|numeric|min:0|max:10',
            'score2' => 'nullable|numeric|min:0|max:10',
            'score3' => 'nullable|numeric|min:0|max:10',
        ]);

        $student->update($request->all());

        return response()->json([
            'success' => true,
            'message' => 'Cập nhật sinh viên thành công!',
            'student' => $student
        ]);
    }

    public function destroy($id)
    {
        $student = Student::findOrFail($id);
        $student->delete();

        return response()->json([
            'success' => true,
            'message' => 'Xóa sinh viên thành công!'
        ]);
    }
}
