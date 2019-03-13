<?php

use App\todo;
use Illuminate\Database\Seeder;

class TodoSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for ($i=0; $i < 10 ; $i++) { 
        	todo::create([
        		'todo'=>str_random(10),
        		'content'=>str_random(40)
        	]);
        }
    }
}
