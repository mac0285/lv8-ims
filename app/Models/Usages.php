<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Usages extends Model
{
    use HasFactory;
    protected $guarded  = [];
    protected $appends = ['total'];

    public function getTotal()
    {
        return $this->inbound + $this->outbound; 
    }
}
