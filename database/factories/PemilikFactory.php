<?php

namespace Database\Factories;

use App\Models\Pemilik;
use Illuminate\Database\Eloquent\Factories\Factory;

class PemilikFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Pemilik::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'nama' =>$this->faker->name,
            'email' =>$this->faker->email,
            'username'=>$this->faker->userName,
            'password'=>bcrypt('12345'),
            'alamat'=>$this->faker->address,
        ];
    }
}
