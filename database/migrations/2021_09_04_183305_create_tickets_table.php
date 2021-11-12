<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTicketsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tickets', function (Blueprint $table) {
            $table->id();
            $table->string('ticketid',20);
            $table->string('ticket_user',20);
            $table->string('ticket_title',100);
            $table->longText('ticket_desc');
            $table->string('ticket_categories',50);
            $table->string('ticket_priority',40);
            $table->string('ticket_overdue',100);
            $table->string('ticket_status',10);
            $table->string('ticket_image');
            $table->string('ticket_solve',2);
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
        Schema::dropIfExists('tickets');
    }
}
