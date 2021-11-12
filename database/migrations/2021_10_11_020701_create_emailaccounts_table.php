<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEmailaccountsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('emailaccounts', function (Blueprint $table) {
            $table->id();
            $table->string('name_usr', 100);
            $table->string('email_usr', 100);
            $table->string('pwd_usr', 100);
            $table->string('email_type', 100);
            $table->string('dept_usr', 100); 
            $table->string('remark_usr', 100);
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
        Schema::dropIfExists('emailaccounts');
    }
}
