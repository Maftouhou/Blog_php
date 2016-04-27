<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    /**
     * Model relationship
     * 
     * @return type
     */
    
    public function user(){
        return $this->belongsTo('App\User');
    }
    
    public function category(){
        return $this->belongsTo('App\Category');
    }
    
    public function tags(){
        return $this->belongsToMany('App\Tag');
    }
    
    public function picture(){
        return $this->hasOne('App\Picture');
    }
    
    /**
     * Field set configuration
     * 
     * @return datatype
     */
    
    protected $filables=[
        'field1'
    ];
    
    /**
     * Carbone Date configuration
     * 
     * @return datatype
     */
    
    protected $date=[
        'dateField'
    ];
}
