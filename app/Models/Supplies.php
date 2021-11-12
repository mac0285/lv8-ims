<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Haruncpi\LaravelUserActivity\Traits\Loggable;
class Supplies extends Model
{
    use HasFactory;
    use Loggable;
    protected $guarded  = [];
    protected $fillable = [
    'sku',
    'barcode',
    'type',
    'name',
    'detail',
    'vendor',
    'buy_date',
    'order_date',
    'received',
    'return',
    'adjust',
    'qty',
    'min_qty',
    'price',
    'tot_price',
    'remark',
    'current_team_id',
    'active'
    ];
    

}
