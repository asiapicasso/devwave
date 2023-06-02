<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use App\Moedels\Album; 
use App\Models\Artist;

class AlbumArtistTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('album_artist')->delete();
        for ($i = 1; $i <= 30; $i++) {
            $numbers = range(1, 40);
            shuffle($numbers);
            $n = rand(1, 3);
            for ($j = 1; $j <= $n; $j++) {
                DB::table('album_artist')->insert([
                    'album_id' => $i,
                    'artist_id' => $numbers[$j]]
                );
            }
    }
}
}
