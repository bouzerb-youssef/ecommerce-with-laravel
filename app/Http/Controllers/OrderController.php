<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use App\Models\orderitem;
use App\Models\Order;
use App\Models\Cart;
class OrderController extends Controller
{
    
    public function fresh() {

       
        $cart = new Cart( session()->get('cart'));
        $cart=delete();
     

    }

   public function store(Request $request){
        $request->validate([
            'name' => 'required',
            
            'country' => 'required',
            'address' => 'required',
            'City' => 'required',
            'Phone' => 'required',
            'Email' => 'required',
            ]);


        $order = Order::create([
        
        

                'name' => $request->name,
              
                'country' => $request->country,
                'address' => $request->address,
                'City' => $request->City,
                'Phone' => $request->Phone,
                'Email' => $request->Email,
            
            ]);
            

            /* #################### */
             function  content(){
                if (session()->has('cart')) {
                    $cart = new Cart(session()->get('cart'));
                   
                } else {
                    $cart = null;
                }
                return $cart;
        
            }
            
        foreach ( content()->items as $item ) {

                    $product= orderitem::create([
                                 'order_id' => $order->id,
                                 'product_id' => $item['id'],
                                 'quantity' => $item['qty'],
                            ]);
                            
                        }
                        $order->save();
                        $product->save();
            if($product->save()){
              //  $cart = new Cart( session()->get('cart'));
               Session::forget('cart');
               
               //return  $cart=delete();
                
            }
             
                        
         return redirect()->back();       

}
}