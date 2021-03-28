@extends('front.layouts.app')
@section('content')
<br><br><br>
<div class="breadcrumbs_area">
    <div class="container">   
        <div class="row">
            <div class="col-12">
                <div class="breadcrumb_content">
                    <h3>Shop</h3>
                    <ul>
                        <li><a href="index.html">home</a></li>
                        <li>shop</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>         
</div>
         <!--shopping cart area start -->
         @if($cart)
         <div class="container">
            @if ($errors->any())
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
            @endif

         </div>
        
         <div class="shopping_cart_area mt-70">
            <div class="container">  
                <form action="#"> 
                    <div class="row">
                        <div class="col-12">
                            <div class="table_desc">
                                <div class="cart_page">
                                    <table>
                                <thead>
                                    <tr>
                                        <th class="product_remove">Delete</th>
                                        <th class="product_thumb">Image</th>
                                        <th class="product_name">Product</th>
                                        <th class="product-price">Price</th>
                                        <th class="product_quantity">Quantity</th>
                                        <th class="product_total">Total</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    {{-- ####################### --}}
                                    @foreach( $cart->items as $product)
                                    <tr>
                                       <td class="product_remove">
                                           <form action="{{ route('product.remove', $product['id'] )}}" method="post">
                                            @csrf
                                            @method('delete')
                                            <button type="submit" class="btn btn-danger btn-sm ml-4 float-right" >Remove</button>
                                    </form>
                                    {{-- <i   type="submit" class="fa fa-trash-o"></i></a> --}}
                                </td>
                                        <td class="product_thumb"><a href="#"><img src="{{asset('/storage/'.$product['image'] )}}" alt="{{ $product['image'] }}"></a></td>
                                        <td class="product_name"><a href="#">{{$product['name']}}</a></td>
                                        <td class="product-price">{{ $product['price'] }}</td>
                                        <td class="product_quantity">
                                         
                                          
                                            <form action="{{ route('product.update',$product['id'])}}" method="post">
                                                @csrf
                                                @method('put')
                                                <label>{{ $product['qty'] }}</label> 
                                                <input type="text" name="qty" id="qty" value={{ $product['qty']}}>
                                                <button type="submit" class="btn btn-secondary btn-sm">Change</button>
                    
                                            </form>
                                        </td>
                                        <td class="product_total">{{ $product['price']*=$product['qty'] }}</td>
    
    
                                    </tr>
                                    @endforeach
                                </tbody>
                            </table>   
                                </div>  
                                <div class="cart_submit">
                                    <button type="submit">update cart</button>
                                </div>      
                            </div>
                         </div>
                     </div>
                     <!--coupon code area start-->
                    <div class="coupon_area">
                        <div class="row">
                            <div class="col-lg-6 col-md-6">
                                <div class="coupon_code left">
                                    <h3>Coupon</h3>
                                    <div class="coupon_inner">   
                                        <p>Enter your coupon code if you have one.</p>                                
                                        <input placeholder="Coupon code" type="text">
                                        <button type="submit">Apply coupon</button>
                                    </div>    
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6">
                                <div class="coupon_code right">
                                    <h3>Cart Totals</h3>
                                    <div class="coupon_inner">
                                       <div class="cart_subtotal">
                                           <p>Subtotal</p>
                                           <p class="cart_amount">{{$cart->totalPrice}}</p>
                                       </div>
                                       <div class="cart_subtotal ">
                                           <p>Shipping</p>
                                           <p class="cart_amount"><span>Flat Rate:</span> 255.00</p>
                                       </div>
                                       <a href="#">Calculate shipping</a>
    
                                       <div class="cart_subtotal">
                                           <p>Total</p>
                                           <p class="cart_amount">{{$cart->totalPrice += 255.00}}</p>
                                       </div>
                                       <div class="checkout_btn">
                                           <a href="{{route("checkout")}}">Proceed to Checkout</a>
                                       </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> 
                    <!--coupon code area end-->
                </form> 
            </div>     
        </div>
        @else
        <br><br><br>
        <div class="container"><p class="h2">There are no items in the cart</p> </div>
        <br><br><br>
        @endif 
        <!--shopping cart area end -->
@endsection