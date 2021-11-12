<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateKomputersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('komputers', function (Blueprint $table) {
            $table->id();
            $table->string('ip_comp', 100);
            $table->string('hostname_comp', 100);
            $table->string('os_comp', 100);
            $table->string('type_comp', 100);
            $table->string('processor_comp', 100);
            $table->string('ram_comp', 100);
            $table->string('hdd_comp', 100);
            $table->string('dept_comp', 100);
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
        Schema::dropIfExists('komputers');
    }
}
