<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use App\Models\Picture; 
use App\Models\Group;
use App\Models\ChosenSong;
use App\Models\Contest;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'name',
        'email',
        'password',
        'username',
        'firstname',
        'lastname',
        'phone',

    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
        'password' => 'hashed',
    ];

    public function pictures()
    {
        return $this->hasOne(Picture::class);
    }

    public function groups()
    {
        return $this->belongsTo(Group::class);
    }

    public function chosenSongs()
    {
        return $this->hasMany(ChosenSong::class);
    }

    public function contests()
    {
        return $this->belongsToMany(Contest::class);
    }
}
