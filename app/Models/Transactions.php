<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Transactions extends Model
{

    public $timestamps = false;
    use HasFactory;

    public function Visitors() {
        $this -> belongsTo(Visitors::class);
    }

    public function Facilities(){
        $this -> hasMany(Facilities::class);
    }
}
