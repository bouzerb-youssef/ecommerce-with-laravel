<footer class="footer_widgets color_two">
    <div class="footer_top">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-12 col-sm-7">
                    <div class="widgets_container contact_us">
                       <div class="footer_logo">
                           <a href="index.html"><img src="assets/img/logo/logo.png"  width="80" height="80" alt=""></a>
                       </div>
                       <p class="footer_desc">La Coopérative Mogador Est Née En 05-06- 2007 Située À Centre Rural OUNARA Province D’Essaouira</p>
                        <p><span>Address:</span> 4000 Essaouira, Maroc</p>
                        <p><span>Email:</span> <a href="#">demo@hasthemes.com</a></p>
                        <p><span>Call us:</span> <a href="0662-132044">0662-132044</a> </p>
                    </div>          
                </div>
                <div class="col-lg-2 col-md-3 col-sm-5">
                    <div class="widgets_container widget_menu">
                        <h3>Information</h3>
                        <div class="footer_menu">
                        
                            <ul>

                                <li><a href="{{route('landing')}}">ACCUEIL</a></li>
                                <li><a href="{{route('shop.index')}}">BOUTIQUE</a></li>
                                <li><a href="{{route('about')}}"> NOTRE COOPÉRATIVE </a></li>
                                <li><a href="{{route('blog')}}"> Blog</a></li>
                               
                            </ul>
                        </div>
                    </div>
                </div>
               <div class="col-lg-2 col-md-3 col-sm-4">
                    <div class="widgets_container widget_menu">
                        <h3>Products</h3>
                        <div class="footer_menu">
                            <ul>
                                <li><a href="#">Brands</a></li>
                                <li><a href="#">  Gift Certificates</a></li>
                                <li><a href="#">Affiliate</a></li>
                                <li><a href="#">Specials</a></li>
                                <li><a href="#">Returns</a></li>
                                <li><a href="#"> Order History</a></li>
                            </ul>
                        </div>
                    </div>
                </div> 
               

                <div class="col-lg-4 col-md-6 col-sm-8">
                    <div class="widgets_container widget_newsletter">
                        <h3>newsletter</h3>
                        <p class="footer_desc">Profitez de notre newsletter pour rester à jour avec les dernières nouvelles et les ventes spéciales. Laissez votre adresse email ici!

                        </p>
                        <div class="subscribe_form">
                            <form action="{{route('newsletter')}}" method="POST">
                                {{ csrf_field() }}
                                <input id="mc-email"name='email' type="email" autocomplete="off" placeholder="Enter you email" />
                                <button id="mc-submit">Subscribe</button>
                            </form>
                            <!-- mailchimp-alerts Start -->
                            <div class="mailchimp-alerts text-centre">
                                <div class="mailchimp-submitting"></div><!-- mailchimp-submitting end -->
                                <div class="mailchimp-success"></div><!-- mailchimp-success end -->
                                <div class="mailchimp-error"></div><!-- mailchimp-error end -->
                            </div><!-- mailchimp-alerts end -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        @if( session()->has('success'))
        <div class="alert alert-success">{{ session()->get('success') }}</div>
        @endif

    </div>
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
    <div class="footer_bottom">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-7">
                    <div class="copyright_area">
                        <p>Copyright  © 2020  <a href="#">Cooperative Mogador</a>  . All Rights Reserved.Design by  <a href="#">Cooperative Mogador</a></p>
                    </div>
                </div>    
              {{--  --}}
            </div>
        </div>
    </div>   
</footer>
<!-- modal area start-->
