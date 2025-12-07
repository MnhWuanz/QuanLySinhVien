@extends('layouts.app')

@section('title', 'Đổi Mật Khẩu')

@section('content')
<div class="auth-container">
    <div class="auth-box">
        <h1>🎓 Quản Lý Sinh Viên</h1>
        <h2>Đổi Mật Khẩu</h2>
        
        @if (session('success'))
            <div class="alert success">
                {{ session('success') }}
            </div>
        @endif
        
        @if ($errors->any())
            <div class="alert error">
                <ul style="margin: 0; padding-left: 20px;">
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif
        
        <form method="POST" action="{{ route('change-password') }}">
            @csrf
            
            <div class="form-group">
                <label for="old_password">🔒 Mật khẩu cũ</label>
                <input 
                    type="password" 
                    id="old_password" 
                    name="old_password" 
                    placeholder="Nhập mật khẩu cũ"
                    required
                >
            </div>
            
            <div class="form-group">
                <label for="new_password">🔒 Mật khẩu mới</label>
                <input 
                    type="password" 
                    id="new_password" 
                    name="new_password" 
                    placeholder="Nhập mật khẩu mới"
                    required
                >
            </div>
            
            <div class="form-group">
                <label for="new_password_confirmation">🔒 Xác nhận mật khẩu mới</label>
                <input 
                    type="password" 
                    id="new_password_confirmation" 
                    name="new_password_confirmation" 
                    placeholder="Nhập lại mật khẩu mới"
                    required
                >
            </div>
            
            <button type="submit" class="btn btn-primary">Đổi Mật Khẩu</button>
        </form>
        
        <div class="auth-footer">
            <a href="{{ route('dashboard') }}">← Quay lại Dashboard</a>
        </div>
    </div>
</div>
@endsection
