<?php

use Illuminate\Database\Seeder;

class tagTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\tag::class, 5)->create();
    }
}
