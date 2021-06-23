<?php

namespace Database\Seeders;

use App\Models\Facilities;
use Illuminate\Database\Seeder;

class FacilitiesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Facilities::factory(5)->create();
    }
}
