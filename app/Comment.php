<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    protected $table='comments';
    protected $primaryKey='id';
    protected $fillable = [
    	'email',
    	'text'
    ];
    
    public $timestamps=true;
    protected $guarded=[];
}
