<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use App\Models\Album;
use App\Models\Song;

class AlbumSongTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('album_song')->delete();
        for ($i = 1; $i <= 30; $i++) {
            $numbers = range(1, 100);
            shuffle($numbers);
            $n = rand(1, 3);
            for ($j = 1; $j <= $n; $j++) {
                DB::table('album_song')->insert([
                    'album_id' => $i,
                    'song_id' => $numbers[$j]]
                );
            }
    }
    }
}
