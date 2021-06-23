<?php

namespace Database\Factories;

use App\Models\Visitors;
use Illuminate\Database\Eloquent\Factories\Factory;

class VisitorsFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Visitors::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'nama' =>$this->faker->name,
            'usia' =>$this->faker->numberBetween(1,50),
            'alamat'=>$this->faker->address,
        ];
    }
}
