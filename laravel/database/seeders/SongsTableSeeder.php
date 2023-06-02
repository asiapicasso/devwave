<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use App\Models\Artist;
use App\Models\Song;

class SongsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('songs')->delete();
        $songs = file_get_contents('storage/app/liste_titres.txt');
        $songs = explode("\n", $songs);
        $duration = rand(3,4);
        $duration = $duration + 0.30;
        $year = rand(1900, 2023);
        foreach ($songs as $song) {
            //insert each song into the database
            DB::table('songs')->insert([
                'title' => $song,   
                'year' => $year,
                'duration' => $duration,

            ]);
        }
    }
}
