@extends('layouts.app')

@section('content')
<nav class="navbar navbar-expand navbar-dark  topbar mb-4 static-top">

    <a class="nav-link text-primary " href="{{ url('/') }}" role="button" aria-expanded="false">
        <i class="fa fa-home"></i>
        Home
    </a>

    <ul class="navbar-nav ml-auto ">

        <li class="nav-item dropdown no-arrow mx-1">
            @if (Route::has('login'))
            <div class="top-right links">
                @auth

        <li class="nav-item dropdown no-arrow mx-1">
            <a class="nav-link text-primary " href="{{ url('/home') }}" role="button" aria-haspopup="true"
                aria-expanded="false">
                <span class="badge badge-danger badge-counter">Home</span>
            </a>

        </li>
        @else
        @if (Route::has('register'))

        <li class="nav-item dropdown no-arrow mx-1">
            <a class="nav-link text-primary " href="{{ route('login') }}" role="button" aria-haspopup="true"
                aria-expanded="false">
                Login
            </a>

        </li>
        <li class="nav-item dropdown no-arrow mx-1">
            <a class="nav-link text-primary " href="{{ route('register') }}" role="button" aria-haspopup="true"
                aria-expanded="false">
                Register
            </a>
        </li>
        @endif
        @endauth
        @endif
        </li>
        <div class="topbar-divider d-none d-sm-block"></div>
    </ul>
</nav>
<div class="container">

    <div class="row justify-content-center my-4">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">{{ __('Login') }}</div>

                <div class="card-body">
                    <form method="POST" action="{{ route('login') }}">
                        @csrf

                        <div class="form-group row">
                            <label for="email"
                                class="col-md-4 col-form-label text-md-right">{{ __('E-Mail Address') }}</label>

                            <div class="col-md-6">
                                <input id="email" type="email" class="form-control @error('email') is-invalid @enderror"
                                    name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>

                                @error('email')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="password"
                                class="col-md-4 col-form-label text-md-right">{{ __('Password') }}</label>

                            <div class="col-md-6">
                                <input id="password" type="password"
                                    class="form-control @error('password') is-invalid @enderror" name="password"
                                    required autocomplete="current-password">

                                @error('password')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <div class="col-md-6 offset-md-4">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" name="remember" id="remember"
                                        {{ old('remember') ? 'checked' : '' }}>

                                    <label class="form-check-label" for="remember">
                                        {{ __('Remember Me') }}
                                    </label>
                                </div>
                            </div>
                        </div>

                        <div class="form-group row mb-0">
                            <div class="col-md-8 offset-md-4">
                                <button type="submit" class="btn btn-primary">
                                    {{ __('Login') }}
                                </button>

                                @if (Route::has('password.request'))
                                <a class="btn btn-link" href="{{ route('password.request') }}">
                                    {{ __('Forgot Your Password?') }}
                                </a>
                                @endif
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection