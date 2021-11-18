<!-- Page Header-->
<header class="section page-header">
  <div class="header-top">
      <div class="container">
          <div class="row">
              <div class="col-lg-3 col-md-3">
                  <div class="address-top d-flex align-items-center">
                      <div class="address-top-icon"><span class="linear-icon icon linearicons-map-marker"></span></div>
                      <div class="address-top-content"><a href="#">{{sc_store('address')}}</a></div>
                  </div>
              </div>
              <div class="col-lg-6 col-md-6">
                  <a href="{{ sc_route('home') }}">
                      <img class="brand-logo-dark" src="{{ sc_file(sc_store('logo', ($storeId ?? null))) }}" alt="" width="168" height="60">
                  </a>
              </div>
              <div class="col-lg-3 col-md-3 d-flex justify-content-end align-items-center">
                  <a class="button button-primary-outline button-sm button-icon button-icon-left" href="{{sc_store('facebook')}}">
                      <span><i class="icon mdi mdi-facebook  icon-xxs"></i></span>Like Page
                  </a>
              </div>
          </div>
      </div>
  </div>
  <div class="header-bottom">
      <div class="container">
          <div class="row align-items-center">
              <div class="col-lg-8 col-md-8 col-sm-8 col-8">
                  <div class="content-header-mobile justify-content-start align-items-center">
                      <svg id="toogle-nabar" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 30 16">
                          <rect width="30" height="1.5"></rect>
                          <rect y="7" width="20" height="1.5"></rect>
                          <rect y="14" width="30" height="1.5"></rect>
                      </svg>
                      <a class="brand" href="{{ sc_route('home') }}">
                          <img class="brand-logo-dark" src="{{ sc_file(sc_store('logo', ($storeId ?? null))) }}" alt="" width="90" height="40">
                      </a>
                  </div>
                  <div class="menu-main">
                      <ul>
                          <div class="heading-nabar">
                              <i class="fl-bigmug-line-close42"></i>
                          </div>
                          <li><a class="active" href="{{ sc_route('home') }}">Trang chủ</a></li>
                          {{-- <li><a href="#">giới thiệu</a></li>
                          <li><a href="#">Cửa hàng</a></li>
                          <li><a href="#">Bài viết</a></li>
                          <li><a href="#">Liên hệ</a></li> --}}
                          @if (!empty($sc_layoutsUrl['menu']))
                          @foreach ($sc_layoutsUrl['menu'] as $url)
                          <li>
                              <a {{ ($url->target =='_blank')?'target=_blank':''  }}
                                  href="{{ sc_url_render($url->url) }}">{{ sc_language_render($url->name) }}</a>
                          </li>
                          @endforeach
                          @endif
                      </ul>
                  </div>
              </div>
              <div class="col-lg-4 col-md-4 col-sm-4 col-4 d-flex justify-content-end align-items-center">
                  <div class="search-icon"><i class="fl-bigmug-line-search74"></i></div>
                  <a href="{{ sc_route('cart') }}" class="cart-icon"><i class="fl-bigmug-line-shopping202"></i>
                      <span class="cart-count sc-cart">{{ Cart::instance('default')->count() }}</span>
                  </a>
              </div>
          </div>
      </div>
  </div>
</header>    

<div class="overlay"></div>
<form action="{{ sc_route('search') }}" class="form-search">
    <div class="close-form-search"><i class="fl-bigmug-line-close42"></i></div>
    <div class="form-search-wrap">
        <input type="text" name="keyword" placeholder="Nhập sản phẩm để tìm kiếm...">
        <button type="submit" class="fl-bigmug-line-search74"></button>
    </div>
</form>

{{-- <!-- Page Header-->
<header class="section page-header">
  <!-- RD Navbar-->
  <div class="rd-navbar-wrap">
    <nav class="rd-navbar rd-navbar-classic" data-layout="rd-navbar-fixed" data-sm-layout="rd-navbar-fixed" data-md-layout="rd-navbar-fixed" data-md-device-layout="rd-navbar-fixed" data-lg-layout="rd-navbar-static" data-lg-device-layout="rd-navbar-fixed" data-xl-layout="rd-navbar-static" data-xl-device-layout="rd-navbar-static" data-xxl-layout="rd-navbar-static" data-xxl-device-layout="rd-navbar-static" data-lg-stick-up-offset="100px" data-xl-stick-up-offset="100px" data-xxl-stick-up-offset="100px" data-lg-stick-up="true" data-xl-stick-up="true" data-xxl-stick-up="true">
      <div class="rd-navbar-main-outer">
        <div class="rd-navbar-main">
          <!-- RD Navbar Panel-->
          <div class="rd-navbar-panel">
            <!-- RD Navbar Toggle-->
            <button class="rd-navbar-toggle" data-rd-navbar-toggle=".rd-navbar-nav-wrap"><span></span></button>
            <!-- RD Navbar Brand-->
            <div class="rd-navbar-brand">
              <!--Brand--><a class="brand" href="{{ sc_route('home') }}"><img class="brand-logo-dark" src="{{ sc_file(sc_store('logo', ($storeId ?? null))) }}" alt="" width="105" height="44"/>
                <img class="brand-logo-light" src="{{ sc_file(sc_store('logo', ($storeId ?? null))) }}" alt="" width="106" height="44"/></a>
            </div>
          </div>
          <div class="rd-navbar-nav-wrap">
            <!-- RD Navbar Nav-->
            <ul class="rd-navbar-nav">
              <li class="rd-nav-item active"><a class="rd-nav-link" href="{{ sc_route('home') }}">{{ sc_language_render('front.home') }}</a></li>
              <li class="rd-nav-item"><a class="rd-nav-link" href="{{ sc_route('shop') }}">{{ sc_language_render('front.shop') }}</a></li>
              @if (!empty($sc_layoutsUrl['menu']))
              @foreach ($sc_layoutsUrl['menu'] as $url)
              <li class="rd-nav-item">
                  <a class="rd-nav-link" {{ ($url->target =='_blank')?'target=_blank':''  }}
                      href="{{ sc_url_render($url->url) }}">{{ sc_language_render($url->name) }}</a>
              </li>
              @endforeach
              @endif

              @guest
              <li class="rd-nav-item"><a class="rd-nav-link" href="#"><i class="fa fa-lock"></i> {{ sc_language_render('front.account') }}</a>
                  <ul class="rd-menu rd-navbar-dropdown">
                      <li class="rd-dropdown-item">
                          <a class="rd-dropdown-link" href="{{ sc_route('login') }}"><i class="fa fa-user"></i> {{ sc_language_render('front.login') }}</a>
                      </li>

                      <li class="rd-dropdown-item">
                          <a class="rd-dropdown-link" href="{{ sc_route('wishlist') }}"><i class="fas fa-heart"></i> {{ sc_language_render('front.wishlist') }} 
                              <span class="count sc-wishlist"
                              id="shopping-wishlist">{{ Cart::instance('wishlist')->count() }}</span>
                          </a>
                      </li>
                      <li class="rd-dropdown-item">
                          <a class="rd-dropdown-link" href="{{ sc_route('compare') }}"><i class="fa fa-exchange"></i> {{ sc_language_render('front.compare') }} 
                              <span class="count sc-compare"
                              id="shopping-compare">{{ Cart::instance('compare')->count() }}</span>
                          </a>
                      </li>
                  </ul>
              </li>

              @else
              <li class="rd-nav-item"><a class="rd-nav-link" href="#"><i class="fa fa-lock"></i> {{ sc_language_render('customer.my_profile') }}</a>
                  <ul class="rd-menu rd-navbar-dropdown">
                      <li class="rd-dropdown-item"><a class="rd-dropdown-link" href="{{ sc_route('customer.index') }}"><i class="fa fa-user"></i> {{ sc_language_render('front.my_profile') }}</a></li>
                      <li class="rd-dropdown-item"><a class="rd-dropdown-link" href="{{ sc_route('logout') }}" rel="nofollow" onclick="event.preventDefault();
                          document.getElementById('logout-form').submit();"><i class="fa fa-power-off"></i> {{ sc_language_render('front.logout') }}</a></li>
                      <li class="rd-dropdown-item">
                          <a class="rd-dropdown-link" href="{{ sc_route('wishlist') }}"><i class="fas fa-heart"></i> {{ sc_language_render('front.wishlist') }} 
                              <span class="count sc-wishlist"
                              id="shopping-wishlist">{{ Cart::instance('wishlist')->count() }}</span>
                          </a>
                      </li>
                      <li class="rd-dropdown-item">
                          <a class="rd-dropdown-link" href="{{ sc_route('compare') }}"><i class="fa fa-exchange"></i> {{ sc_language_render('front.compare') }} 
                              <span class="count sc-compare"
                              id="shopping-compare">{{ Cart::instance('compare')->count() }}</span>
                          </a>
                      </li>
                      <form id="logout-form" action="{{ sc_route('logout') }}" method="POST" style="display: none;">
                        @csrf
                      </form>
                  </ul>
              </li>
              @endguest


              @if (count($sc_languages)>1)
              <li class="rd-nav-item">
                  <a class="rd-nav-link" href="#">
                      <img src="{{ sc_file($sc_languages[app()->getLocale()]['icon']) }}" style="height: 25px;"> <i class="fas fa-caret-down"></i>
                  </a>
                  <ul class="rd-menu rd-navbar-dropdown">
                      @foreach ($sc_languages as $key => $language)
                      <li class="rd-dropdown-item">
                          <a class="rd-dropdown-link" href="{{ sc_route('locale', ['code' => $key]) }}">
                              <img src="{{ sc_file($language['icon']) }}" style="height: 25px;"> {{ $language['name'] }}
                          </a>
                      </li>
                      @endforeach
                  </ul>
              </li>
              @endif

              @if (count($sc_currencies)>1)
              <li class="rd-nav-item">
                  <a class="rd-nav-link" href="#">
                      {{ sc_currency_info()['name'] }} <i class="fas fa-caret-down"></i>
                  </a>
                  <ul class="rd-menu rd-navbar-dropdown">
                      @foreach ($sc_currencies as $key => $currency)
                      <li class="rd-dropdown-item" {{ ($currency->code ==  sc_currency_info()['code']) ? 'disabled': '' }}>
                          <a class="rd-dropdown-link" href="{{ sc_route('currency', ['code' => $currency->code]) }}">
                              {{ $currency->name }}
                          </a>
                      </li>
                      @endforeach
                  </ul>
              </li>
              @endif

            </ul>
          </div>

          <div class="rd-navbar-main-element">
            <!-- RD Navbar Search-->
            <div class="rd-navbar-search rd-navbar-search-2">
              <button class="rd-navbar-search-toggle rd-navbar-fixed-element-3" data-rd-navbar-toggle=".rd-navbar-search"><span></span></button>
              <form class="rd-search" action="{{ sc_route('search') }}"  method="GET">
                <div class="form-wrap">
                  <input class="rd-navbar-search-form-input form-input"  type="text" name="keyword"  placeholder="{{ sc_language_render('search.placeholder') }}"/>
                  <button class="rd-search-form-submit" type="submit"></button>
                </div>
              </form>
            </div>
            <!-- RD Navbar Basket-->
            <div class="rd-navbar-basket-wrap">
              <a href="{{ sc_route('cart') }}">
              <button class="rd-navbar-basket fl-bigmug-line-shopping202">
                <span class="count sc-cart" id="shopping-cart">{{ Cart::instance('default')->count() }}</span>
              </button>
              </a>
            </div>
            <a title="{{ sc_language_render('cart.page_title') }}" style="margin-top:10px;" class="rd-navbar-basket rd-navbar-basket-mobile fl-bigmug-line-shopping202 rd-navbar-fixed-element-2" href="{{ sc_route('cart') }}">
              <span class="count sc-cart">{{ Cart::instance('default')->count() }}</span>
            </a>
          </div>
        </div>
      </div>
    </nav>
  </div>
</header> --}}
