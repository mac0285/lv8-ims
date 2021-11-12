<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateContactsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('contacts', function (Blueprint $table) {
            $table->id();
            $table->date('renewal_date');
            $table->string('namedisplay', 100);
            $table->string('group', 100);
            $table->string('dept', 100);
            $table->string('lantai', 100);
            $table->string('extnumber', 100);
            $table->string('digital', 100);
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
        Schema::dropIfExists('contacts');
    }
}
