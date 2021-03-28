@extends('front.layouts.app')
@section('content')

<div class="blog_details">
    <div class="container">
        <div class="row">
            <div class="col-lg-9 col-md-12">
                <!--blog grid area start-->
                <div class="blog_wrapper blog_wrapper_details">
                    <article class="single_blog">
                        <figure>
                           <div class="post_header">
                               <h3 class="post_title">{{$blog->title}}/h3>
                                <div class="blog_meta">   
                                   <p>Posted by : <a href="#">admin</a> / On : <a href="#">{{$blog->created_at}}</a> </p>                                     
                                </div>
                            </div>
                            <div class="blog_thumb">
                               <a href="#"><img src="{{asset('/storage/'.$blog->image)}}" alt=""></a>
                           </div>
                           <figcaption class="blog_content">
                                <div class="post_content">
                                   <div>
                                    {{$blog->body}}
                                   </div>
                                </div>
                                
                                    <div class="social_sharing">
                                        <p>share this post:</p>
                                        <ul>
                                            <li><a href="#" title="facebook"><i class="fa fa-facebook"></i></a></li>
                                            <li><a href="#" title="twitter"><i class="fa fa-twitter"></i></a></li>
                                            <li><a href="#" title="pinterest"><i class="fa fa-pinterest"></i></a></li>
                                            <li><a href="#" title="google+"><i class="fa fa-google-plus"></i></a></li>
                                            <li><a href="#" title="linkedin"><i class="fa fa-linkedin"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                           </figcaption>
                        </figure>
                    </article>
                    <div class="related_posts">
                       <h3>Related posts</h3>
                        <div class="row">
                            @foreach ($post as $item) 
                            <div class="col-lg-4 col-md-4 col-sm-6">
                                <article class="single_related">
                                    <figure>
                                        <div class="related_thumb">
                                            <a href="blog-details.html"><img src="{{asset('/storage/'.$item->image)}}"   alt=""></a>
                                        </div>
                                        <figcaption class="related_content">
                                           <h4><a href="{{route("blog.show",$item->slug)}}">{{$item->title}}</a></h4>
                                           <div class="blog_meta">                                        
                                                <span class="author">By : <a href="#">admin</a> / </span>
                                                <span class="meta_date"> {{$item->created_at}}	</span>
                                            </div>
                                            <h2></h2>
                                        </figcaption>
                                    </figure>
                                </article>
                            </div>
                            @endforeach
                        </div>
                   </div> 
                    
                    
                </div>
                <!--blog grid area start-->
            </div>
           
        </div>
    </div>
</div>
@endsection