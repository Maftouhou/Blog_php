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
    
    public function hasTag($id)
    {
        if (is_null($this->tags)) {
        
            return false;
        }
        
        foreach ($this->tags as $tag) {
            if ($tag->id === $id){
                return true;
            } 
        }
        
        return false;
    }
    /**
     * Field set configuration
     * 
     * @return datatype
     */
    
    protected $fillable =[
        'title', 
        'content',
        'user_id',
        'category_id',
        'status',
        'updated_at'
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
