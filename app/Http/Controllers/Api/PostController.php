<?php

namespace App\Http\Controllers\Api;

use App\Models\Post;
use App\Http\Requests\PostRequest;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use App\Models\PostCategory;

class PostController extends Controller
{
    /**
     * List posts of the blog
    */
    public function index()
    {

        try {

            $posts = Post::with('categories')
                        ->orderBy('created_at', 'desc')
                        ->paginate(10);

            return json_encode($posts);

        } catch (\Exception $e) {
            throw $e;
        }
    }

    /**
     * Save posts blog
    */
    public function store(PostRequest $request)
    {

        DB::beginTransaction();

        try {

            // Create post
            $data                   = $request->except('category_id');
            $data['user_id']        = auth()->id();
            // save post
            $post = Post::create($data);

            // save table pivô
            $post->categories()->sync($request['category_id']);

            DB::commit();

        } catch (\Exception $e) {

            DB::rollback();
            throw $e;
        }
    }
}
