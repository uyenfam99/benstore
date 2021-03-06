{{-- breadcrumb --}}
@if (!empty($breadcrumbs) && count($breadcrumbs))
<section class="breadcrumbs-custom">
    @if (!empty($layout_page))
        @php
            $bannerBreadcrumbImage = '';
            $bannerBreadcrumbTmp = [];
            if (in_array($layout_page, ['shop_product_list','shop_home','shop_contact', 'shop_page','shop_checkout','shop_cart','shop_news','shop_news_detail', 'shop_item_list','shop_product_detail'])) {
                $bannerBreadcrumbTmp = $modelBanner->start()->getBreadcrumb()->getData()->first();
            } elseif (in_array($layout_page, ['shop_home'])) {
                $bannerBreadcrumbTmp = $modelBanner->start()->getBannerStore()->getData()->first();
            }
            if ($bannerBreadcrumbTmp) {
                $bannerBreadcrumbImage = sc_file($bannerBreadcrumbTmp['image'] ?? '');
            }
        @endphp
        @if ($bannerBreadcrumbImage)
        <div class="parallax-container" data-parallax-img="{{ $bannerBreadcrumbImage }}">
            <div class="material-parallax parallax">
            <img src="{{ $bannerBreadcrumbImage }}" alt="" style="display: block; transform: translate3d(-50%, 83px, 0px);">
            </div>
            <div class="breadcrumbs-custom-body parallax-content context-dark">
            <div class="container">
                <h2 class="breadcrumbs-custom-title">{{ $title ?? '' }}</h2>
            </div>
            </div>
        </div>
        @endif
    @endif


    <div class="breadcrumbs-custom-footer">
        <div class="container">
          <ul class="breadcrumbs-custom-path">
            <li><a href="{{ sc_route('home') }}">{{ sc_language_render('front.home') }}</a></li>
            @foreach ($breadcrumbs as $key => $item)
            @if (($key - 1) == count($breadcrumbs))
                <li class="active">{{ $item['title'] }}</li>
            @else
                <li><a href="{{ $item['url'] }}">{{ $item['title'] }}</a></li>
            @endif
            @endforeach

          </ul>
        </div>
    </div>
</section>
@endif
{{-- //breadcrumb --}}