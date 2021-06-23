<?php

namespace Database\Factories;

use App\Models\Facilities;
use App\Models\Transactions;
use App\Models\Visitors;
use Illuminate\Database\Eloquent\Factories\Factory;

class TransactionsFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Transactions::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'profits' =>$this->faker->numberBetween(10000,100000),
            'tanggal' => $this->faker->date('Y-m-d','now'),
            'visitors_id' => rand(1,Visitors::count()),
            'facilities_id' => rand(1,Facilities::count())
        ];
    }
}
