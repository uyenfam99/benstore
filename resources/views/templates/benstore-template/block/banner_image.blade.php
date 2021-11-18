{{-- @php
$banners = $modelBanner->start()->setType('banner')->getData()
@endphp
@if (!empty($banners))
<section class="section swiper-container swiper-slider swiper-slider-1" data-loop="true">
  <div class="swiper-wrapper text-center text-lg-left">
    @foreach ($banners as $key => $banner)
    <div class="swiper-slide swiper-slide-caption context-dark" data-slide-bg="{{ sc_file($banner->image) }}">
      <div class="swiper-slide-caption section-md text-center">
        <div class="container">
          <a href="{{ sc_route('banner.click',['id' => $banner->id]) }}" target="{{ $banner->target }}">
            {!! sc_html_render($banner->html) !!}
          </a>
        </div>
      </div>
    </div>
    @endforeach
  </div>
  <!-- Swiper Pagination-->
  <div class="swiper-pagination"></div>
  <!-- Swiper Navigation-->
  <div class="swiper-button-prev"></div>
  <div class="swiper-button-next"></div>
</section>
<!--slider-->
@endif --}}


@php
  $banners = $modelBanner->start()->setType('banner')->getData()
@endphp

@if(!empty($banners))
<!-- Main screen-->
<section class="section section-xxl bg-primary context-dark bg-position-1 bg-ovrlay" style="background-image: url('{{ sc_file($banners[0]->image) }}')">
  <div class="container">
    @foreach ($banners as $key => $banner)
      <div class="row justify-content-start">
          <div class="col-xl-7 col-md-8 text-start">
              {!! sc_html_render($banner->html) !!}
              <div class="button-wrap">
                  <a class="button button-lg button-primary" href="{{sc_route('shop')}}">Cửa hàng</a>
              </div>
          </div>
      </div>
      @endforeach
  </div>
</section>
@endif