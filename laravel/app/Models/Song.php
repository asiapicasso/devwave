<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use App\Models\Album;

class Song extends Model
{
    use HasApiTokens, HasFactory, Notifiable;

    
    public function albums()
    {
        return $this->belongsToMany(Album::class);
    }

}
