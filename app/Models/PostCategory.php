<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PostCategory extends Model
{
    use HasFactory;

    protected $primaryKey =  'id_post_category';

    protected $table = 'posts_categories';

    protected $fillable = [
        'post_id',
        'category_id'
    ];
}
