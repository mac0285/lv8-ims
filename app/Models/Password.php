<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Haruncpi\LaravelUserActivity\Traits\Loggable;
class Password extends Model
{
    use HasFactory;
    use Loggable;
    protected $guarded  = [];
    public function scopeActive( $query) 
    {
        return $query->where('active', 1);
    }

    protected $fillable = [
        'address',
        'user',
        'pass',
        'type',
        'remark',
        'current_team_id',
        'active' 
    ];  
}
