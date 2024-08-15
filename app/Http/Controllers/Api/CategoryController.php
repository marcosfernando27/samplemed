<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Category;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    /**
     * list all categories
     */
    public function index()
    {

        try {

            $categories = Category::select('id_category', 'category')
                                ->orderBy('category')
                                ->get();

            return json_encode($categories);

        } catch (\Exception $e) {
            throw $e;
        }
    }
}
