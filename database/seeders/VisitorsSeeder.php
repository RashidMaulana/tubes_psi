<?php

namespace Database\Seeders;

use App\Models\Visitors;
use Illuminate\Database\Seeder;

class VisitorsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Visitors::factory(5)->create();
    }
}
