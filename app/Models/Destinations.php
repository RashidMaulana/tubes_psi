<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Destinations extends Model
{
    public $timestamps = false;
    use HasFactory;

    public function Facilities() {
        $this -> hasMany(Facilities::class);
    }

    public function Pemiliks(){
        $this -> belongsTo(Pemilik::class);
    }
}
