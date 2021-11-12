<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Haruncpi\LaravelUserActivity\Traits\Loggable;
use App\Model\Service;
class Komputer extends Model
{
    use HasFactory;
    use Loggable;
    protected $guarded  = [];
     protected $fillable = [
            'ip_comp', 
            'userpc',
            'hostname_comp', 
            'os_comp',
            'brand',
            'type_comp', 
            'processor_comp',
            'ram_comp',
            'hdd_comp',
            'ups',
            'office_actv',
            'antivir',
            'dept_comp',
            'current_team_id',
            'active',
            'remark',
            'remote' 
    ];    

    public function Service()
    {
        return $this->belongsTo(Services::class);
    }
}

 
            