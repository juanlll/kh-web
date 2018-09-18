<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Kevin herrera</title>

<!-- Bootstrap core CSS -->
<link href="{{asset('vendor/bootstrap/css/bootstrap.min.css')}}" rel="stylesheet">

<!-- Custom fonts for this template -->
<link rel="stylesheet" href="{{asset('vendor/font-awesome/css/font-awesome.min.css')}}">
<link rel="stylesheet" href="{{asset('vendor/simple-line-icons/css/simple-line-icons.css')}}">
<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Muli" rel="stylesheet">

<!-- Plugin CSS -->
<link rel="stylesheet" href="{{asset('device-mockups/device-mockups.min.css')}}">
<!-- Custom styles for this template -->
<link href="{{asset('css/new-age.css')}}" rel="stylesheet">
<style type="text/css">
  .gal {
  
  
  -webkit-column-count: 3; /* Chrome, Safari, Opera */
    -moz-column-count: 3; /* Firefox */
    column-count: 3;
    
  
  } 
  .gal img{ width: 100%; padding: 7px 0;}
  .gal iframe{ width: 100%; padding: 7px 0;}
@media (max-width: 500px) {
    
    .gal {
  
  
  -webkit-column-count: 1; /* Chrome, Safari, Opera */
    -moz-column-count: 1; /* Firefox */
    column-count: 1;
    
  
  }
    
  }
</style>

</head>

<body id="page-top">
  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
    <div class="container">
      <a class="navbar-brand js-scroll-trigger" href="#page-top"> {{setting('site.title')}}</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        Menu
        <i class="fa fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="/">Inicio</a>
          </li>
           <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#portafolio">Portafolio</a>
          </li>
          @if(Auth::check())
           <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="/admin">Admin</a>
          </li>
          @endif
        </ul>
      </div>
    </div>
  </nav>


<section class="contact" id="portafolio" >
<h1 style="font-size: 70px;">Portafolio</h1>
 <div class="container">
<div class="col-md-12">
<div class="row">
<hr>

  <div class="gal">

   
  
    {!!setting('portafolio.movies')!!}
  
        
  </div>
  
</div>
</div>
</div>

</section>



<footer>
  <div class="container">

    <p>&copy; Juanvargasva.ml</p>
    <ul class="list-inline">
      <li class="list-inline-item">
        <a href="#">Privacy</a>
      </li>
      <li class="list-inline-item">
        <a href="#">Terms</a>
      </li>
      <li class="list-inline-item">
        <a href="#">FAQ</a>
      </li>
    </ul>
  </div>
</footer>

<!-- Bootstrap core JavaScript -->
<script src="{{asset('vendor/jquery/jquery.min.js')}}"></script>
<script src="{{asset('vendor/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
<!-- Plugin JavaScript -->
<script src="{{asset('vendor/jquery-easing/jquery.easing.min.js')}}"></script>
<!-- Custom scripts for this template -->
<script src="{{asset('js/new-age.min.js')}}"></script>
</body>
 <script  src="{{asset('js/app.js')}}"></script>

</html>
