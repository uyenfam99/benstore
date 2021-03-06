      {{-- <!-- Page Footer-->
      <footer class="section footer-classic">
        <div class="footer-classic-body section-lg bg-brown-2">
          <div class="container">
            <div class="row row-40 row-md-50 justify-content-xl-between">
              <div class="col-sm-6 col-lg-4 col-xl-3 wow fadeInRight">
                <a href="{{ sc_route('home') }}">
                    <img class="logo-footer" src="{{  sc_file(sc_store('logo', ($storeId ?? null))) }}" alt="{{ sc_store('title', ($storeId ?? null)) }}">
                </a>
                <p>{{ sc_store('title', ($storeId ?? null)) }}</p>
                <p> {!! sc_store('time_active', ($storeId ?? null))  !!}</p>
                <div class="footer-classic-social">
                  <div class="group-lg group-middle">
                    <div>
                      <ul class="list-inline list-social list-inline-sm">
                        <li><a class="icon mdi mdi-facebook" href="#"></a></li>
                        <li><a class="icon mdi mdi-twitter" href="#"></a></li>
                        <li><a class="icon mdi mdi-instagram" href="#"></a></li>
                        <li><a class="icon mdi mdi-google-plus" href="#"></a></li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-sm-6 col-lg-4 col-xl-3 wow fadeInRight" data-wow-delay=".1s">
                <h4 class="footer-classic-title">{{ sc_language_render('about.page_title') }}</h4>
                <ul class="contacts-creative">
                  <li>
                    <div class="unit unit-spacing-sm flex-column flex-md-row">
                      <div class="unit-left"><span class="icon mdi mdi-map-marker"></span></div>
                      <div class="unit-body"><a href="#">{{ sc_language_render('store.address') }}: {{ sc_store('address', ($storeId ?? null)) }}</a></div>
                    </div>
                  </li>
                  <li>
                    <div class="unit unit-spacing-sm flex-column flex-md-row">
                      <div class="unit-left"><span class="icon mdi mdi-phone"></span></div>
                      <div class="unit-body"><a href="tel:#">{{ sc_language_render('store.hotline') }}: {{ sc_store('long_phone', ($storeId ?? null)) }}</a></div>
                    </div>
                  </li>
                  <li>
                    <div class="unit unit-spacing-sm flex-column flex-md-row">
                      <div class="unit-left"><span class="icon mdi mdi-email-outline"></span></div>
                      <div class="unit-body"><a href="mailto:#{{ sc_store('email', ($storeId ?? null)) }}">{{ sc_language_render('store.email') }}: {{ sc_store('email', ($storeId ?? null)) }}</a></div>
                    </div>
                  </li>
                  <li>

                    <form class="rd-form-inline rd-form-inline-2"  method="post" action="{{ sc_route('subscribe') }}">
                        @csrf
                          <div class="form-wrap">
                            <input class="form-input" id="subscribe-form-2-email" type="email" name="subscribe_email" required/>
                            <label class="form-label" for="subscribe-form-2-email">{{ sc_language_render('subscribe.email') }}</label>
                          </div>
                          <div class="form-button">
                            <button class="button button-icon-2 button-zakaria button-primary" type="submit" title="{{ sc_language_render('subscribe.title') }}">
                              <span class="fl-bigmug-line-paper122"></span>
                            </button>
                          </div>
                        </form>
                  </li>
                </ul>
              </div>
              <div class="col-lg-4 wow fadeInRight" data-wow-delay=".2s">
                <h4 class="footer-classic-title"> {{ sc_language_render('front.my_profile') }}</h4>
                <!-- RD Mailform-->
                <ul class="contacts-creative">
                    @if (!empty($sc_layoutsUrl['footer']))
                    @foreach ($sc_layoutsUrl['footer'] as $url)
                    <li>
                        <a {{ ($url->target =='_blank')?'target=_blank':''  }}
                            href="{{ sc_url_render($url->url) }}">{{ sc_language_render($url->name) }}</a>
                    </li>
                    @endforeach
                    @endif
                </ul>
              </div>
            </div>
          </div>
        </div>

        @if (!sc_config_global('hidden_copyright_footer'))
        <div class="footer-classic-panel">
          <div class="container">
            <div class="row row-10 align-items-center justify-content-sm-between">
              <div class="col-md-auto">
                <p class="rights"><span>&copy;&nbsp;</span><span class="copyright-year"></span><span>&nbsp;</span><span>{{ sc_store('title', ($storeId ?? null)) }}</span><span>.&nbsp; All rights reserved</span></p>
              </div>
              <div class="col-md-auto order-md-1"> <a target="_blank"
                href="https://www.facebook.com/SCart.Ecommerce/">Fanpage FB</a></div>
              <div class="col-md-auto">
                    Power by <a href="{{ config('s-cart.homepage') }}">{{ config('s-cart.name') }} {{ config('s-cart.sub-version') }}</a>
              </div>
            </div>
          </div>
        </div>
        @endif
      </footer> --}}
@php
    $categoriesTop = $modelCategory->start()->getCategoryTop()->getData();
@endphp
<!-- Page Footer-->
<footer class="section footer-modern">
  <div class="footer-modern-body section-xl">
      <div class="container">
          <div class="row row-40 row-md-50 justify-content-xl-between">
              <div class="col-md-10 col-lg-3 col-xl-4 wow fadeInRight">
                  <a class="brand" href="index.html">
                      <img class="brand-logo-dark" src="{{  sc_file(sc_store('logo', ($storeId ?? null))) }}" alt="" width="168" height="60">
                  </a>
                  <div class="text-logo-footer">
                    {{ sc_store('title', ($storeId ?? null)) }}
                  </div>
              </div>
              <div class="col-sm-6 col-md-7 col-lg-5 wow fadeInRight" data-wow-delay=".1s">
                  <h5 class="footer-modern-title">Menu v?? danh m???c</h5>
                  <div class="d-flex">
                      <ul class="footer-modern-list">
                          {{-- <li><a href="about-us.html">GI???i thi???u</a></li>
                          <li><a href="shop-list.html">C???a h??ng</a></li>
                          <li><a href="testimonials.html">Tin t???c</a></li>
                          <li><a href="#">FAQ</a></li>
                          <li><a href="contact-us.html">Li??n h???</a></li> --}}
                          <li><a href="#">Trang ch???</a></li>
                          @if (!empty($sc_layoutsUrl['menu']))
                            @foreach ($sc_layoutsUrl['menu'] as $url)
                            <li>
                                <a {{ ($url->target =='_blank')?'target=_blank':''  }}
                                    href="{{ sc_url_render($url->url) }}">{{ sc_language_render($url->name) }}</a>
                            </li>
                            @endforeach
                          @endif
                      </ul>
                      <ul class="footer-modern-list">
                        @if($categoriesTop->count() >0)
                          @foreach($categoriesTop  as $category)
                            <li><a href="{{$category->getUrl()}}">{{$category->title}}</a></li>
                          @endforeach
                        @endif
                      </ul>
                  </div>
              </div>
              <div class="col-sm-6 col-md-5 col-lg-4 col-xl-3 wow fadeInRight" data-wow-delay=".2s">
                  <h5 class="footer-modern-title">Li??n h??? v???i ch??ng t??i</h5>
                  <ul class="contacts-creative">
                      <li>
                          <div class="unit unit-spacing-sm flex-column flex-md-row">
                              <div class="unit-left"><span class="icon mdi mdi-map-marker linear-icon"></span></div>
                              <div class="unit-body"><a href="#">{{sc_store('address')}}</a></div>
                          </div>
                      </li>
                      <li>
                          <div class="unit unit-spacing-sm flex-column flex-md-row">
                              <div class="unit-left"><span class="icon mdi mdi-phone linear-icon"></span></div>
                              <div class="unit-body"><a href="tel:#">{{sc_store('phone')}}</a></div>
                          </div>
                      </li>
                      <li>
                          <div class="unit unit-spacing-sm flex-column flex-md-row">
                              <div class="unit-left"><span class="icon mdi mdi-email-outline linear-icon"></span></div>
                              <div class="unit-body"><a href="mailto:{{sc_store('email')}}">{{sc_store('email')}}</a></div>
                          </div>
                      </li>
                  </ul>
                  <ul class="list-inline list-social-3 list-inline-sm ">
                      <li><a class="icon mdi mdi-facebook  icon-xxs" href="{{sc_store('facebook')}}"></a></li>
                      <li><a class="icon mdi mdi-instagram  icon-xxs" href="{{sc_store('instagram')}}"></a></li>
                      <li><a class="icon mdi mdi-skype  icon-xxs" href="{{sc_store('skype')}}"></a></li>
                  </ul>
              </div>
          </div>
      </div>
  </div>
  <div class="footer-modern-panel text-center">
      <div class="container">
          <p class="rights"><span>&copy;&nbsp;</span><span class="copyright-year"></span><span>&nbsp;</span><span>Puffles</span><span>. All Rights Reserved.&nbsp;</span><a href="privacy-policy.html">Privacy Policy</a></p>
      </div>
  </div>
</footer>