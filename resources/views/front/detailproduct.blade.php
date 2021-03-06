@extends('front.layouts.app')
@section('content')
  <!--product details start-->
  <div class="breadcrumbs_area">
    <div class="container">   
        <div class="row">
            <div class="col-12">
                <div class="breadcrumb_content">
                    <h3>produit</h3>
                    <ul>
                        <li><a href="/">home</a></li>
                        <li>produit</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>         
</div>
  <div class="product_details mt-70 mb-70">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6">
                <div class="product-details-tab">
                    <div id="img-1" class="zoomWrapper single-zoom">
                        <a href="#">
                            <img id="zoom1" src="{{asset('/storage/'.$product->image)}}"  alt="$product->image">
                        </a>
                    </div>
                    
                </div>
            </div>
            <div class="col-lg-6 col-md-6">
                <div class="product_d_right">
                   <form action="#">
                       
                        <h1><a href="#"> {{$product->name}}</a></h1>
                        
                        <div class=" product_ratting">
                            <ul>
                                <li><a href="#"><i class="icon-star"></i></a></li>
                               <li><a href="#"><i class="icon-star"></i></a></li>
                               <li><a href="#"><i class="icon-star"></i></a></li>
                               <li><a href="#"><i class="icon-star"></i></a></li>
                               <li><a href="#"><i class="icon-star"></i></a></li>
                                
                            </ul>
                            
                        </div>
                        <div class="price_box">
                            <span class="current_price">{{$product->price}} MAD</span>
{{--                             <span class="old_price">??80.00</span>
 --}}                            
                        </div>
                        <div class="product_desc">
                            <p>{{$product->description}} </p>
                        </div>
                       
                        <div class="product_variant quantity">
                           
                            <a class="button"  href="{{route('cart.add',$product->id)}}"  type="button" >add to cart kh</a>  
                            
                        </div>
                       {{--  <div class=" product_d_action">
                           <ul>
                               <li><a href="#" title="Add to wishlist">+ Add to Wishlist</a></li>
                               <li><a href="#" title="Add to wishlist">+ Compare</a></li>
                           </ul>
                        </div> --}}
                        <div class="product_meta">
                          
                            <span>Category: <a href="#">{{$product->categos->name}}</a></span>
                        </div>
                        
                    </form>
                    <div class="priduct_social">
                        <ul>
                            <li><a class="facebook" href="#" title="facebook"><i class="fa fa-facebook"></i> Like</a></li>           
                            <li><a class="twitter" href="#" title="twitter"><i class="fa fa-twitter"></i> tweet</a></li>           
                            <li><a class="pinterest" href="#" title="pinterest"><i class="fa fa-pinterest"></i> save</a></li>           
                            <li><a class="google-plus" href="#" title="google +"><i class="fa fa-google-plus"></i> share</a></li>        
                            <li><a class="linkedin" href="#" title="linkedin"><i class="fa fa-linkedin"></i> linked</a></li>        
                        </ul>      
                    </div>

                </div>
            </div>
        </div>
    </div>    
</div>
<!--product details end-->

<!--product info start-->
<div class="product_d_info mb-65">
    <div class="container">   
        <div class="row">
            <div class="col-12">
                <div class="product_d_inner">   
                    <div class="product_info_button">    
                        <ul class="nav" role="tablist">
                            <li >
                                <a class="active" data-toggle="tab" href="#info" role="tab" aria-controls="info" aria-selected="false">Description</a>
                            </li>
                            
                        </ul>
                    </div>
                    <div class="tab-content">
                        <div class="tab-pane fade show active" id="info" role="tabpanel" >
                            <div class="product_info_content">
                                <p>{{$product->description}}</p>
                               
                            </div>    
                        </div>
                        

                        
                    </div>
                </div>     
            </div>
        </div>
    </div>    
</div>  
<!--product info end-->

<!--product area start-->
<section class="product_area related_products">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="section_title">
                    <h2>Related Products	</h2>
                </div>
            </div>
        </div> 
        <div class="row">
            <div class="col-12">
              
                    
              
                <div class="product_carousel product_column5 owl-carousel">
                    @foreach ($products as $item)
                    <article class="single_product">
                        <figure>

                            <div class="product_thumb">
                                <a class="primary_img" href="product-details.html"><img src="{{asset('/storage/'.$item->image)}}" alt=""></a>
                                <div class="label_product">
                                   
                                </div>
                                <div class="action_links">
                                    <ul>
                                        <li class="add_to_cart"><a href="{{route('cart.add',$product->id)}}" ><span class="lnr lnr-cart"></span></a></li>
                                        @auth
                                        <form action="{{route('wishlist.store')}}" method="post" title="Add to Wishlist">
                                            {{ csrf_field() }}
                                           <input type="hidden" type="text" name='product_id' value='{{$product->id}}'>
                                           
                                           <button  type="submit" title="Add to cart"><span class="lnr lnr-heart"></span></button>

                                        </form>
                                        @endauth
                                      
                                    </ul>
                                </div>
                            </div>
                            <figcaption class="product_content">
                                <h4 class="product_name"><a href="product-details.html">{{$item->name}}</a></h4>
                                <p><a href="#">Fruits</a></p>
                                <div class="price_box"> 
                                    <span class="current_price">{{$item->price}} MAD</span>
                                   {{--  <span class="old_price">$235.00</span> --}}
                                </div>
                            </figcaption>
                        </figure>
                    </article>
                    @endforeach
                </div>
                
            </div>
        </div>  
    </div>
</section>
<!--product area end-->

 <!--product area start-->

<!--product area end-->
    
@endsection