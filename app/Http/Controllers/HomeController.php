<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        $posts = Post::query()->with('category')->orderBy('id', 'desc')->paginate('2');
        return view('posts.index', compact('posts'));
    }

    public function show($slug)
    {
        $post = Post::query()->where('slug', $slug)->FirstOrFail();
        $post->views += 1;
        $post->update();
        return view('posts.show', compact('post'));
    }
}
