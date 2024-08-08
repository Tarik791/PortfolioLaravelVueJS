<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Project extends Model
{
    use HasFactory;

    protected $fillable = ['name', 'image','image_2','image_3','image_4','image_5','image_6', 'project_url'];

    public function skills()
    {
        return $this->belongsToMany(Skill::class, 'project_skill');
    }
}
