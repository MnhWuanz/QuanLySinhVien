@extends('layouts.app')

@section('title', 'Đăng Nhập')

@section('content')
<div class="auth-container">
    <div class="auth-box">
        <h1>🎓 Quản Lý Sinh Viên</h1>
        <h2>Đăng Nhập</h2>
        
        @if ($errors->any())
            <div class="alert error">
                {{ $errors->first() }}
            </div>
        @endif
        
        <form method="POST" action="{{ route('login') }}">
            @csrf
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
                    placeholder="Nhập mật khẩu"
                    required
                >
            </div>
            
            <button type="submit" class="btn btn-primary">Đăng Nhập</button>
        </form>
        
        <div class="auth-footer">
            Chưa có tài khoản? <a href="{{ route('register') }}">Đăng ký ngay</a>
        </div>
    </div>
</div>
@endsection
