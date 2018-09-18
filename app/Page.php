<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Page extends Model
{
    protected $table='pages';
    protected $primaryKey='id';
    protected $fillable = [
    	'author_id',
    	'title',
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
