<?php

namespace App\Http\Controllers\Api;

use App\Models\Post;
use App\Http\Requests\PostRequest;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

class PostController extends Controller
{
    /**
     * List posts of the blog
    */
    public function index()
    {

        try {

            $posts = Post::select('title', 'created_at')
                        ->orderBy('created_at', 'desc')
                        ->paginate(20);

            return json_encode($posts);

        } catch (\Exception $e) {
            throw $e;
        }
    }

    /**
     * Show the form for creating a new resource.
    */
    public function create()
    {
        //
    }

    /**
     * Save posts blog
    */
    public function store(PostRequest $request)
    {

        DB::beginTransaction();

        try {

            // requests all
            $data                   = $request->all();
            // save post
            Post::create($data);

            DB::commit();

        } catch (\Exception $e) {

            DB::rollback();
            throw $e;
        }
    }
}
