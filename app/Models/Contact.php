<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Haruncpi\LaravelUserActivity\Traits\Loggable;

class Contact extends Model
{
    use HasFactory;
    use Loggable;
    protected $guarded  = [];
     protected $fillable = [
        'namedisplay',
        'group',
        'dept',
        'lantai',
        'extnumber',
        'digital',
        'remark',
        'current_team_id',
        'active'
         
    ];  
}
