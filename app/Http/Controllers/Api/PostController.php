<?php

namespace App\Http\Controllers\Api;

use App\Models\Post;
use Illuminate\Http\Request;
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
                        ->get();

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
    public function store(Request $request)
    {

        DB::beginTransaction();

        try {

            // requests all
            $data                   = $request->all();
            // $data['title']          = tratar_nome($data['title']);

            // save post
            Post::create($data);

            DB::commit();

        } catch (\Exception $e) {

            DB::rollback();
            throw $e;
        }
    }
}
