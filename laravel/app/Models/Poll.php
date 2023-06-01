<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use App\Models\Group;
use App\Models\Answer;

class Poll extends Model
{
    use HasFactory, HasApiTokens, Notifiable;

    protected $fillable = [ 
        'theme',
        'question',
    ];

    public function groups()
    {
        return $this->belongsToMany(Group::class);
    }

    public function answers()
    {
        return $this->hasMany(Answer::class);
    }
}
