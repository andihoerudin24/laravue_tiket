<?php

use Faker\Generator as Faker;
use App\Model\Category\Category;

$factory->define(App\Model\Tiket\Tiket::class, function (Faker $faker) {
    $name_tiket = $faker->sentence;

    return [
        'name_tiket' => $name_tiket,
        'harga_tiket' => rand(8, 90),
        'jumlah_tiket' => rand(1, 10),
        'category_id' => function () {
            return Category::all()->random();
        },
    ];
});
