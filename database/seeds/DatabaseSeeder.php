<?php

use Illuminate\Database\Seeder;
use App\User;
use App\Model\Category\Category;
use App\Model\Tiket\Tiket;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run()
    {
        // $this->call(UsersTableSeeder::class);
        //factory(User::class, 20)->create();
        //factory(Category::class, 40)->create();
        factory(Tiket::class, 20)->create();
    }
}
