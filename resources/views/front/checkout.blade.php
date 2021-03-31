@extends('front.layouts.app')
@section('content')
  <!--breadcrumbs area start-->
  <div class="breadcrumbs_area">
    <div class="container">   
        <div class="row">
            <div class="col-12">
                <div class="breadcrumb_content">
                   <h3>Checkout</h3>
                    <ul>
                        <li><a href="/">home</a></li>
                        <li>Checkout</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>         
</div>
<!--breadcrumbs area end-->

<!--Checkout page section-->
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
<form action="{{route("order.store")}}" method="post">
   {{ csrf_field() }}
    <div class="Checkout_section mt-70">
    <div class="container">
        <br><br>
            <div class="checkout_form">
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <form action="#">
                            <h3>information sur vous</h3>
                            <div class="row">

                              
                                <div class="col-lg-6 mb-20">
                                    <label> Name  <span>*</span></label>
                                    <input type="text" name="name"> 
                                </div>
                                
                                <div class="col-12 mb-20">
                                    <label for="country">country <span>*</span></label>
                                    <input type="text" name="country"> 

                        
                                </div>

                                <div class="col-12 mb-20">
                                    <label> address  <span>*</span></label>
                                    <input  type="text" name="address">     
                                </div>
                                
                                <div class="col-12 mb-20">
                                    <label>City <span>*</span></label>
                                    <input  type="text" name="City">    
                                </div> 
                                
                                <div class="col-lg-6 mb-20">
                                    <label>Phone<span>*</span></label>
                                    <input type="text" name="Phone"> 

                                </div> 
                                <div class="col-lg-6 mb-20">
                                    <label> Email   <span>*</span></label>
                                    <input type="text" name="Email"> 

                                </div> 
                                <div class="container"><button type="submit" class="btn btn-success">Passer un order</button></div> 
                                <div class="col-12 mb-20">
                                    

                                    <div id="collapsetwo" class="collapse one" data-parent="#accordion">
                                    <div class="row">
                                        
                                            
                                        </div>
                                    </div>
                                </div>
                                                                                    
                            </div>
                        </form>    
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <form action="">    
                            <h3>votre order</h3> 
                            <div class="order_table table-responsive">
                                <table>
                                    <thead>
                                        <tr>
                                            <th>Product</th>
                                            <th>Total</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @if($cart)
                                        @foreach( $cart->items as $product)
                                        <tr>
                                            <td> {{$product['name']}} <strong> ×{{ $product['qty'] }}</strong></td>
                                            <td>{{ $product['price']*=$product['qty'] }}</td>
                                        </tr>
                                        @endforeach
                                       
                                    </tbody>
                                    <tfoot>
                                        
                                        <tr class="order_total">
                                            <th>Order Total</th>
                                            <td><strong>{{$cart->totalPrice}}</strong></td>
                                        </tr>
                                        @endif
                                    </tfoot>
                                </table>     
                            </div>
                            
                           
                                
                            </div> 
                            <br><br><br><br><br>

                          
                        </form>         
                    </div>
                </div> 
            </div> 
        </div>       
    </div>
</form>
@if($cart)
<br><br><br><br>
@endif
<!--Checkout page section end-->

    
@endsection