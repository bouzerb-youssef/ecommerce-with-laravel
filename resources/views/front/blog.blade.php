@extends('front.layouts.app')
@section('content')
<br><br><br>
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
<div class="blog_page_section mt-70">
    <div class="container">
        <div class="row">
            <div class="col-lg-9 col-md-12">
                <div class="blog_wrapper">
                    <div class="row">
                        @foreach ($post as $item)   
                        <div class="col-lg-4 col-md-4 col-sm-6">
                            <article class="single_blog">
                                <figure>
                                    <div class="blog_thumb">
                                        <a href="blog-details.html"><img src="{{asset('/storage/'.$item->image)}}" alt=""></a>
                                    </div>
                                    <figcaption class="blog_content">
                                        <h4 class="post_title"><a href="blog-details.html">Lorem ipsum dolor sit amet,  elit. Impedit, aliquam animi, saepe ex.</a></h4>
                                        <div class="articles_date">
                                            @if ( !$item->category_id==null )
                                            <p> <a href="#">{{ $item->category['name']}}</a> </p>
                                            @else
                                            <p> <a href="#">category:</a> </p>
                                            @endif
                                          
                                        </div>
                                    </figcaption>
                                </figure>
                            </article>
                        </div>
                        @endforeach
                    </div>
                </div>
            </div>  
            <div class="col-lg-3 col-md-12">
                <div class="blog_sidebar_widget">
                    <div class="widget_list widget_search">
                        <div class="widget_title">
                            <h3>Search</h3>
                        </div>
                        <form action="#">
                            <input placeholder="Search..." type="text">
                            <button type="submit">search</button>
                        </form>
                    </div>
                    <div class="widget_list comments">
                       <div class="widget_title">
                            <h3>Recent Comments</h3>
                        </div>
                        <div class="post_wrapper">
                            <div class="post_thumb">
                                <a href="blog-details.html"><img src="assets/img/blog/comment2.png.jpg" alt=""></a>
                            </div>
                            <div class="post_info">
                                <span> <a href="#">demo</a> says:</span>
                                <a href="blog-details.html">Quisque semper nunc</a>
                            </div>
                        </div>
                         <div class="post_wrapper">
                            <div class="post_thumb">
                                <a href="blog-details.html"><img src="assets/img/blog/comment2.png.jpg" alt=""></a>
                            </div>
                            <div class="post_info">
                                <span><a href="#">admin</a> says:</span>
                                <a href="blog-details.html">Quisque orci porta...</a>
                            </div>
                        </div>
                        <div class="post_wrapper">
                            <div class="post_thumb">
                                <a href="blog-details.html"><img src="assets/img/blog/comment2.png.jpg" alt=""></a>
                            </div>
                            <div class="post_info">
                                <span><a href="#">demo</a> says:</span>
                                <a href="blog-details.html">Quisque semper nunc</a>
                            </div>
                        </div>
                    </div>
                    <div class="widget_list widget_post">
                        <div class="widget_title">
                            <h3>Recent Posts</h3>
                        </div>
                        <div class="post_wrapper">
                            <div class="post_thumb">
                                <a href="blog-details.html"><img src="assets/img/blog/blogs1.jpg" alt=""></a>
                            </div>
                            <div class="post_info">
                                <h4><a href="blog-details.html">Blog image post</a></h4>
                                <span>March 16, 2018 </span>
                            </div>
                        </div>
                         <div class="post_wrapper">
                            <div class="post_thumb">
                                <a href="blog-details.html"><img src="assets/img/blog/blogs2.jpg" alt=""></a>
                            </div>
                            <div class="post_info">
                                <h4><a href="blog-details.html">Post with Gallery</a></h4>
                                <span>March 16, 2018 </span>
                            </div>
                        </div>
                         <div class="post_wrapper">
                            <div class="post_thumb">
                                <a href="blog-details.html"><img src="assets/img/blog/blogs3.jpg" alt=""></a>
                            </div>
                            <div class="post_info">
                                <h4><a href="blog-details.html">Post with Audio</a></h4>
                                <span>March 16, 2018 </span>
                            </div>
                        </div>
                    </div>
                    <div class="widget_list widget_categories">
                        <div class="widget_title">
                            <h3>Categories</h3>
                        </div>
                        <ul>
                            <li><a href="#">Audio</a></li>
                            <li><a href="#">Company</a></li>
                            <li><a href="#">Gallery</a></li>
                            <li><a href="#">Image</a></li>
                            <li><a href="#">Other</a></li>
                            <li><a href="#">Travel</a></li>
                        </ul>
                    </div>
                    <div class="widget_list widget_tag">
                        <div class="widget_title">
                            <h3>Tag products</h3>
                        </div>
                        <div class="tag_widget">
                            <ul>
                                <li><a href="#">asian</a></li>
                                <li><a href="#">brown</a></li>
                                <li><a href="#">euro</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<br><br><br>
    
@endsection