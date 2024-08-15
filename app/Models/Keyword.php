<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Keyword extends Model
{
    use HasFactory;

    protected $primaryKey =  'id_keyword';

    protected $table = 'keywords';

    protected $fillable = [
        'keyword'
    ];

    public function posts(){
        return $this->belongsToMany(Post::class, 'posts_keywords', 'keyword_id', 'post_id');
    }
}
