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

@endsection
@section('content')
<br><br><br>
<div class="breadcrumbs_area">
    <div class="container">   
        <div class="row">
            <div class="col-12">
                <div class="breadcrumb_content">
                    <h3>contact</h3>
                    <ul>
                        <li><a href="/">home</a></li>
                        <li>contact</li>
                    </ul>
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
      <!--contact map start-->
      <div class="container-fluid">
        <div class="map-responsive">
           <div id="googleMap"><iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d435345.7875850942!2d-9.758127!3d31.520343!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xdad9a2f736a7865%3A0x6cd697328613d0d5!2sRue%20Abdelmoumen%2C%20Essaouira%2C%20Maroc!5e0!3m2!1sfr!2sus!4v1616598073937!5m2!1sfr!2sus" width="600" height="500" style="border:0;" allowfullscreen="" loading="lazy"></iframe></div>
        </div>
     </div>
     <!--contact area start-->
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
     <div class="contact_area">
         <div class="container">   
             <div class="row">
                 <div class="col-lg-6 col-md-6">
                    <div class="contact_message content">
                         <h3>contactez-nous</h3>    
                          <p>Profitez de notre newsletter pour rester à jour avec les dernières nouvelles et les ventes spéciales. Laissez votre adresse email ici!</p>
                         <ul>
                             <li><i class="fa fa-fax"></i>  Address :Située À Centre Rural OUNARA Province D’Essaouira</li>
                             <li><i class="fa fa-phone"></i> <a href="#">Infor@roadthemes.com</a></li>
                             <li><i class="fa fa-envelope-o"></i><a href="tel:0662-132044">0662-132044</a>  </li>
                         </ul>             
                     </div> 
                 </div>
                 <div class="col-lg-6 col-md-6">
                    <div class="contact_message form">
                         <h3>Tell us your project</h3>   
                         <form action="{{route("contact.store")}}" method="POST" >
                            {{ csrf_field() }}
                             <p>  
                                <label> Your Name (required)</label>
                                 <input name="name" placeholder="Name *" type="text"> 
                             </p>
                             <p>       
                                <label>  Your Email (required)</label>
                                 <input name="email" placeholder="Email *" type="email">
                             </p>
                               
                             <div class="contact_textarea">
                                 <label>  Your Message</label>
                                 <textarea placeholder="Message *" name="message"  class="form-control2" ></textarea>     
                             </div>   
                             <button type="submit"> Send</button>  
                             <p class="form-messege"></p>

                         </form> 
 
                     </div> 
                 </div>
             </div>
         </div>    
     </div>
 
     <!--contact area end-->
 <br><br><br>
@endsection