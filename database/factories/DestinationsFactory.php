<?php

namespace Database\Factories;

use App\Models\Destinations;
use App\Models\Pemilik;
use Illuminate\Database\Eloquent\Factories\Factory;

class DestinationsFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Destinations::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'nama'=>$this->faker->word(),
            'alamat'=>$this->faker->address,
            'telephone'=> $this->faker->phoneNumber,
            'pemiliks_id' => rand(1,Pemilik::count())
        ];
    }
}
