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
      <!--contact map start-->
      <div class="container-fluid">
        <div class="map-responsive">
           <div id="googleMap"><iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d435345.7875850942!2d-9.758127!3d31.520343!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xdad9a2f736a7865%3A0x6cd697328613d0d5!2sRue%20Abdelmoumen%2C%20Essaouira%2C%20Maroc!5e0!3m2!1sfr!2sus!4v1616598073937!5m2!1sfr!2sus" width="600" height="500" style="border:0;" allowfullscreen="" loading="lazy"></iframe></div>
        </div>
     </div>
     <!--contact area start-->
     <div class="contact_area">
         <div class="container">   
             <div class="row">
                 <div class="col-lg-6 col-md-6">
                    <div class="contact_message content">
                         <h3>contact us</h3>    
                          <p>Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram anteposuerit litterarum formas human. qui sequitur mutationem consuetudium lectorum. Mirum est notare quam</p>
                         <ul>
                             <li><i class="fa fa-fax"></i>  Address : No 40 Baria Sreet 133/2 NewYork City</li>
                             <li><i class="fa fa-phone"></i> <a href="#">Infor@roadthemes.com</a></li>
                             <li><i class="fa fa-envelope-o"></i><a href="tel:0(1234)567890">0(1234) 567 890</a>  </li>
                         </ul>             
                     </div> 
                 </div>
                 <div class="col-lg-6 col-md-6">
                    <div class="contact_message form">
                         <h3>Tell us your project</h3>   
                         <form id="contact-form" method="POST"  action="https://demo.hasthemes.com/safira-preview/safira/assets/mail.php">
                             <p>  
                                <label> Your Name (required)</label>
                                 <input name="name" placeholder="Name *" type="text"> 
                             </p>
                             <p>       
                                <label>  Your Email (required)</label>
                                 <input name="email" placeholder="Email *" type="email">
                             </p>
                             <p>          
                                <label>  Subject</label>
                                 <input name="subject" placeholder="Subject *" type="text">
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