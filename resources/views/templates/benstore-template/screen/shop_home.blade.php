@php
/*
$layout_page = shop_home
**Variables:**
- $products: paginate
Use paginate: $products->appends(request()->except(['page','_token']))->links()
*/ 
@endphp

@extends($sc_templatePath.'.layout')

{{-- block_main_content_center --}}

@section('block_main')

  
  {{-- <div class="product-top-panel group-md">

    @include($sc_templatePath.'.common.pagination_result', ['items' => $products])
    
    
   
    @include($sc_templatePath.'.common.product_filter_sort', ['filterSort' => $filter_sort])
    
  </div>


 
  <div class="row row-30 row-lg-50">
    @foreach ($products as $key => $product)
    <div class="col-sm-6 col-md-4 col-lg-6 col-xl-4">
      
        @include($sc_templatePath.'.common.product_single', ['product' => $product])
       
      </div>
    @endforeach
  </div>
 

   
   @include($sc_templatePath.'.common.pagination', ['items' => $products]) --}}
        <!-- Section Shop-->
      <section class="section section-xxl bg-default text-md-left">
          <div class="container">
              <div class="row row-50">
                  <div class="col-lg-4 col-xl-3">
                      <div class="aside row row-30 row-md-50 justify-content-md-between">
                          <div class="aside-item col-sm-6 col-md-5 col-lg-12">
                                <h6 class="aside-title">{{ sc_language_render('front.categories') }}</h6>
                                @php
                                $categoriesTop = $modelCategory->start()->getCategoryTop()->getData();
                                @endphp
                                <ul class="list-shop-filter">
                                    @if ($categoriesTop->count())
                                        @foreach ($categoriesTop as $key => $category)
                                            <li>
                                                <a href="{{ $category->getUrl() }}" class="checkbox-inline">{{ $category->title }}</a>
                                                <span class="list-shop-filter-number">({{count($category->productDescription)}})</span>
                                            </li>
                                        @endforeach
                                    @endif
                                </ul>
                          </div>
                          <div class="aside-item col-sm-6 col-lg-12">
                            @php
                                $arrProductsLastView = array();
                                $lastView = empty(\Cookie::get('productsLastView')) ? [] : json_decode(\Cookie::get('productsLastView'), true);
                                if ($lastView) {
                                    arsort($lastView);
                                }
                                
                                if ($lastView && count($lastView)) {
                                    $lastView = array_slice($lastView, 0, sc_config('product_viewed'), true);
                                    $productsLastView = $modelProduct->start()->getProductFromListID(array_keys($lastView))->getData();
                                    foreach ($lastView as $pId => $time) {
                                        foreach ($productsLastView as $key => $product) {
                                            if ($product['id'] == $pId) {
                                                $product['timelastview'] = $time;
                                                $arrProductsLastView[] = $product;
                                            }
                                        }
                                    }
                                }
                            @endphp
                                <h6 class="aside-title">{{ sc_language_render('front.products_last_view') }}</h6>
                            @if (!empty($arrProductsLastView))
                                <div class="row row-10 row-lg-20 gutters-10">
                                    @foreach ($arrProductsLastView as $productLastView)
                                        <div class="col-4 col-sm-6 col-md-12">
                                            <!-- Product Minimal-->
                                            <article class="product-minimal">
                                                <div
                                                    class="unit unit-spacing-sm flex-column flex-md-row align-items-center">
                                                    <div class="unit-left"><a class="product-minimal-figure"
                                                            href="{{$product->getUrl()}}"><img
                                                                src="{{$product->getImage()}}" alt="" width="106"
                                                                height="104"></a></div>
                                                    <div class="unit-body">
                                                        <p class="product-minimal-title"><a
                                                                href="{{$product->getUrl()}}">{{$productLastView->name}}</a></p>
                                                        <p class="product-minimal-price">{!! $product->showPrice() !!}</p>
                                                    </div>
                                                </div>
                                            </article>
                                        </div>
                                    @endforeach
                                </div>
                            @endif
                          </div>
                      </div>
                  </div>
                  <div class="col-lg-8 col-xl-9">
                      <div class="product-top-panel group-md">
                          <p class="product-top-panel-title">{!! sc_language_render('front.result_item', ['item_from' => $products->firstItem(), 'item_to'=> $products->lastItem(), 'total'=> $products->total()  ]) !!}</p>
                          <div>

                              @include($sc_templatePath.'.common.product_filter_sort', ['filterSort' => $filter_sort])
                              
                          </div>
                      </div>
                      <div class="row row-30 row-md-50 row-lg-60">
                        @foreach ($products as $key => $product)
                          <div class="col-12">
                              <!-- Product-->
                              <article class="product-modern text-center text-sm-left">
                                  <div class="unit unit-spacing-0 flex-column flex-sm-row">
                                      <div class="unit-left"><a class="product-modern-figure link-img"
                                              href="{{$product->getUrl()}}"><img src="{{$product->getImage()}}"
                                                  alt="" width="328" height="330"></a></div>
                                      <div class="unit-body">
                                          <div class="product-modern-body">
                                              <h4 class="product-modern-title"><a href="{{$product->getUrl()}}">{{$product->name}}</a></h4>
                                              <div class="product-price-wrap">
                                                  {{-- <div class="product-price product-price-old">$30.00</div>
                                                  <div class="product-price">$23.00</div> --}}
                                                  {!! $product->showPrice() !!}
                                              </div>
                                              <p class="product-modern-text">{{$product->description}}</p>
                                              <p class="button button-primary button-zakaria" onClick="addToCartAjax('{{ $product->id }}','default')">Thêm giỏ hàng</p>
                                          </div>
                                      </div>
                                  </div>
                              </article>
                          </div>
                        @endforeach
                      </div>
                      <div class="pagination-wrap">
                        {{-- Render pagination --}}
                        @include($sc_templatePath.'.common.pagination', ['items' => $products])
                        {{--// Render pagination --}}
                      </div>
                  </div>
              </div>
          </div>
      </section>

@endsection


@section('blockStoreLeft')
    {{-- Categories tore --}}
    {{-- Only show category store if shop home is not primary store --}}
    @if (config('app.storeId') != SC_ID_ROOT && function_exists('sc_vendor_get_categories_front') &&  count(sc_vendor_get_categories_front(config('app.storeId'))))
    <div class="aside-item col-sm-6 col-md-5 col-lg-12">
      <h6 class="aside-title">{{ sc_language_render('front.categories_store') }}</h6>
      <ul class="list-shop-filter">
        @foreach (sc_vendor_get_categories_front(config('app.storeId')) as $key => $category)
        <li class="product-minimal-title active"><a href="{{ $category->getUrl() }}"> {{ $category->getTitle() }}</a></li>
        @endforeach
      </ul>
    </div>
    @endif
    {{-- //Categories tore --}}
    
   {{-- Render include view --}}
   @include($sc_templatePath.'.common.include_view')
   {{--// Render include view --}}

@endsection


@push('styles')
@endpush

@push('scripts')
{{-- //script here --}}
@endpush