<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddUpsOfficeToKomputersTable extends Migration
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
            $table->string('ups')->after('hdd_comp');
            $table->string('office_actv')->after('ups');
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
