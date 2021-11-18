@php
/*
$layout_page = shop_contact
*/
@endphp

@extends($sc_templatePath.'.layout')

@section('block_main')
{{-- <section class="section section-sm section-first bg-default text-md-left">
<div class="container">
    <div class="row">
        <div class="col-12 col-sm-12 col-md-6 contact_content">
            <img src="{{ sc_file(sc_store('logo')) }}">
            <address>
                <p>{{ sc_store('title') }}</p>
                <p>{{ sc_store('address') }}</p>
                <p>{{ sc_store('long_phone') }}</p>
                <p>{{ sc_store('email') }}</p>
            </address>
        </div>
        <div class="col-12 col-sm-12 col-md-6">
            <form method="post" action="{{ sc_route('contact.post') }}" class="contact-form" id="form-process">
                {{ csrf_field() }}
                <div id="contactFormWrapper">
                    <div class="row">
                        <div class="col-12 col-sm-12 col-md-12 form-group {{ $errors->has('name') ? ' has-error' : '' }}">
                            <label>{{ sc_language_render('contact.name') }}:</label>
                            <input type="text" class="form-control {{ ($errors->has('name'))?"input-error":"" }}"
                                name="name" placeholder="{{ sc_language_render('contact.name') }}" value="{{ old('name') }}">
                            @if ($errors->has('name'))
                            <span class="help-block">
                                {{ $errors->first('name') }}
                            </span>
                            @endif
                        </div>
                        <div class="col-12 col-sm-12 col-md-12 form-group {{ $errors->has('email') ? ' has-error' : '' }}">
                            <label>{{ sc_language_render('contact.email') }}:</label>
                            <input type="email" class="form-control {{ ($errors->has('email'))?"input-error":"" }}"
                                name="email" placeholder="{{ sc_language_render('contact.email') }}" value="{{ old('email') }}">
                            @if ($errors->has('email'))
                            <span class="help-block">
                                {{ $errors->first('email') }}
                            </span>
                            @endif
                        </div>
                        <div class="col-12 col-sm-12 col-md-12 form-group {{ $errors->has('phone') ? ' has-error' : '' }}">
                            <label>{{ sc_language_render('contact.phone') }}:</label>
                            <input type="telephone" class="form-control {{ ($errors->has('phone'))?"input-error":"" }}"
                                name="phone" placeholder="{{ sc_language_render('contact.phone') }}" value="{{ old('phone') }}">
                            @if ($errors->has('phone'))
                            <span class="help-block">
                                {{ $errors->first('phone') }}
                            </span>
                            @endif
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-12 col-sm-12 col-md-12 form-group {{ $errors->has('title') ? ' has-error' : '' }}">
                            <label class="control-label">{{ sc_language_render('contact.subject') }}:</label>
                            <input type="text" class="form-control {{ ($errors->has('title'))?"input-error":"" }}"
                                name="title" placeholder="{{ sc_language_render('contact.subject') }}" value="{{ old('title') }}">
                            @if ($errors->has('title'))
                            <span class="help-block">
                                {{ $errors->first('title') }}
                            </span>
                            @endif
                        </div>
                        <div class="col-12 col-sm-12 col-md-12 form-group {{ $errors->has('content') ? ' has-error' : '' }}">
                            <label class="control-label">{{ sc_language_render('contact.content') }}:</label>
                            <textarea class="form-control {{ ($errors->has('content'))?"input-error":"" }}" rows="5"
                                cols="75" name="content" placeholder="{{ sc_language_render('contact.content') }}">{{ old('content') }}</textarea>
                            @if ($errors->has('content'))
                            <span class="help-block">
                                {{ $errors->first('content') }}
                            </span>
                            @endif

                        </div>
                    </div>

                    {!! $viewCaptcha?? '' !!}

                    
                    <div class="btn-toolbar form-group">
                        <input type="submit" value="{{ sc_language_render('action.submit') }}" class="button button-lg button-secondary" id="button-form-process">
                    </div>
             
                </div>
            </form>
        </div>
    </div>
</div>
</section> --}}

<section class="section section-xl bg-default text-md-left">
    <div class="container">
      <div class="title-classic">
        <h3 class="title-classic-title">Liên hệ với chúng tôi</h3>
        <p class="title-classic-subtitle">Chúng tôi luôn sẵn sàng 24/7 qua fax, e-mail hoặc điện thoại. Bạn cũng có thể sử dụng<br class="d-none d-lg-block">form bên dưới để đặt câu hỏi</p>
      </div>
      <form class="rd-form rd-mailform" method="post" action="{{ sc_route('contact.post') }}">
        {{ csrf_field() }}
        <div class="row row-20 row-md-30">
          <div class="col-lg-8">
            <div class="row row-20 row-md-30">
              <div class="col-sm-6">
                <div class="form-wrap {{ $errors->has('name') ? ' has-error' : '' }}">
                  <input class="form-input" type="text" name="name" value="{{ old('phone')}}" placeholder="{{ sc_language_render('contact.name')}}:">
                    @if ($errors->has('phone'))
                    <span class="help-block">
                        {{ $errors->first('phone') }}
                    </span>
                    @endif
                </div>
              </div>
              <div class="col-sm-6">
                <div class="form-wrap {{ $errors->has('email') ? ' has-error' : '' }}">
                  <input class="form-input" type="email" required name="email" value="{{ old('email')}}" placeholder="{{ sc_language_render('contact.email')}}:">
                  @if ($errors->has('email'))
                  <span class="help-block">
                      {{ $errors->first('email') }}
                  </span>
                  @endif
                </div>
              </div>
              <div class="col-sm-6">
                <div class="form-wrap {{ $errors->has('phone') ? ' has-error' : '' }}">
                  <input class="form-input" type="telephone" name="phone" value="{{ old('phone')}}" placeholder="{{ sc_language_render('contact.phone')}}">
                  @if ($errors->has('phone'))
                  <span class="help-block">
                      {{ $errors->first('phone') }}
                  </span>
                  @endif
                </div>
              </div>
              <div class="col-sm-6">
                <div class="form-wrap {{ $errors->has('title') ? ' has-error' : '' }}">
                  <input class="form-input"  value="{{ old('title') }}" type="text" name="title" placeholder="{{ sc_language_render('contact.subject')}}:">
                  @if ($errors->has('title'))
                  <span class="help-block">
                      {{ $errors->first('title') }}
                  </span>
                  @endif
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="form-wrap {{ $errors->has('content') ? ' has-error' : '' }}">
              <textarea class="form-input textarea-lg" name="content" placeholder="{{ sc_language_render('contact.content')}}"></textarea>
              @if ($errors->has('content'))
              <span class="help-block">
                  {{ $errors->first('content') }}
              </span>
              @endif
            </div>
          </div>
        </div>
        <button type="submit" class="button button-lg button-primary">{{ sc_language_render('action.submit') }}</button>
      </form>
    </div>
</section>
<section class="section section-xl bg-gray-4">
    <div class="container">
      <div class="row row-30 justify-content-center">
        <div class="col-sm-6 col-md-4">
          <h4>Số Liên hệ</h4>
          <ul class="contacts-classic">
            <li>Số điện thoại <a href="tel:{{sc_store('phone')}}">{{sc_store('phone')}}</a>
            </li>
          </ul>
        </div>
        <div class="col-sm-6 col-md-4">
          <h4>Địa chỉ</h4>
          <div class="contacts-classic">
            {{sc_store('address')}}
          </div>
        </div>
        <div class="col-sm-6 col-md-4">
          <h4>E-mails</h4>
          <ul class="contacts-classic">
            <li><a href="mailTo:{{sc_store('email')}}">{{sc_store('email')}}</a></li>
          </ul>
        </div>
      </div>
    </div>
  </section>


  <section class="section" style="width:100%">
    {!!sc_store('map')!!}
    {{-- <iframe src="https://goo.gl/maps/rHhAUtygL1eKhx5A6" frameborder="0"></iframe> --}}
    {{-- <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3710.02316671819!2d105.80423471489316!3d21.58501878569979!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31352738b1bf08a3%3A0x515f4860ede9e108!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBDw7RuZyBuZ2jhu4cgVGjDtG5nIHRpbiAmIFRydXnhu4FuIHRow7RuZyBUaMOhaSBOZ3V5w6pu!5e0!3m2!1svi!2s!4v1631359740026!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe> --}}
  </section>



   {{-- Render include view --}}
   @include($sc_templatePath.'.common.include_view')
   {{--// Render include view --}}

@endsection






@push('styles')
{{-- Your css style --}}
@endpush

@push('scripts')
{{-- //script here --}}
@endpush