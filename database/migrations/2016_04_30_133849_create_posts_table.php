<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePostsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('posts', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_id')->unsigned()->nullable();
            $table->integer('picture_id')->unsigned()->nullable();
            $table->integer('category_id')->unsigned()->nullable();
            $table->string('title', 1000);
            $table->text('content');
            $table->enum('status', ['draft', 'offline', 'online']);
            $table->foreign('user_id')->references('id')->on('users')->onDelete('SET NULL');
            $table->foreign('picture_id')->references('id')->on('pictures')->onDelete('SET NULL');
            $table->foreign('category_id')->references('id')->on('categories')->onDelete('SET NULL');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('posts');
    }
}
