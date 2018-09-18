<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
	$categories = App\Page::all();
      $path = "./storage/images";
    $dir = opendir($path);
    $files = array();
    while ($current = readdir($dir)){
        if( $current != "." && $current != "..") {
            if(is_dir($path.$current)) {
                showFiles($path.$current.'/');
            }
            else {
                $files[] = "/storage/images/".$current;
            }
        }
    }
    
    return view('welcome',['categories'=> $categories,'files'=>$files]);
});

Route::get('/gallery', function () {
    $path = "./storage/images";
    $dir = opendir($path);
    $files = array();
    while ($current = readdir($dir)){
        if( $current != "." && $current != "..") {
            if(is_dir($path.$current)) {
                showFiles($path.$current.'/');
            }
            else {
                $files[] = "/storage/images/".$current;
            }
        }
    }
    
    return view('gallery',['files'=>$files]);
});


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});


Route::get('post/{slug}', function($slug){
	$post = App\Post::where('slug', '=', $slug)->firstOrFail();
	return view('post', compact('post'));
});


Route::get('page/{slug}', function($slug){
	$page = App\Page::where('slug', '=', $slug)->firstOrFail();
	$posts = App\Post::where('excerpt','=',$page->excerpt)->get();
	return view('page', ['page'=>$page,'posts'=>$posts]);
});


Route::get('/blog', function () {
	$posts = App\Post::all();
    return view('blog',['posts'=> $posts]);
});

//RUTAS DE MENSAJES-----------------------------------------
Route::resource('admin/messages','CommentController');



//--------------------------------------------------------

Route::get('api/images',function(){

function showFiles($path){
    $dir = opendir($path);
    $files = array();
    while ($current = readdir($dir)){
        if( $current != "." && $current != "..") {
            if(is_dir($path.$current)) {
                showFiles($path.$current.'/');
            }
            else {
                array_push($files, ['name' => "/storage/images/".$current]);
            }
        }
    }


    return $files;
}






return showFiles('./storage/images');

});








Route::get('api/imgs',function(){
	$pila = [];
	$path = "./storage/images";
    $dir = opendir($path);
    $files = array();
    while ($current = readdir($dir)){
        if( $current != "." && $current != "..") {
            if(is_dir($path.$current)) {
                showFiles($path.$current.'/');
            }
            else {
                $files[] = "/storage/images/".$current;
            }
        }
    }
    return $files;
});

Route::post('/postcomment','CommentController@store');
