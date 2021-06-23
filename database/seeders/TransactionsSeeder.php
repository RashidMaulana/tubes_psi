<?php

namespace Database\Seeders;

use App\Models\Transactions;
use Faker\Factory;
use Illuminate\Database\Seeder;

class TransactionsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Transactions::factory(100)->create();
    }
}
