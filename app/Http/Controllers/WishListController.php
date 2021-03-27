<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\WishList;
use App\Models\Product;
use Illuminate\Support\Facades\Auth;
class WishListController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $id = Auth::id(); 
        
        $list= WishList::where('user_id',"=",$id)->select("product_id")->get();
      
  
            $products=Product::find($list);
          
        
        
            
       
   
    
        return view("front.wishlist",compact("products"));

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
      
            $request->validate([
                'product_id' => 'required',
               
                ]);
                $id = Auth::id(); 
                
        
            
            try {

                $WishList = WishList::create([
                
        
                    'product_id' => $request->product_id,
                    'user_id' =>$id,
                ]);
                $WishList->save();

                return redirect()->back();
            } catch (\Exception $ex) {
                return redirect()->back()->with('success', 'Product was added');
            }

           
           
       
                 
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
