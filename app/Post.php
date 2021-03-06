<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    protected $table='posts';
    protected $primaryKey='id';
    protected $fillable = [
    	'author_id',
    	'category_id',
    	'title',
    	'seo_title',
    	'excerpt',
    	'body',
    	'image',
    	'slug',
    	'meta_description',
    	'meta_keywords',
    	'status',
    ];
    
    public $timestamps=true;
    protected $guarded=[];
}
