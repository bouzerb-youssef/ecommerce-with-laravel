@extends('front.layouts.app')
@section('style')
<style>
 .map-responsive{
    overflow:hidden; 
    padding-bottom:40%;
    position:relative;
    height:0;
}
.map-responsive iframe{
    left:0;
    top:0;
    width:100%;
    position:absolute;
 }
</style>
@section('content')

<!-- Small modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bd-example-modal-lg">Large modal</button>

<div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      ...
    </div>
  </div>
</div>
    <!--header area start-->
    
    <!--offcanvas menu area start-->
  
  <!--slider area start-->
<section class="slider_section color_two mb-70">
    <div class="slider_area owl-carousel">
        <div class="single_slider d-flex align-items-center" data-bgimg="assets/img/slider/sliderf.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="slider_content">
                            <h1>Les mellieur Produits</h1>
                            <h2>Alimontaire, Cosmitique</h2>
                            <p>
                                coopérative argane Mogador, les meilleurs produits de qualités pour votre beauté et votre santé.
                            </p> 
                            <a href="{{route("shop.index")}}">Acheter Maintenant </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="single_slider d-flex align-items-center" data-bgimg="assets/img/slider/slider.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="slider_content">
                            <h1>Les mellieur Produits</h1>
                            <h2>Alimontaire, Cosmitique</h2>
                            <p>
                                coopérative argane Mogador, les meilleurs produits de qualités pour votre beauté et votre santé.
                             </p> 
                            <a href="{{route("shop.index")}}">Acheter Maintenant </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
  
</section>
<!--slider area end-->

<!--banner area start-->

    <!--banner area end-->
    
    <!--product area start-->
    <div class="product_area color_two  mb-60">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="product_header">
                        <div class="section_title">
                           <p class="h3">Récemment ajouté notre magasin</p>
                           <h2>Produits tendance</h2>
                        </div>
                        
                    </div>
                </div>
            </div> 
            <div class="product_container">  
               <div class="row">
                   <div class="col-12">
                        <div class="tab-content">
                            <div class="tab-pane fade show active" id="plant1" role="tabpanel">
                                <div class="product_carousel product_column5 owl-carousel">
                                    @foreach ($products as $product)

                                    <article class="single_product">
                                        <figure>
                                            <div class="product_thumb">
                                                <a class="primary_img" href="{{route("product.detail",$product->id)}}"><img src="{{asset('/storage/'.$product->image)}}" alt=""></a>
                                                
                                               {{--  <div class="label_product">
                                                    <span class="label_sale">Sale</span>
                                                    <span class="label_new">New</span>
                                                </div> --}}
                                                <div class="action_links">
                                                    <ul>
                                                        <li class="add_to_cart"><a href="{{route('cart.add',$product->id)}}" ><span class="lnr lnr-cart"></span></a></li>
                                                        @auth
                                                    <form action="{{route('wishlist.store')}}" method="post" title="Add to Wishlist">
                                                        {{ csrf_field() }}
                                                       <input type="hidden" type="text" name='product_id' value='{{$product->id}}'>
                                                       
                                                       <button  type="submit" title="Add to FAVORITE"><span class="lnr lnr-heart"></span></button>

                                                    </form>
                                                    @endauth
                                                  
                                                    </ul>
                                                </div>
                                            </div>
                                            <figcaption class="product_content">
                                                <h4 class="product_name"><a href="{{route("product.detail",$product->id)}}">{{$product->name}}</a></h4>
                                                @if ($product->catego_id =null)
                                             
                                                <p><a href="#">{{$product->categos->name}}</a></p>
                                                @endif
                                                <p><a href="#">category</a></p>
                                                
                                                
                                                
                                                <div class="price_box"> 
                                                    <span class="current_price">{{$product->price}} MAD</span>
                                                    
                                                </div>
                                            </figcaption>
                                        </figure>
                                    </article>
                                    @endforeach
                                </div>  
                            </div>
                         
                        </div>
                    </div>
                </div>        
            </div>   
        </div> 
    </div>
    <!--product area end-->
    
     <!--product area start-->
    
    <!--product area end-->
    
    <!--banner fullwidth area satrt-->
    <div class="banner_fullwidth color_two">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="banner_full_content">
                        <p>Les mellieur Produits</p>
                        <h2>Alimontaire, Cosmitique</h2>
                        <a href="{{route('shop.index')}}">Acheter Maintenant</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--banner fullwidth area end-->
    
    <!--product banner area satrt-->
  
    <!--product banner area end-->
    
    <!--blog area start-->
    <section class="blog_section blog_section2 color_two">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section_title">
                       <p>Our recent articles about Organic</p>
                       <h2>Our Blog Posts</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="blog_carousel blog_column3 owl-carousel">
                    @foreach ($post as $item)     
                    <div class="col-lg-3">
                        <article class="single_blog">
                            <figure>
                                <div class="blog_thumb">
                                    <a href="{{route("blog.show",$item->slug)}}"><img src="{{asset('/storage/'.$item->image)}}" class="img-fluid" alt="Responsive image" style="height: 200px;"   alt=""></a>
                                </div>
                                <figcaption class="blog_content">
                                   <div class="articles_date">
                                         <p>{{ $item->created_at }}<a href="{{route("blog.show",$item->slug)}}">{{ $item->title}}</a> </p>
                                    </div>
                                    <h4 class="post_title"><a href="{{route("blog.show",$item->slug)}}">{{ $item->meta_description}}</a></h4>
                                    <footer class="blog_footer">
                                        <a href="{{route("blog")}}">Voir plus</a>
                                    </footer>
                                </figcaption>
                            </figure>
                        </article>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </section>
    <!--blog area end-->
    
    <!--banner area start-->
   
    <!--banner area end-->

    <!--custom product area start-->
   
    <!--custom product area end-->

     <!--brand area start-->
  {{--   <div class="brand_area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="brand_container owl-carousel ">
                        <div class="single_brand">
                            <a href="#"><img src="assets/img/brand/brand1.jpg" alt=""></a>
                        </div>
                        <div class="single_brand">
                            <a href="#"><img src="assets/img/brand/brand2.jpg" alt=""></a>
                        </div>
                        <div class="single_brand">
                            <a href="#"><img src="assets/img/brand/brand3.jpg" alt=""></a>
                        </div>
                        <div class="single_brand">
                            <a href="#"><img src="assets/img/brand/brand4.jpg" alt=""></a>
                        </div>
                        <div class="single_brand">
                            <a href="#"><img src="assets/img/brand/brand2.jpg" alt=""></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> --}}
    <!--brand area end-->
 <!--contact map start-->
 <div class="container-fluid">
    <div class="map-responsive">
       <div id="googleMap"><iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d435345.7875850942!2d-9.758127!3d31.520343!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xdad9a2f736a7865%3A0x6cd697328613d0d5!2sRue%20Abdelmoumen%2C%20Essaouira%2C%20Maroc!5e0!3m2!1sfr!2sus!4v1616598073937!5m2!1sfr!2sus" width="600" height="500" style="border:0;" allowfullscreen="" loading="lazy"></iframe></div>
    </div>
 </div>
 <!--contact area start-->
    <!--footer area start-->
  
    <!--footer area end-->
    <script>
    
    </script>
    
@endsection
