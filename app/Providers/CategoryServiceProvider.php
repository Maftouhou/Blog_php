<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

use App\Category;

class CategoryServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap the application services.
     *
     * @return void
     */
    public function boot()
    {
        $category = Category::all();
        
        view()->share($category, $category);
    }

    /**
     * Register the application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
