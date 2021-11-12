<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Model\Komputer;
use App\Model\Service;
class Departement extends Model
{
    use HasFactory; 
    protected $guarded  = [];
    public $primarykey='id';
    protected $table = "Departements";
    public function Komputer()
    {
        return $this->hasOne(Crud::class);
    }
    public function Service()
    {
        return $this->hasOne(Service::class);
    }
    protected $fillable = [
    'group',
    'dept',
    'current_team_id',
    'active'
    ];
}
