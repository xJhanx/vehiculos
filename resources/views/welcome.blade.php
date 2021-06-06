<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>Silpos master</title>

  <!-- Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">
  <!-- Main Stylesheet File -->

  <link href="{{asset('bootstrap/css/bootstrap.min.css')}}" rel="stylesheet" type="text/css">
  <link href="{{asset('css/ruang-admin.css')}}" rel="stylesheet">
  <link href="{{asset('css/style.css')}}" rel="stylesheet">

</head>

<body class="bg-main">

  <nav class="navbar navbar-expand navbar-dark  topbar mb-4 static-top">
    <button id="sidebarToggleTop" class="btn btn-link rounded-circle mr-3">
      <i class="text-primary fa fa-bars"></i>
    </button>
    <ul class="navbar-nav ml-auto ">
      <li class="nav-item dropdown no-arrow">
        <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown"
          aria-haspopup="true" aria-expanded="false">
          <i class="text-primary fas fa-search fa-fw"></i>
        </a>
        <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">

        </div>
      </li>

      <li class="nav-item dropdown no-arrow mx-1">
        @if (Route::has('login'))
        <div class="top-right links">
          @auth

      <li class="nav-item dropdown no-arrow mx-1">
        <a class="nav-link text-primary " href="{{ url('/home') }}" role="button" aria-haspopup="true"
          aria-expanded="false">
          <i class="text-primary fas fa-bell fa-fw"></i>
          <span class="badge badge-danger badge-counter">Home</span>
        </a>

      </li>
      @else
      @if (Route::has('register'))

      <li class="nav-item dropdown no-arrow mx-1">
        <a class="nav-link text-primary " href="{{ route('login') }}" role="button" aria-haspopup="true"
          aria-expanded="false">
          <i class="text-primary fas fa-bell fa-fw"></i>
          Login
        </a>

      </li>
      <li class="nav-item dropdown no-arrow mx-1">
        <a class="nav-link text-primary " href="{{ route('register') }}" role="button" aria-haspopup="true"
          aria-expanded="false">
          <i class="text-primary fas fa-bell fa-fw"></i>
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

    <section id="intro">

      <div class="intro-text my-3">

        <h2>Controle su Negocio Silpos la Solución</h2>
        <p class="text text-primary">Silpos web ahora con Facturación Electrónica</p>

      </div>

      <div class="product-screens">

        <div class="product-screen-1 wow fadeInUp" data-wow-delay="0.4s" data-wow-duration="0.6s">
          <img src="img/logo_silpos.png" alt=""  width="400px" 
          style="@media only screen and (max-width: 600px) {
              width: 100%;
          }">
        </div>

        <div class="product-screen-2 wow fadeInUp" data-wow-delay="0.2s" data-wow-duration="0.6s">
          <img src="img/facturadian.png" alt="" width="200px">
        </div>

        <div class="product-screen-3 wow fadeInUp" data-wow-duration="0.6s">
          <img src="img/letrero.png" alt="" width="350px">
        </div>

      </div>

    </section>

  <!--==========================
    Footer
  ============================-->
  {{-- <footer id="footer">
    <div class="container">
      <div class="row">
        <div class="col-lg-6 text-lg-left text-center">
          <div class="copyright">
            &copy; Copyright <strong>Silpos</strong>. Todos Los Derechos Reservados
          </div>
          <div class="credits">


          </div>
        </div>
        <div class="col-lg-6">
          <nav class="footer-links text-lg-right text-center pt-2 pt-lg-0">
            <a href="#intro" class="scrollto">Inicio</a>
            <a href="#about" class="scrollto">Nosotros</a>
            <a href="#">Pagar Factura</a>
            <a href="#">inicio Sesion</a>
            <a href="https://api.whatsapp.com/send?phone=3166266662&text=%C2%A1Hola!%20%C2%BFMe%20podr%C3%ADas%20regalar%20m%C3%A1s%20informaci%C3%B3n%20de%20Silpos?"
              target="new">Whatsapp</a>
          </nav>
        </div>
      </div>
    </div>
  </footer><!-- #footer --> --}}

  {{-- <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a> --}}

</body>

</html>