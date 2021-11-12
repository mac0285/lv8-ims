<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddTypeToTodoItems extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('todo_items', function (Blueprint $table) {
            //
            $table->string('type',50)->default(0)->after('topic'); 
            $table->string('active',50)->default(0)->after('type'); 
            $table->string('user_id',15)->default(0)->after('active'); 
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('todo_items', function (Blueprint $table) {
            //
        });
    }
}
