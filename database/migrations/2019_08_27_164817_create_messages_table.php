<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMessagesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('messages', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('r_id')->nullable(); // gavejo id
            $table->text('subject');
            $table->text('message');
            $table->integer('sender_id');
            $table->boolean('active')->default(1);
            $table->integer('type'); // skaiciai susieti su message type lentute
            $table->dateTime('seen')->nullable(); // kada buvo seen
            $table->boolean('status')->nullable(); //seen ar neseen
            $table->boolean('state'); //issiusta as neissiusta
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
        Schema::dropIfExists('messages');
    }
}
