<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Haruncpi\LaravelUserActivity\Traits\Loggable;
class Emailaccount extends Model
{
    use HasFactory;
    use Loggable;
    protected $guarded  = [];
    protected $fillable = [
    'name_usr',
    'email_usr',
    'pwd_usr',
    'email_type',
    'dept_usr',
    'remark_usr',
    'month_date',
    'current_team_id',
    'active'
    ];
}
