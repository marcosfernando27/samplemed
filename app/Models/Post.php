<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;

    protected $primaryKey =  'id_post';

    protected $table = 'posts';

    protected $fillable = [
        'title',
        'body'
    ];

}
