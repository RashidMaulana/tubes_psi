<?php

namespace Database\Seeders;

use App\Models\Destinations;
use App\Models\Facilities;
use App\Models\Pemilik;
use App\Models\Transactions;
use App\Models\Visitors;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call([
            // PemiliksSeeder::class,
            // VisitorsSeeder::class,
            // DestinationsSeeder::class,
            // FacilitiesSeeder::class,
            TransactionsSeeder::class
        ]);
        
    }
}
