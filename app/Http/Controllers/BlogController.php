<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;

use TCG\Voyager\Models\Post;

class BlogController extends Controller
{
    public function index(){
        $products=Product::with('categos')->take(4)->get();
        $post = Post::with('category')->get();
        //return $post;
        return view('front.blog',compact('products','post'));
    }
}
