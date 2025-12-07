@extends('layouts.app')

@section('title', 'Đăng Ký')

@section('content')
<div class="auth-container">
    <div class="auth-box">
        <h1>🎓 Quản Lý Sinh Viên</h1>
        <h2>Đăng Ký Tài Khoản</h2>
        
        @if ($errors->any())
            <div class="alert error">
                <ul style="margin: 0; padding-left: 20px;">
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif
        
        <form method="POST" action="{{ route('register') }}">
            @csrf
            <div class="form-group">
                <label for="full_name">👤 Họ và Tên</label>
                <input 
                    type="text" 
                    id="full_name" 
                    name="full_name" 
                    placeholder="Nhập họ và tên"
                    value="{{ old('full_name') }}"
                    required
                >
            </div>
            
            <div class="form-group">
                <label for="email">📧 Email</label>
                <input 
                    type="email" 
                    id="email" 
                    name="email" 
                    placeholder="Nhập email"
                    value="{{ old('email') }}"
                    required
                >
            </div>
            
            <div class="form-group">
                <label for="password">🔒 Mật khẩu</label>
                <input 
                    type="password" 
                    id="password" 
                    name="password" 
                    placeholder="Nhập mật khẩu (tối thiểu 6 ký tự)"
                    required
                >
            </div>
            
            <div class="form-group">
                <label for="password_confirmation">🔒 Xác nhận mật khẩu</label>
                <input 
                    type="password" 
                    id="password_confirmation" 
                    name="password_confirmation" 
                    placeholder="Nhập lại mật khẩu"
                    required
                >
            </div>
            
            <button type="submit" class="btn btn-primary">Đăng Ký</button>
        </form>
        
        <div class="auth-footer">
            Đã có tài khoản? <a href="{{ route('login') }}">Đăng nhập</a>
        </div>
    </div>
</div>
@endsection
