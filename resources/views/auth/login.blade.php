@extends('layouts.app')

@section('styles')
        <link href="{{asset('css/customlogin.css')}}" rel="stylesheet">
@endsection

@section('content')

<!--<div class="container p-5" id="container">-->
	<!--<div class="form-container sign-up-container">-->
	<!--	<form action="#">-->
	<!--		<h1>Create Account</h1>-->
	<!--		<div class="social-container">-->
	<!--			<a href="#" class="social"><i class="fab fa-facebook-f"></i></a>-->
	<!--			<a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>-->
	<!--			<a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>-->
	<!--		</div>-->
	<!--		<span>or use your email for registration</span>-->
	<!--		<input type="text" placeholder="Name" />-->
	<!--		<input type="email" placeholder="Email" />-->
	<!--		<input type="password" placeholder="Password" />-->
	<!--		<button>Sign Up</button>-->
	<!--	</form>-->
	<!--</div>-->
	<div class="form-container sign-in-container">
                    
		<form method="POST" action="{{ route('login') }}">
                        @csrf
			<h1>Log in </h1>
			<div class="social-container">
				<!--<a href="#" class="social"><i class="fab fa-facebook-f"></i></a>-->
				<!--<a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>-->
				<!--<a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>-->
			</div>
			
			<span>Ingresa tus Datos</span>
		
		<!--<div class="col-md-12">-->
                                <input id="email" type="email" class="form-control @error('email') is-invalid @enderror"
                                    name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>

                                @error('email')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            <!--</div>-->
			
			<!--<div class="col-md-12">-->
                                <input id="password" type="password"
                                    class="form-control @error('password') is-invalid @enderror" name="password"
                                    required autocomplete="current-password">

                                @error('password')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            <!--</div>-->
			
			
			<button type="submit">Ingresar</button>
		</form>
	</div>
	<div class="overlay-container">
		<div class="overlay">
			<!--<div class="overlay-panel overlay-left">-->
			<!--	<h1>Welcome Back!</h1>-->
			<!--	<p>To keep connected with us please login with your personal info</p>-->
			<!--	<button class="ghost" id="signIn">Sign In</button>-->
			<!--</div>-->
			<div class="overlay-panel overlay-right">
			    
			    <img class="img img-fluid" src="{{asset('img/undraw_navigator_a479.png')}}"></img>
			    
				<!--<h1>Hello, Friend!</h1>-->
				<small class="text text-info"> Comienza haciendo lo que es necesario, después lo posible y de repente estarás haciendo lo imposible. 
				<br>
				(San Francisco de Asís)</small>
				<!--<button class="ghost" id="signUp">Sign Up</button>-->
			</div>
		</div>
	</div>
<!--</div>-->
@endsection


