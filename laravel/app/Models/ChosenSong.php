<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class ChosenSong extends Model
{
    use HasFactory, HasApiTokens, Notifiable;

    public function songs()
    {
        return $this->belongsTo(Song::class);
    }

    public function users()
    {
        return $this->belongsTo(User::class);
    }
}
