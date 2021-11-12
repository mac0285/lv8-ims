<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Haruncpi\LaravelUserActivity\Traits\Loggable;
class TodoItem extends Model
{
    use HasFactory;
    use Loggable;
    protected $fillable = [
        'topic', 
        'type',
        'active',
        'user_id',
        'description',  
        'done',
        'current_team_id',
        'create_at'
        
];    
}
