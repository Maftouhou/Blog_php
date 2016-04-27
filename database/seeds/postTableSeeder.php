<?php

use Illuminate\Database\Seeder;

class postTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\Post::class, 50)->create()->each(function($post){
            $post->tags()->attach(rand(6, 10));
        });
    }
}
