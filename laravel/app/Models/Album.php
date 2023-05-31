<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use App\Models\Song;

class Album extends Model
{
    use HasFactory, Notifiable, HasApiTokens;

    public function songs()
    {
        return $this->belongsToMany(Song::class);
    }

    public function artists()
    {
        return $this->belongsToMany(Artist::class);
    }
}
