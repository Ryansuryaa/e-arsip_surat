<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Department extends Model
{

    use HasFactory;

    protected $fillable = [
        'name',
    ];

    protected $hidden = [

    ];

    public function letters()
    {
        return $this->hasMany(Letter::class);
    }
}
