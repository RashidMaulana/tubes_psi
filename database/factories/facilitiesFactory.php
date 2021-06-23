<?php

namespace Database\Factories;

use App\Models\Destinations;
use App\Models\Facilities;
use Illuminate\Database\Eloquent\Factories\Factory;

class facilitiesFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Facilities::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'nama' => $this->faker->word(),
            'jumlah' => $this->faker->numberBetween(1,10),
            'destinations_id' => rand(1,Destinations::count())
        ];
    }
}
