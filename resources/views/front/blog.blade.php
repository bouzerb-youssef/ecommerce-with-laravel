@extends('front.layouts.app')
@section('content')
<br><br><br>
<div class="breadcrumbs_area">
    <div class="container">   
        <div class="row">
            <div class="col-12">
                <div class="breadcrumb_content">
                    <h3>blog</h3>
                    <ul>
                        <li><a href="/">home</a></li>
                        <li>blog</li>
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
                                        <a href="{{route("blog.show",$item->slug)}}"><img src="{{asset('/storage/'.$item->image)}}"  class="img-fluid" alt="Responsive image" style="height: 200px;" alt=""></a>
                                    </div>
                                    <figcaption class="blog_content">
                                        <h4 class="post_title"><a href="{{route("blog.show",$item->slug)}}">Lorem ipsum dolor sit amet,  elit. Impedit, aliquam animi, saepe ex.</a></h4>
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
                   
                    <div class="widget_list widget_post">
                        <div class="widget_title">
                            <h3>Recent Posts</h3>
                        </div>
                        @foreach ($post as $item)
                        <div class="post_wrapper">
                            <div class="post_thumb">
                                <a href="{{route("blog.show",$item->slug)}}"><img src="{{asset('/storage/'.$item->image)}}"  alt=""></a>
                            </div>
                            <div class="post_info">
                                <h4><a href="{{route("blog.show",$item->slug)}}">{{$item->title}}</a></h4>
                                <span>{{$item->created_at}} </span>
                            </div>
                        </div>
                        @endforeach
                        
                    </div>
                    <div class="widget_list widget_categories">
                        <div class="widget_title">
                            <h3>Categories</h3>
                        </div>
                        <ul>
                            @foreach ($categories as $item)
                            <li><a href="#">{{ $item->name}}</a></li>
                            @endforeach
                        </ul>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container">
    {{$post->links()}}
</div>

<br><br><br><br><br>
    
@endsection