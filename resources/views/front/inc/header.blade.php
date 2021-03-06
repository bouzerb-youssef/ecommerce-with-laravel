
  
<div class="off_canvars_overlay">
                
</div>
<div class="offcanvas_menu offcanvas_two">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="canvas_open">
                    <a href="javascript:void(0)"><i class="icon-menu"></i></a>
                </div>
                <div class="offcanvas_menu_wrapper">
                    <div class="canvas_close">
                        <a href="javascript:void(0)"><i class="icon-x"></i></a>  
                    </div>
                    <div class="language_currency">
                        <ul>
                           
                          
                        </ul>
                    </div>
                    <div class="header_social text-right">
                        <ul>
                            <li><a href="#"><i class="ion-social-twitter"></i></a></li>
                            <li><a href="#"><i class="ion-social-googleplus-outline"></i></a></li>
                            <li><a href="#"><i class="ion-social-youtube-outline"></i></a></li>
                            <li><a href="#"><i class="ion-social-facebook"></i></a></li>
                            <li><a href="#"><i class="ion-social-instagram-outline"></i></a></li>
                        </ul>
                    </div>
                    
                 
                    <div class="call-support">
                        <p><a href="tel:(08)23456789">(08) 23 456 789</a> Customer Support</p>
                    </div>
                    <div id="menu" class="text-left ">
                        <ul class="offcanvas_main_menu">
                            <li><a class="active"  href="{{route("landing")}}">  ACCUEIL</a> </li>
                                    <li class="mega_items"><a href="{{route("shop.index")}}">BOUTIQUE</a>  </li>
                                   
                                                                  
                                    <li><a href="{{route("about")}}"> NOTRE COOP??RATIVE</a></li>
                                    <li><a href="{{route("contact")}}">CONTACTEZ-NOUS</a></li>  
                                    <li><a href="{{route("blog")}}">blog</a></li>
                                </ul>
                    </div>
                    <div class="offcanvas_footer">
                        <span><a href="#"><i class="fa fa-envelope-o"></i> info@yourdomain.com</a></span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--offcanvas menu area end-->

<header>
    <div class="main_header header_two">
        <div class="header_top">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-6 col-md-6">
                        <div class="language_currency">
                            <ul>
                              
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="header_social text-right">
                            <ul>
                                <li><a href="#"><i class="ion-social-twitter"></i></a></li>
                                <li><a href="#"><i class="ion-social-googleplus-outline"></i></a></li>
                                <li><a href="#"><i class="ion-social-youtube-outline"></i></a></li>
                                <li><a href="#"><i class="ion-social-facebook"></i></a></li>
                                <li><a href="#"><i class="ion-social-instagram-outline"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="header_middle header_middle2">
            <div class="container">
                <div class="row align-items-center">
                   
                    <div class="col-lg-4 col-md-3 col-sm-3 col-3">
                        <div class="logo">
                            <a href="index.html"><img src="{{ asset('assets/img/logo/logo.png')}}"  width="70" height="70" alt=""></a>
                        </div>
                    </div>
                    <a class="nav-link" href="/llogin">{{ __('Login') }}</a>
                    <div class="col-lg-4 col-md-6 col-sm-7 col-8">
                        <div class="header_account_area">
                            <div class="header_account_list register">
                                <ul>
                                    @guest

                            @if (Route::has('login'))
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                                </li>
                            @endif
                            
                            @if (Route::has('register'))
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                                </li>
                            @endif
                        @else
                            <li class="nav-item dropdown">
                                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    {{ Auth::user()->name }}
                                </a>

                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                        @csrf
                                    </form>
                                </div>
                            </li>
                        @endguest
                                </ul>
                            </div>
                            <div class="header_account_list header_wishlist">
                                
                                @auth
                               @php
                                    $id=\Auth::id()
                               @endphp
                                 <a href="{{route('wishlist')}}"><span class="lnr lnr-heart"></span> <span class="item_count">{{ $wishlist= App\Models\WishList::where("user_id",$id)->count() }} </span> </a>
                                @endauth
                            </div>
                            <div class="header_account_list  mini_cart_wrapper">
                               <a href="{{route('cart.show')}}"><span class="lnr lnr-cart"></span><span class="item_count"> {{ session()->has('cart') ? session()->get('cart')->totalQty : '0' }}</span></a>
                                <!--mini cart-->
                                {{-- <div class="mini_cart">
                                    <div class="cart_gallery">
                                        <div class="cart_close">
                                            <div class="cart_text">
                                                <h3>cart</h3>
                                            </div>
                                            <div class="mini_cart_close">
                                                <a href="javascript:void(0)"><i class="icon-x"></i></a>
                                            </div>
                                        </div>
                                        <div class="cart_item">
                                           <div class="cart_img">
                                               <a href="#"><img src="assets/img/s-product/product.jpg" alt=""></a>
                                           </div>
                                            <div class="cart_info">
                                                <a href="#">Primis In Faucibus</a>
                                                <p>1 x <span> $65.00 </span></p>    
                                            </div>
                                            <div class="cart_remove">
                                                <a href="#"><i class="icon-x"></i></a>
                                            </div>
                                        </div>
                                        <div class="cart_item">
                                           <div class="cart_img">
                                               <a href="#"><img src="assets/img/s-product/product2.jpg" alt=""></a>
                                           </div>
                                            <div class="cart_info">
                                                <a href="#">Letraset Sheets</a>
                                                <p>1 x <span> $60.00 </span></p>    
                                            </div>
                                            <div class="cart_remove">
                                                <a href="#"><i class="icon-x"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mini_cart_table">
                                        <div class="cart_table_border">
                                            <div class="cart_total">
                                                <span>Sub total:</span>
                                                <span class="price">$125.00</span>
                                            </div>
                                            <div class="cart_total mt-10">
                                                <span>total:</span>
                                                <span class="price">$125.00</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mini_cart_footer">
                                       <div class="cart_button">
                                            <a href="cart.html"><i class="fa fa-shopping-cart"></i> View cart</a>
                                        </div>
                                        <div class="cart_button">
                                            <a href="checkout.html"><i class="fa fa-sign-in"></i> Checkout</a>
                                        </div>
                                    </div>
                                </div> --}}
                                <!--mini cart end-->
                           </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="header_bottom sticky-header">
            <div class="container">  
                <div class="row align-items-center">
                    <div class="col-lg-8 offset-lg-2">
                        <!--main menu start-->
                        <div class="main_menu  menu_two color_two menu_position"> 
                            <nav>  
                                <ul>
                                    <li><a class="active"  href="{{route("landing")}}">  ACCUEIL</a> </li>
                                    <li class="mega_items"><a href="{{route("shop.index")}}">BOUTIQUE</a>  </li>
                                   
                                    <li><a href="{{route("contact")}}">   CONTACTEZ-NOUS   </a></li>                                
                                    <li><a href="{{route("about")}}"> NOTRE COOP??RATIVE</a></li>
                                    <li><a href="{{route("blog")}}">blog</a></li>
                                   
                                    
                                </ul>  
                            </nav> 
                        </div>
                        <!--main menu end-->
                    </div>
                </div>
            </div>
        </div>
    </div> 
</header>
<!--header area end-->


