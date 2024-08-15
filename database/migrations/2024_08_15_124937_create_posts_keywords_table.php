<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('posts_keywords', function (Blueprint $table) {
            $table->increments('id_post_keyword');
            $table->integer('post_id')->unsigned()->index();
            $table->integer('keyword_id')->unsigned()->index();
            $table->foreign('post_id')->references('id_post')->on('posts')->cascadeOnDelete();
            $table->foreign('keyword_id')->references('id_keyword')->on('keywords')->cascadeOnDelete();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('posts_keywords');
    }
};
