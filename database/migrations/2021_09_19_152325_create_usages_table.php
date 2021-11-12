<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUsagesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('usages', function (Blueprint $table) {
            $table->id();
            $table->string('Connection', 100);
            $table->string('type', 100);
            $table->string('inbound', 100);
            $table->string('outbound', 100);
            $table->string('total', 100);
            $table->string('remark', 100);
            $table->date('month_date'); 
            $table->string('current_team_id',2);
            $table->string('active',2);
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
        Schema::dropIfExists('usages');
    }
}
