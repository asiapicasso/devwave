<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use App\Models\Album;

class Artist extends Model
{
    use HasFactory, Notifiable, HasApiTokens;

    public function albums()
    {
        return $this->belongsToMany(Album::class);
    }
}
