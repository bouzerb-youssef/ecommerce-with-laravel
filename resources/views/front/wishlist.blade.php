@extends('front.layouts.app')
@section('content')
<div class="wishlist_area mt-70">
    <div class="container">   
        <form action="#"> 
            <div class="row">
                <div class="col-12">
                    <div class="table_desc wishlist">
                        <div class="cart_page">
                            <table>
                                <thead>
                                    <tr>
                                        <th class="product_remove">Delete</th>
                                        <th class="product_thumb">Image</th>
                                        <th class="product_name">Product</th>
                                        <th class="product-price">Price</th>
                                        <th class="product_quantity">Stock Status</th>
                                        <th class="product_total">Add To Cart</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($products as $product)
                                    <tr>
                                      
                                            
                                    
                                       <td class="product_remove"><a href="#">X</a></td>
                                        <td class="product_thumb"><a href="#"><img src="{{asset('/storage/'.$product->image)}}" alt=""></a></td>
                                        <td class="product_name"><a href="#">{{$product->name}}</a></td>
                                        <td class="product-price">{{$product->name}}</td>
                                        <td class="product_quantity">In Stock</td>
                                        <td class="product_total"><a href="{{route('cart.add',$product->id)}}">Add To Cart</a></td>


                                    </tr>

                                    @endforeach

                                </tbody>
                            </table>   
                        </div>  

                    </div>
                 </div>
             </div>

        </form> 
        <div class="row">
            <div class="col-12">
                 <div class="wishlist_share">
                    <h4>Share on:</h4>
                    <ul>
                        <li><a href="#"><i class="fa fa-rss"></i></a></li>           
                        <li><a href="#"><i class="fa fa-vimeo"></i></a></li>           
                        <li><a href="#"><i class="fa fa-tumblr"></i></a></li>           
                        <li><a href="#"><i class="fa fa-pinterest"></i></a></li>        
                        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>        
                    </ul>      
                </div>
            </div> 
        </div>

    </div>
</div>
    
@endsection