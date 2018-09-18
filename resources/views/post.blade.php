@extends ('layouts.simple')
@section ('main-content')
<style type="text/css">
	.header-post {
    min-height: 400px;
    background: transparent;
}

</style>

<div class="container " style="background-color: white; margin-top: 60px; padding:0px;">
	<hr>


<div class="row" >
  <div class="col-md-4" style="margin-left:1px;"><img src="/storage/{{$post->image}}" height="200" width="100%"></div>
  <div class="col-md-8" style="margin-left:-1px;">
  	<h2>{{$post->title}}</h2>
  	<p>{{$post->meta_description}}</p>
  </div>
</div>

<div style="height: 1px; background-color: black;"></div>
<div style="padding: 50px;">{!! $post->body !!}</div>
<div style="height: 1px; background-color: black;"></div>
</div>

@endsection