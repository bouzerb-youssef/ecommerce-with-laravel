<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;

use TCG\Voyager\Models\Post;
use TCG\Voyager\Models\Category;

class BlogController extends Controller
{
    public function index(){
        $products=Product::with('categos')->take(4)->get();
        $post = Post::with('category')->paginate(8);
        $categories = Category::get();
        return view('front.blog',compact('products','post','categories'));
    }



        public function show($slug){
            $blog = Post::where('slug', '=', $slug)->firstOrFail();
           
         $post = Post::take(3)->get();
        return view('front.blogs', compact('blog','post'))->render();

            
        }


	
}
