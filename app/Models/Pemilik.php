<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pemilik extends Model
{
    public $timestamps = false;
    use HasFactory;
    
    public function Destinations(){
        $this -> hasMany(Destinations::class);
    }
}
