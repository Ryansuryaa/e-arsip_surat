<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Letter extends Model
{
    use HasFactory;

    protected $fillable = [
        'letter_no',
        'letter_date',
        'date_received',
        'regarding',
        'department_id',
        'sender',
        'letter_file',
        'letter_type'
    ];

    protected $hidden = [

    ];

    public function department()
    {
        return $this->belongsTo(Department::class);
    }
}
