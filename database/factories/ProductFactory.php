<?php

namespace Database\Factories;

use App\Models\Product;
use Illuminate\Database\Eloquent\Factories\Factory;

class ProductFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Product::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            
                'name' => $this-> faker->name,
                'slug' =>  $this->faker->name,
                'details' => $this-> faker->word,
                'price' =>  $this-> faker->numberBetween(70,300),
                'description' => $this-> faker->paragraph(5),
                'featured' => $this-> faker->boolean,
                'image' => $this-> faker->image,
                
                
                //'category_id' =>  $faker->numberBetween(1,10),
                
                
           
        ];
    }
}
