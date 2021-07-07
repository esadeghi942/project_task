<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Task extends Model
{
    use HasFactory;

    public $guarded=['id'];

    public $timestamps=false;

    public function project()
    {
        return $this->belongsTo(Project::class);
    }
}
