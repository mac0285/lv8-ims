<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSuppliesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('supplies', function (Blueprint $table) {
            $table->id();
            $table->string('sku', 100);
            $table->string('barcode', 100);
            $table->string('type', 100);
            $table->string('name', 100);
            $table->string('detail', 100);
            $table->string('vendor', 100);
            $table->date('buy_date');
            $table->date('order_date'); 
            $table->string('received', 100);
            $table->string('return', 100);
            $table->string('adjust', 100);            
            $table->string('qty', 100);
            $table->string('min_qty', 100);
            $table->string('price', 100);
            $table->string('tot_price', 100);
            $table->string('remark', 100);
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
        Schema::dropIfExists('supplies');
    }
}
