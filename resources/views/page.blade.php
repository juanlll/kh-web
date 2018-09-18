@extends ('layouts.simple')
@section ('main-content')

<h2>{{$page->title}}</h2>
<p>{{$page->meta_description}}</p>


<div class="container">
	<div class="row">
	@foreach($posts  as $post)
  <div class="row" style="width: 100%; margin-bottom: 10px; background-color: rgba(233, 236, 239, 0.3); border-radius: 15px; border-style: solid; border-color: white;"> 
                    <div class="col-xs-12 col-sm-3 col-md-3">
                        <a href="/post/{{$post->slug}}">
                            <img src="{{asset('storage/'.$post->image)}}" width="200" height="200" style="border-style: solid; border-color: white;"> 
                        </a>

                    </div> 
                    <div class="col-xs-12 col-sm-9 col-md-9">
                      
                        <h4><a href="#">{{$post->title}}</a></h4>
                         
                        <p>{{$post->meta_description}}</p>
                    	 <a href="/post/{{$post->slug}}" class="btn btn-outline btn-xl js-scroll-trigger">Ver Album</a>
                    	 <br>
                    	 <br>
                    </div> 
                </div>
                <hr>
                @endforeach
                
	</div>
</div>
@endsection