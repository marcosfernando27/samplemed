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
        'body',
        'user_id'
    ];

    public function users(){
        return $this->belongsTo(User::class, 'user_id');
    }

    public function categories(){
        return $this->belongsToMany(Category::class, 'posts_categories', 'post_id', 'category_id');
    }

    public function keywords(){
        return $this->belongsToMany(Keyword::class, 'posts_keywords', 'post_id', 'keyword_id');
    }

}
