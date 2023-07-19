<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOneToOneCallsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('one_to_one_calls', function (Blueprint $table) {
            $table->id();
            $table->string('channel_name')->nullable();
            $table->string('channel_link')->nullable();
            $table->string('channel_gaming')->nullable();
            $table->string('channel_describe')->nullable();
            $table->string('channel_Struggling')->nullable();
            $table->string('email')->nullable();
            $table->string('image1')->nullable();
            $table->string('image2')->nullable();
            $table->string('image3')->nullable();
            $table->string('image4')->nullable();
            $table->string('image5')->nullable();
            $table->string('image6')->nullable();
            $table->string('image7')->nullable();
            $table->string('image8')->nullable();
            $table->string('image9')->nullable();
            $table->string('image10')->nullable();
            $table->string('image11')->nullable();
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
        Schema::dropIfExists('one_to_one_calls');
    }
}
