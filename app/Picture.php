<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Picture extends Model
{
    protected $fillable=[
        'uri', 
        'name', 
        'size', 
        'mime', 
        'post_id'
    ];
}
