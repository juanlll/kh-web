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
<style type="text/css"></style>

</head>

<body id="page-top">
  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
    <div class="container">
      <a class="navbar-brand js-scroll-trigger" href="#page-top"> <img src="https://image.flaticon.com/icons/svg/786/786135.svg" width="20" height="20" style="vertical-align: top;"> {{setting('site.title')}}</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        Menu
        <i class="fa fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          {{menu('site','nav')}}
          @if(Auth::check())
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="/admin">Admin</a>
          </li>
          @endif
        </ul>
      </div>
    </div>
  </nav>




  <header class="masthead" style="background-image: url('{{asset('storage/'.setting('site.header'))}}');">
    <div class="container h-100">
      <div class="row h-100">

       <div class="col-lg-7 my-auto">
        <div class="header-content mx-auto">
          <h1 class="mb-5" style="font-size: 70px;">{{setting('site.description')}}</h1>
          <a href="#download" class="btn btn-outline btn-xl js-scroll-trigger">Descubrir ahora!</a>
        </div>
      </div>

      <div class="col-lg-5 my-auto">

  </div>
</div>
</div>
</header>

<section class="download text-center" id="download">
  <div class="container" >
    <div class="row">
      <div class="col-lg-12 my-auto">
       <h2 class="section-heading">¿Quien soy?</h2>
       <p>Soy  un multifacético hombre de 22 años, ibaguereño de nacimiento, politólogo de profesión, pero fotógrafo por pasión, veo la fotografía como el arte que permite plasmar de manera tangible las maravillas de la creación que nos rodea.
       Soy hijo y hermano, encuentro inspiración para mi trabajo en cada persona que está cerca, en cada situación, en cada paisaje que me rodea.</p>

    <center>
       <div class='card card-profile text-center'>
        <img alt='' class='card-img-top' src="{{asset('storage/'.setting('card-profile.background') )}}" width="340" height="160">
        <div class='card-block'>
          <img alt='' class='card-img-profile' src="{{asset('storage/'.setting('card-profile.logo') )}}" width="140" height="140">
          <h4 class='card-title'>
           {{setting('card-profile.title')}}
           <small>{{setting('card-profile.description')}}</small>
         </h4>
         <div class='card-links'>
          <a class='fa fa-dribbble' href='#'></a>
          <a class='fa fa-twitter' href='#'></a>
          <a class='fa fa-facebook' href='#'></a>
        </div>
      </div>
      </div>
  </center>

     </div>
   </div>
 </div>
</section>

<div class="parallax-window1" data-parallax="scroll" data-image-src="{{asset('storage/'.setting('parallax.1-section') )}}"></div>

<section class="features" id="features">
  <div class="container">
    <div class="section-heading text-center">
      <h1 style="font-size: 70px;">Servicios</h1>
      <p class="text-muted">La calidad de tu servicio, depende de la calidad de tu personal.</p>
      <hr>
    </div>
    <div class="row">

      <div class="col-lg-12 my-auto">
        <div class="container-fluid">
          <div class="row">

            <div class="col-lg-6">
              <div class="feature-item" style="color: white;">
                <!--   <i class="fa fa-camera fa-5x text-success" style="color: white;" ></i> -->
                <img src="https://image.flaticon.com/icons/svg/786/786135.svg" width="64" height="64">
                <h3>{{setting('services.1-name')}}</h3>
                <p class="text-muted">{{setting('services.1-description')}}</p>
              </div>
            </div>

            <div class="col-lg-6">
              <div class="feature-item">
                <!--   <i class="fa fa-camera-retro text-primary"></i> -->
                <img src="https://image.flaticon.com/icons/svg/786/786104.svg" width="64" height="64">
                <h3>{{setting('services.2-name')}}</h3>
                <p class="text-muted">{{setting('services.2-description')}}</p>
              </div>
            </div>

          </div>

          <div class="row">

            <div class="col-lg-6">
              <div class="feature-item">
               <!--    <i class="fa fa-film text-primary"></i> -->

               <img src="https://image.flaticon.com/icons/svg/786/786121.svg" width="64" height="64">
               <h3>{{setting('services.3-name')}}</h3>
               <p class="text-muted">{{setting('services.3-description')}}</p>
             </div>
           </div>


           <div class="col-lg-6">
            <div class="feature-item">
              <!-- <i class="fa fa-video-camera text-primary"></i> -->
              <img src="https://image.flaticon.com/icons/svg/786/786140.svg" width="64" height="64">
              <h3>{{setting('services.4-name')}}</h3>
              <p class="text-muted">{{setting('services.4-description')}}</p>
            </div>
          </div>

        </div>
      </div>
    </div>
  </div>
</div>
</section>

<div class="parallax-window2" data-parallax="scroll" data-image-src="{{asset('storage/'.setting('parallax.2-section') )}}"></div>


<section class="contact" id="portafolio" >
<h1 style="font-size: 70px;">Portafolio</h1>
      <p class="text-muted">{{setting('portafolio.description')}}</p>
 <div class="container">
<div class="col-md-12">
<div class="row">
<hr>

  <div class="gal">

  <!--  @foreach($files as $file)
         <img src="{{asset($file)}}" alt="">
    @endforeach
   -->
    {!!setting('portafolio.movies')!!}
  
        
  </div>
  
</div>
</div>
</div>

</section>


<div class="parallax-window3" data-parallax="scroll" data-image-src="{{asset('storage/'.setting('parallax.3-section') )}}"></div>


<section class="contact bg-primary" id="contact">
  <div class="container">
    <div class="row">
      <div class="col-lg-12 my-auto">
        <h1 class="section-heading" style="font-size: 70px;">Contacto</h1>
              <p class="text-muted">La calidad de tu servicio, depende de la calidad de tu personal.</p>
  @if (count($errors)>0)
      <div class="alert alert-danger">
        <ul>
        @foreach ($errors->all() as $error)
          <li>{{$error}}</li>
        @endforeach
        </ul>
      </div>
      @endif

    {!! Form::open(['url' => '/postcomment','method'=>'POST']) !!}
            {{Form::token()}}
        <center>
          <!-- Name input-->
          <div class="form-group">
            <label class="col-md-3 control-label" for="name">Nombre</label>
            <div class="col-md-9">
              <input id="name" name="name" type="text" placeholder="Your name" class="form-control">
            </div>
          </div>
          <!-- Email input-->
          <div class="form-group">
            <label class="col-md-3 control-label" for="email">Correo electronico</label>
            <div class="col-md-9">
              <input id="email" name="email" type="text" placeholder="Your email" class="form-control">
            </div>
          </div>
          <!-- Message body -->
          <div class="form-group">
            <label class="col-md-3 control-label" for="text">Mensaje</label>
            <div class="col-md-9">
              <textarea class="form-control" id="message" name="text" placeholder="Please enter your message here..." rows="5"></textarea>
            </div>
          </div>
          <button type="submit" class="btn btn-primary " style="background-color: black">Enviar</button>
        </center>
   {!!Form::close()!!}
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
<script src="{{asset('js/parallax.min.js')}}"></script>

<script type="text/javascript">

  $('.parallax-window1').parallax({imageSrc: "{{asset('storage/'.setting('parallax.1-section') )}}"});
  $('.parallax-window2').parallax({imageSrc: "{{asset('storage/'.setting('parallax.2-section') )}}"});
  $('.parallax-window3').parallax({imageSrc: "{{asset('storage/'.setting('parallax.3-section') )}}"});
</script>
</body>


</html>
