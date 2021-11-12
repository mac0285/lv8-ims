<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddUserpcToKomputersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('komputers', function (Blueprint $table) {
            //
            $table->string('userpc',50)->default(0)->after('ip_comp'); 
            $table->string('remark',50)->default(0)->after('active'); 
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('komputers', function (Blueprint $table) {
            //
        });
    }
}
