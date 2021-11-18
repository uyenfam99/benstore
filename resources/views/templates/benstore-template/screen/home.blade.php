@php
/*
$layout_page = home
*/ 
@endphp
@php
    $categories = $modelCategory->start()->buildQuery(['sc_status' => 1]);
    $categoriesTop = $modelCategory->start()->getCategoryTop()->getData();
    $productsNew = $modelProduct->start()->getProductLatest()->setlimit(sc_config('product_top'))->getData();
    $news = $modelNews->start()->setlimit(3)->getData();
    $banners = $modelBanner->start()->getBanner()->getData();
    $productsNew = $modelProduct->start()->getProductLatest()->setlimit(8)->getData();
    $bannerStore = $modelBanner->start()->getBannerStore()->setlimit(2)->getData();
    $background = $modelBanner->start()->getBackground()->setlimit(1)->getData();
    $list_brands = $modelBrand->start()->setlimit(5)->getData();
    $productsHot = $modelProduct->start()->getProductHot()->setlimit(4)->getData();


@endphp

@extends($sc_templatePath.'.layout')

@section('block_main')
   
   <!-- category top-->
      <section class="section section-xl section-last bg-default">
      <div class="container">
            <h2 class="title-heading">Danh mục</h2>
            <!-- Owl Carousel-->
            <div class="box-info-modern-list">
               @if ($categoriesTop->count())
                  @foreach ($categoriesTop as $key => $category)
                     <article class="box-info-modern">
                           <a class="box-info-modern-figure link-img" href="{{ $category->getUrl() }}">
                              <img src="{{$category->getImage()}}" alt="" width="370" height="276"/>
                           </a>
                           <h4 class="box-info-modern-title"><a href="{{ $category->getUrl() }}">{{ $category->title }}</a></h4>
                     </article>
                  @endforeach
               @endif
            </div>
      </div>
   </section>
   <!-- Our service-->
   <section class="section section-xl section-last bg-gray-1">
      <div class="container">
            <h2 class="text-heading">Dịch vụ của chúng tôi</h2>
            <div class="row row-50">
               @if($services->count())
                  @foreach($services as $service)
                     <div class="col-sm-6 col-md-4">
                        <article class="box-icon-classic text-sm-left">
                              <div class="unit flex-column flex-sm-row flex-md-column flex-xl-row">
                                 <div class="unit-left">
                                    <div class="box-icon-classic-icon"><img src="{{$service->getImage()}}" alt="" width="50" height="50" />
                                    </div>
                                 </div>
                                 <div class="unit-body">
                                    <h4 class="box-icon-classic-title"><a href="#">{{$service->title}}</a></h4>
                                    <p class="box-icon-classic-text">{{$service->description}}</p>
                                 </div>
                              </div>
                        </article>
                     </div>
                  @endforeach
               @endif
            </div>
      </div>
   </section>
   <!-- CTA-->
   {{-- <section class="section section-xxl bg-primary context-dark bg-position-2 text-start" style="background-image: url('images/bg-cta.jpg')">
      <div class="container">
            <div class="row">
               <div class="col-md-7">
                  <h2 class="wow fadeInRight">Chỉ hôm nay</h2>
                  <h4 class="wow fadeInRight" data-wow-delay=".1s">Giảmt giá 30% đơn ngày hôm nay</h4>
                  <p class="wow fadeInRight" data-wow-delay=".2s">Mua sắm ngay hôm nay để tiết kiệm chi phí cho đơn hàng đầu tiên của bạn tại Puffles Store và nhận mọi thứ cần thiết để thú cưng của bạn luôn khỏe mạnh và vui vẻ.</p>
                  <a class="button button-lg button-primary button-zakaria wow fadeInUp" href="shop.html">Cửa hàng</a>
               </div>
            </div>
      </div>
   </section> --}}
   <!-- Product list-->
   <section class="section section-xxl bg-gray-1">
      <div class="container">
          <h2 class="title-heading">Sản phẩm mới nhất</h2>
          <!-- Owl Carousel-->
          <div class="product-list">
              <!-- Product-->
               @if($productsNew ->count() >0)
                  @foreach($productsNew as $product)
                     <article class="product">
                           <div class="product-body">
                              <div class="product-figure"><img src="{{$product->getImage()}}" alt="" width="200" height="200" />
                              </div>
                              <h5 class="product-title"><a href="{{$product->getUrl()}}">{{$product->name}}</a></h5>
                              <div class="product-price-wrap">
                                 {{-- <div class="product-price product-price-old">$30.00</div>
                                 <div class="product-price">$23.00</div> --}}
                                 {!! $product->showPrice() !!}
                              </div>
                           </div>
                           {{-- <span class="product-badge product-badge-sale">Sale</span> --}}
                           <div class="product-button-wrap">
                              <div class="product-button"><a class="button button-secondary button-zakaria fl-bigmug-line-search74" href="{{$product->getUrl()}}"></a></div>
                              <div class="product-button" onClick="addToCartAjax('{{ $product->id }}','default')"><a class="button button-secondary button-zakaria fl-bigmug-line-shopping202"></a></div>
                           </div>
                     </article>
                  @endforeach
               @endif
          </div>
      </div>
  </section>
  <!-- About Us-->
  {{-- {{dd($about_page)}} --}}
  @php
  $descriptions = $about_page?$about_page->descriptions->keyBy('lang')->toArray():[];
  @endphp
{{-- {{dd($descriptions)}} --}}
  <section class="section section-xl bg-default">
      <div class="container">
          <h2 class="wow fadeScale">{{$descriptions['vi']['title']}}</h2>
          <div class="row row-30 row-lg justify-content-center">
              <div class="col-sm-8 col-md-7 col-lg-6 wow fadeInLeft"><img src="{{$about_page->getImage()}}" alt="" width="570" height="511" />
              </div>
              <div class="col-md-10 col-lg-6 align-self-center wow fadeInRight">
                  <div class="box-info-creative">
                      <h4 class="box-info-creative-title">
                          <a href="#">{{$descriptions['vi']['keyword']}}</a>
                      </h4>
                      <div class="box-info-creative-text">{{$descriptions['vi']['description']}}</div>
                      <a class="link-classic box-info-creative-link" href="{{$about_page->alias}}.html">Đọc thêm</a>
                  </div>
              </div>
          </div>
      </div>
  </section>
   <!-- Out Team-->
   <section class="section section-xxl bg-gray-1">
      <div class="container">
            <h2 class="title-heading">Đội ngũ của chúng tôi
            <div class="ourteam-list">
               @if($ourteams->count())
                  @foreach($ourteams as $ourteam)
                     <article class="team-creative">
                        <div class="team-creative-header"><a class="team-creative-figure" href="#"><img src="{{$ourteam->getImage()}}" alt="" width="249" height="249"/></a>
                        </div>
                        <div class="team-creative-body">
                              <h4 class="team-creative-name">{{$ourteam->name}}</h4>
                              <p class="team-creative-text">{{$ourteam->description}}</p>
                              <ul class="list-inline team-creative-list-social list-social-2 list-inline-sm">
                                 <li><a class="icon mdi mdi-facebook" href="{{$ourteam->facebook}}"></a></li>
                                 <li><a class="icon mdi mdi-instagram" href="{{$ourteam->instagram}}"></a></li>
                              </ul>
                        </div>
                     </article>
                  @endforeach
               @endif
            </div>
      </div>
   </section>
   <!-- Latest News-->
   <section class="section section-xxl bg-gray-1">
      <div class="container">
            <h2 class="wow fadeScale">Bài viết mới nhất</h2>
            <div class="row row-lg row-30 justify-content-center">
               @if($news->count()>0)
                  <div class="col-sm-8 col-md-6">
                     <!-- Post Nikki 2-->
                     <article class="post post-nikki post-nikki-2">
                           <div class="post-nikki-figure"><img src="{{sc_file($news[0]->getImage())}}" alt="" width="570" height="461" />
                           </div>
                           <div class="post-nikki-body">
                              <div>
                                 <div class="post-nikki-time">
                                       <time datetime="2020-09-08">{{$news[0]->created_at }}</time>
                                 </div>
                                 <div class="post-nikki-title"><a href="blog-post.html">{{ $news[0]->title }}</a></div>
                              </div>
                           </div>
                     </article>
                  </div>

                  <div class="col-md-6">
                     <div class="row row-30">
                           <div class="col-6 col-md-12 wow fadeInRight">
                              <!-- Post Nikki-->
                              <article class="post post-nikki">
                                 <div class="unit unit-spacing-lg flex-column flex-md-row align-items-center">
                                       <div class="unit-left"><a class="post-nikki-figure" href="blog-post.html">
                                          <img src="{{sc_file($news[1]->getImage())}}" alt="" width="270" height="215"/></a>
                                       </div>
                                       <div class="unit-body">
                                          <div class="post-nikki-time">
                                             <time datetime="2020-09-08">{{$news[1]->created_at }}</time>
                                          </div>
                                          <div class="post-nikki-title"><a href="blog-post.html">{{ $news[1]->title }}</a></div>
                                       </div>
                                 </div>
                              </article>
                           </div>
                           <div class="col-6 col-md-12 wow fadeInRight">
                              <!-- Post Nikki-->
                              <article class="post post-nikki">
                                 <div class="unit unit-spacing-lg flex-column flex-md-row align-items-center">
                                       <div class="unit-left"><a class="post-nikki-figure" href="blog-post.html">
                                          <img src="{{sc_file($news[2]->getImage())}}" alt="" width="270" height="215"/></a>
                                       </div>
                                       <div class="unit-body">
                                          <div class="post-nikki-time">
                                             <time datetime="2020-09-08">{{$news[2]->created_at }}</time>
                                          </div>
                                          <div class="post-nikki-title"><a href="blog-post.html">{{ $news[2]->title }}</a></div>
                                       </div>
                                 </div>
                              </article>
                           </div>
                     </div>
                  </div>
                  
                                    
               @endif
            </div>
      </div>
   </section>
@endsection

@push('styles')
{{-- Your css style --}}
@endpush

@push('scripts')
{{-- //script here --}}
@endpush
