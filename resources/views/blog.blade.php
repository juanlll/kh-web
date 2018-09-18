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
          @if(Auth::check())
           <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="/admin">Admin</a>
          </li>
          @endif
        </ul>
      </div>
    </div>
  </nav>







<div class="blog-header" 
data-parallax="scroll" 
data-image-src="{{asset('storage/'.setting('blog.background-header') )}}"></div>


<section class="download text-center" id="download">
  <div class="container">
    <div class="row">
      <div class="col-lg-12 my-auto">
          

<div class="container">




  <div class="row ">

    <div class="col-md-8">
    @foreach($posts as $post)
   <article id="">
     <div style="height: 1px; background-color: white;"></div>
        <header>
          <div class="meta">

            Publicacdo por: <span class="author">{{setting('site.title')}}</span> | <span class="date">{{$post->created_at}}</span>
          </div>
          <h2>
            <a href="">{{$post->title}}</a></h2>
        </header>
        <div class="entry-content">
          <a href="">
            <img src="storage/{{$post->image}}" alt="" class="img-fluid" width="750" height="420" />
          </a>
          <p class="lead">{{$post->meta_description}} &hellip;</p>

         <a href="/post/{{$post->slug}}" class="btn btn-outline btn-xl js-scroll-trigger">Descubrir ahora!</a>
        </div>
        <br>
       <div style="height: 1px; background-color: white;"></div>
      </article>
@endforeach
    </div>
    <aside class="col-md-4">

     <h2>Mi blog</h2>
   <p>
     {{setting('blog.description')}}
   </p>





<div class="container">
<h3>Follow Us</h3>
<div class="social">
  <a href=""><i class="fa fa-3x fa-facebook-square"></i></a>
  <a href=""><i class="fa fa-3x fa-twitter-square"></i></a>
  <a href=""><i class="fa fa-3x fa-linkedin-square"></i></a>
  <a href=""><i class="fa fa-3x fa-google-plus-square"></i></a>
</div>
  
</div>
      
      
      
    </aside>
  </div>
</div>

     </div>
   </div>
 </div>
</section>

<div class="blog-footer" 
data-parallax="scroll" 
data-image-src="{{asset('storage/'.setting('blog.background-footer') )}}"></div>





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

$('.blog-header').parallax({imageSrc: "{{asset('storage/'.setting('blog.background-header') )}}"});
$('.blog-footer').parallax({imageSrc: "{{asset('storage/'.setting('blog.background-footer') )}}"});
</script>



</body>

</html>
