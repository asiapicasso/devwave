<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use App\Models\Poll;

class Answer extends Model
{
    use HasFactory, HasApiTokens, Notifiable;

    protected $fillable =  [
        'title',
    ];

    public function polls()
    {
        return $this->belongsTo(Poll::class);
    }
}