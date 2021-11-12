<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Software extends Model
{
    use HasFactory;
    protected $guarded  = [];


    public function scopeActive( $query) 
    {
        return $query->where('active', 1);
    }
}

