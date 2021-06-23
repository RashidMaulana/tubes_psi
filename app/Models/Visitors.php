<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Visitors extends Model
{


    public $timestamps = false;
    use HasFactory;

    /**
     * Get the user that owns the Visitors
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     * 
     */
    public function transactions()
    {
        return $this->hasMany(Transactions::class);
    }
}
