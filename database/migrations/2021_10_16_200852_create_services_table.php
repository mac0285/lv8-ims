<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateServicesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('services', function (Blueprint $table) {
            $table->id();
            $table->string('ip_comp', 100);
            $table->string('hostname_comp', 100);
            $table->string('sku_supplies', 100); 
            $table->string('barcode_supplies', 100);        
            $table->string('qty', 100); 
            $table->string('remark', 100);
            $table->string('dept_comp', 100);            
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
        Schema::dropIfExists('services');
    }
}
