<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\Catego;
use TCG\Voyager\Models\Post;
class LandingPageController extends Controller
{
    public function index(){
        $products=Product::with('categos')->take(6)->get();
        $post = Post::take(3)->get();
     

     
        return view('front.landing',compact('products','post'));
    }
    public function contact(){
        return view('front.contact');
    }
    public function about(){
        return view('front.about');
    }

   

}
