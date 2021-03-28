@extends('front.layouts.app')
@section('content')
<br><br><br>
<!--breadcrumbs area start-->
@if( session()->has('success'))
<div class="alert alert-success">{{ session()->get('success') }}</div>
@endif
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
<!--breadcrumbs area end-->

<!--shop  area start-->
<div class="shop_area shop_fullwidth mt-70 mb-70">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <!--shop wrapper start-->
                <!--shop toolbar start-->
                <div class="shop_toolbar_wrapper">
                    <div class="shop_toolbar_btn">

                        <button data-role="grid_3" type="button" class=" btn-grid-3" data-toggle="tooltip" title="3"></button>

                        <button data-role="grid_4" type="button"  class="active btn-grid-4" data-toggle="tooltip" title="4"></button>

                        <button data-role="grid_list" type="button"  class="btn-list" data-toggle="tooltip" title="List"></button>
                    </div>
                   
                    <div class="page_amount">
                        <p>Showing 1–9 of 21 results</p>
                    </div>
                </div>
                 <!--shop toolbar end-->
                 <div class="row shop_wrapper">
                     @foreach ($products as $product)
                         
                    
                    <div class="col-lg-3 col-md-4 col-sm-6 col-12 ">
                        <div class="single_product">
                            <div class="product_thumb">
                                    <a class="primary_img" href="product-details.html"><img src="{{asset('/storage/'.$product->image)}}" alt=""></a>
                                    <a class="secondary_img" href="product-details.html"><img src="{{asset('/storage/'.$product->image)}}" alt=""></a>
                                    <div class="label_product">
                                        {{-- <span class="label_sale">Sale</span>
                                        <span class="label_new">New</span> --}}
                                    </div>
                                    <div class="action_links">
                                        <ul>
                                            <li class="add_to_cart"><a href="{{route('cart.add',$product->id)}}" ><span class="lnr lnr-cart"></span></a></li>
{{--                                             <li class="quick_button"><a href="#" data-toggle="modal" data-target="#modal_box"  title="quick view"> <span class="lnr lnr-magnifier"></span></a></li>
 --}}                                             <li class="wishlist">
                                                    @auth
                                                    <form action="{{route('wishlist.store')}}" method="post" title="Add to Wishlist">
                                                        {{ csrf_field() }}
                                                       <input type="hidden" type="text" name='product_id' value='{{$product->id}}'>
                                                       
                                                       <button  type="submit" title="Add to cart"><span class="lnr lnr-heart"></span></button>

                                                    </form>
                                                    @endauth
                                                  

                                                    
                                                </li>  
                                            
                                        </ul>
                                    </div>
                                </div>
                            <div class="product_content grid_content">
                                    <h4 class="product_name"><a href="{{route("product.detail",$product->id)}}">{{$product->name}}</a></h4>
                                    <p><a href="#">{{-- {{$product->categos->name}} --}}</a></p>
                                    <div class="price_box"> 
                                        <span class="current_price">{{$product->price}} MAD</span>
                                        <span class="old_price">{{$product->price}}</span>
                                    </div>
                                </div>
                            <div class="product_content list_content">
                                <h4 class="product_name"><a href="product-details.html">{{$product->name}}</a></h4>
                                <p><a href="#">{{-- {{$product->categos->name}} --}}</a></p>
                                <div class="price_box"> 
                                    <span class="current_price">{{$product->price}} MAD</span>
                                    <span class="old_price">{{$product->price}} MAD</span>
                                </div>
                                <div class="product_desc">
                                    <p>{{$product->description}}</p>
                                </div>
                                <div class="action_links list_action_right">
                                    <ul>
                                        <li class="add_to_cart"><a href="{{route('cart.add',$product->id)}}" title="Add to cart">Add to Cart</a></li>
{{--                                         <li class="quick_button"><a href="#" data-toggle="modal" data-target="#modal_box"  title="quick view"> <span class="lnr lnr-magnifier"></span></a></li>
 --}}                                        <li class="wishlist">
                                                <form action="{{route('wishlist.store')}}" method="post" title="Add to Wishlist">
                                                    {{ csrf_field() }}
                                                <input type="hidden" type="text" name='product_id' value='{{$product->id}}'>
                                                
                                                <button  type="submit" title="Add to cart"><span class="lnr lnr-heart"></span></button>

                                                </form>
                                        </li>  
                                        
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>
               

                <div class="shop_toolbar t_bottom">
                    <div class="pagination">
                        {!! $products->links() !!}
                    </div>
                </div>
               
                <!--shop toolbar end-->
                <!--shop wrapper end-->
            </div>
        </div>
    </div>
</div>
<!--shop  area end-->
    
@endsection