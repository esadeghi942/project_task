<?php

namespace App\Models;
use App\Facades\ResponderFacade;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Project extends Model
{
    use HasFactory;

    protected $fillable = [
        'name'
    ];
    public $timestamps = false;

    public function tasks()
    {
        return $this->hasMany(Task::class);
    }
    public function lcount(){
        $count=Project::count();
        return $count;
    }

    static public function count1()
    {
        $project=Project::items();
        return $project;
    }
}
