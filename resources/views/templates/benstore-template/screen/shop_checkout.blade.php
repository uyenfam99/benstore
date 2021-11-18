@php
/*
$layout_page = shop_checkout
**Variables:**
- $cartItem: collection
- $storeCheckout: int
- $shippingMethod: string
- $paymentMethod: string
- $totalMethod: array
- $dataTotal: array
- $shippingAddress: array
- $countries: array
- $attributesGroup: array
*/
@endphp

@extends($sc_templatePath.'.layout')

@section('block_main')
<link rel="stylesheet" href="{{ asset($sc_templateFile.'/css/select2.min.css')}}">
<style>
    .select2-container--default .select2-selection--single .select2-selection__rendered {
        line-height: 45px!important;
    }
    .select2-container .select2-selection--single {
        height: 45px!important;;
    }
    .select2-container--default .select2-selection--single .select2-selection__arrow {
        height: 100%;
    }
    .radio .radio-custom,
    .radio-inline .radio-custom,
    .checkbox .checkbox-custom,
    .checkbox-inline .checkbox-custom {
        opacity: 0;
    }

</style>
<section class="section section-xl bg-default text-md-left">
    <div class="container" style="text-align: left;">
        <div class="row">
            @if (count($cartItem) ==0)
            <div class="col-md-12 text-danger min-height-37vh">
                {!! sc_language_render('cart.cart_empty') !!}!
            </div>
            @else
            <div class="col-12">
                <h5></i>  {{ sc_store('title', $storeCheckout) }}</h5>
            </div>

            {{-- Item cart detail --}}
            @include($sc_templatePath.'.common.cart_list', ['cartItem' => $cartItem])
            {{-- //Item cart detail --}}


            <div class="col-md-12">
            <form class="sc-shipping-address" id="form-process" role="form" method="POST" action="{{ sc_route('checkout.process') }}">
                @csrf
                <div class="row">
                    {{-- Begin address shipping --}}
                    <div class="col-md-6">
                        {{-- Select address if customer login --}}
                        @if (auth()->user())
                            <div class="">
                                <select class="form-control" name="address_process" style="width: 100%;" id="addressList">
                                    <option value="">{{ sc_language_render('cart.change_address') }}</option>
                                    @foreach ($addressList as $k => $address)
                                    <option value="{{ $address->id }}" {{ (old('address_process') ==  $address->id) ? 'selected':''}}>- {{ $address->first_name. ' '.$address->last_name.', '.$address->address1.' '.$address->address2.' '.$address->address3 }}</option>
                                    @endforeach
                                    <option value="new" {{ (old('address_process') ==  'new') ? 'selected':''}}>{{ sc_language_render('cart.add_new_address') }}</option>
                                </select>
                            </div>
                        @endif
                        {{--// Select address if customer login --}}
                        
                        {{-- Render address shipping --}}
                        <table class="table table-borderless table-responsive">
                            <div class="row">
                                @if (sc_config('customer_lastname'))
                                    <div class="col-md-6 col-12 {{ $errors->has('first_name') ? ' has-error' : '' }}">
                                        <label for="phone" class="control-label">
                                            {{ sc_language_render('order.first_name') }}:</label>
                                        <input class="form-control" name="first_name" type="text"
                                            placeholder="{{ sc_language_render('order.first_name') }}"
                                            value="{{old('first_name', $shippingAddress['first_name'])}}">
                                        @if($errors->has('first_name'))
                                        <span class="help-block">{{ $errors->first('first_name') }}</span>
                                        @endif
                                    </div>
                                    <div class="col-md-6 col-12 {{ $errors->has('last_name') ? ' has-error' : '' }}">
                                        <label for="phone" class="control-label">
                                            {{ sc_language_render('order.last_name') }}:</label>
                                        <input class="form-control" name="last_name" type="text" placeholder="{{ sc_language_render('order.last_name') }}"
                                            value="{{old('last_name',$shippingAddress['last_name'])}}">
                                        @if($errors->has('last_name'))
                                        <span class="help-block">{{ $errors->first('last_name') }}</span>
                                        @endif
                                    </div>
                                @else
                                    <div class="col-md-12 col-12 {{ $errors->has('first_name') ? ' has-error' : '' }}">
                                        <label for="phone" class="control-label">
                                            {{ sc_language_render('order.name') }}:</label>
                                        <input class="form-control" name="first_name" type="text" placeholder="{{ sc_language_render('order.name') }}"
                                            value="{{old('first_name',$shippingAddress['first_name'])}}">
                                        @if($errors->has('first_name'))
                                        <span class="help-block">{{ $errors->first('first_name') }}</span>
                                        @endif
                                    </div>
                                @endif
                            </div>

                            @if (sc_config('customer_name_kana'))
                                <tr>
                                <td class="form-group{{ $errors->has('first_name_kana') ? ' has-error' : '' }}">
                                    <label for="phone" class="control-label">
                                        {{ sc_language_render('order.first_name_kana') }}:</label>
                                    <input class="form-control" name="first_name_kana" type="text"
                                        placeholder="{{ sc_language_render('order.first_name_kana') }}"
                                        value="{{old('first_name_kana', $shippingAddress['first_name_kana'])}}">
                                    @if($errors->has('first_name_kana'))
                                    <span class="help-block">{{ $errors->first('first_name_kana') }}</span>
                                    @endif
                                </td>
                                <td class="form-group{{ $errors->has('last_name_kana') ? ' has-error' : '' }}">
                                    <label for="phone" class="control-label">
                                        {{ sc_language_render('order.last_name_kana') }}:</label>
                                    <input class="form-control" name="last_name_kana" type="text" placeholder="{{ sc_language_render('order.last_name_kana') }}"
                                        value="{{old('last_name_kana',$shippingAddress['last_name_kana'])}}">
                                    @if($errors->has('last_name_kana'))
                                    <span class="help-block">{{ $errors->first('last_name_kana') }}</span>
                                    @endif
                                </td>
                                </tr>
                            @endif

                            <div class="row">
                                @if (sc_config('customer_phone'))
                                    <div class="col-md-6 col-12 {{ $errors->has('email') ? ' has-error' : '' }}">
                                        <label for="email" class="control-label"><i class="fl-bigmug-line-email64"></i>
                                            {{ sc_language_render('order.email') }}:</label>
                                        <input class="form-control" name="email" type="text" placeholder="{{ sc_language_render('order.email') }}"
                                            value="{{old('email', $shippingAddress['email'])}}">
                                        @if($errors->has('email'))
                                            <span class="help-block">{{ $errors->first('email') }}</span>
                                        @endif
                                    </div>
                                    <div class="col-md-6 col-12 {{ $errors->has('phone') ? ' has-error' : '' }}">
                                        <label for="phone" class="control-label"><i class="fl-bigmug-line-phone351"
                                                aria-hidden="true"></i> {{ sc_language_render('order.phone') }}:</label>
                                        <input class="form-control" name="phone" type="text" placeholder="{{ sc_language_render('order.phone') }}"
                                            value="{{old('phone',$shippingAddress['phone'])}}">
                                        @if($errors->has('phone'))
                                            <span class="help-block">{{ $errors->first('phone') }}</span>
                                        @endif
                                    </div>
                                @else
                                    <div class="col-md-12 col-12 {{ $errors->has('email') ? ' has-error' : '' }}">
                                        <label for="email" class="control-label"><i class="fl-bigmug-line-email64"></i>
                                            {{ sc_language_render('order.email') }}:</label>
                                        <input class="form-control" name="email" type="text" placeholder="{{ sc_language_render('order.email') }}"
                                            value="{{old('email',$shippingAddress['email'])}}">
                                        @if($errors->has('email'))
                                            <span class="help-block">{{ $errors->first('email') }}</span>
                                        @endif
                                    </div>
                                @endif
                            </div>


                            @if (sc_config('customer_country'))
                            <tr>
                                <td colspan="2" class="form-group{{ $errors->has('country') ? ' has-error' : '' }}">
                                    <label for="country" class="control-label"><i class="fas fa-globe"></i>
                                        {{ sc_language_render('order.country') }}:</label>
                                    @php
                                        $ct = old('country',$shippingAddress['country']);
                                    @endphp
                                    <select class="form-control country " style="width: 100%;" name="country">
                                        <option value="">__{{ sc_language_render('order.country') }}__</option>
                                        @foreach ($countries as $k => $v)
                                        <option value="{{ $k }}" {{ ($ct ==$k) ? 'selected':'' }}>{{ $v }}</option>
                                        @endforeach
                                    </select>
                                    @if ($errors->has('country'))
                                        <span class="help-block">
                                            {{ $errors->first('country') }}
                                        </span>
                                    @endif
                                </td>
                            </tr>
                            @endif


                            <tr>
                                @if (sc_config('customer_postcode'))
                                    <td class="form-group {{ $errors->has('postcode') ? ' has-error' : '' }}">
                                        <label for="postcode" class="control-label"><i class="fa fa-tablet"></i>
                                            {{ sc_language_render('order.postcode') }}:</label>
                                        <input class="form-control" name="postcode" type="text" placeholder="{{ sc_language_render('order.postcode') }}"
                                            value="{{ old('postcode',$shippingAddress['postcode'])}}">
                                        @if($errors->has('postcode'))
                                            <span class="help-block">{{ $errors->first('postcode') }}</span>
                                        @endif
                                    </td>
                                @endif

                                @if (sc_config('customer_company'))
                                    <td class="form-group{{ $errors->has('company') ? ' has-error' : '' }}">
                                        <label for="company" class="control-label"><i class="fa fa-university"></i>
                                            {{ sc_language_render('order.company') }}</label>
                                        <input class="form-control" name="company" type="text" placeholder="{{ sc_language_render('order.company') }}"
                                            value="{{ old('company',$shippingAddress['company'])}}">
                                        @if($errors->has('company'))
                                            <span class="help-block">{{ $errors->first('company') }}</span>
                                        @endif
                                    </td>
                                @endif
                            </tr>

                            @if (sc_config('customer_address1'))
                            <tr>
                                    <td colspan="2"
                                        class="form-group {{ $errors->has('address1') ? ' has-error' : '' }}">
                                        <label for="address1" class="control-label"><i class="fa fa-list-ul"></i>
                                            {{ sc_language_render('order.address') }}:</label>
                                        <input class="form-control" name="address1" type="text" placeholder="{{ sc_language_render('order.address1') }}"
                                            value="{{ old('address1',$shippingAddress['address1'])}}">
                                        @if($errors->has('address1'))
                                            <span class="help-block">{{ $errors->first('address1') }}</span>
                                        @endif
                                    </td>
                            </tr>
                            @endif

                            @if (sc_config('customer_address2'))
                            <tr>
                                    <td colspan="2"
                                        class="form-group {{ $errors->has('address2') ? ' has-error' : '' }}">
                                        <label for="address2" class="control-label"><i class="fa fa-list-ul"></i>
                                            {{ sc_language_render('order.address') }}:</label>
                                        <input class="form-control" name="address2" type="text" placeholder="{{ sc_language_render('order.address2') }}"
                                            value="{{ old('address2',$shippingAddress['address2'])}}">
                                        @if($errors->has('address2'))
                                            <span class="help-block">{{ $errors->first('address2') }}</span>
                                        @endif
                                    </td>
                            </tr>
                            @endif

                            @if (sc_config('customer_address3'))
                            <tr>
                                    <td colspan="2"
                                        class="form-group {{ $errors->has('address3') ? ' has-error' : '' }}">
                                        <label for="address3" class="control-label"><i class="fa fa-list-ul"></i>
                                            {{ sc_language_render('order.address') }}:</label>
                                        <input class="form-control" name="address3" type="text" placeholder="{{ sc_language_render('order.address3') }}"
                                            value="{{ old('address3',$shippingAddress['address3'])}}">
                                        @if($errors->has('address3'))
                                            <span class="help-block">{{ $errors->first('address3') }}</span>
                                        @endif
                                    </td>
                            </tr>                                   
                            @endif
                            <div class="row">
                                <div class="col-md-12 col-12">
                                    <label for="phone" class="control-label">
                                    Tỉnh/Thành phố:</label>
                                    <select id="province" name="province" class="select2 form-control"></select>
                                    @if($errors->has('province'))
                                        <span class="help-block">{{ $errors->first('province') }}</span>
                                    @endif
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 col-12">
                                    <label for="phone" class="control-label">
                                        Quận/Huyện:</label>
                                    <select id="district" name="district" class="select2 form-control"></select>
                                    @if($errors->has('district'))
                                        <span class="help-block">{{ $errors->first('district') }}</span>
                                    @endif
                                </div>
                                <div class="col-md-6 col-12">
                                    <label for="phone" class="control-label">
                                        Xã/Phường/Thị trấn<span>*</span></label>
                                    <select id="ward" name="ward" class="select2 form-control"></select>
                                    @if($errors->has('district'))
                                        <span class="help-block">{{ $errors->first('district') }}</span>
                                    @endif
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12 col-12">
                                    <label for="phone" class="control-label">
                                        Địa chỉ<span>*</span></label>
                                    <input type="text" name="address" id="address" class="form__input form-control" placeholder="Địa chỉ" value="{{old('address')}}">
                                    @if($errors->has('address'))
                                        <span class="help-block">{{ $errors->first('address') }}</span>
                                    @endif
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12 col-12">
                                    <label class="control-label">
                                        {{ sc_language_render('cart.note') }}:</label>
                                    <textarea class="form-control" rows="5" name="comment"
                                        placeholder="{{ sc_language_render('cart.note') }}....">{{ old('comment','')}}</textarea>
                                </div>
                            </div>

                        </table>
                        {{-- //Render address shipping --}}
                    </div>
                    {{--// End address shipping --}}


                    <div class="col-md-6">
                        {{-- Total --}}
                        <div class="row">
                            <div class="col-md-12">
                                {{-- Data total --}}
                                @include($sc_templatePath.'.common.render_total')
                                {{-- Data total --}}

                                {{-- Total method --}}
                                <div class="row">
                                    <div class="col-md-12">
                                        <div
                                            class="form-group {{ $errors->has('totalMethod') ? ' has-error' : '' }}">
                                            @if($errors->has('totalMethod'))
                                                <span class="help-block">{{ $errors->first('totalMethod') }}</span>
                                            @endif
                                        </div>

                                        <div class="form-group">
                                            @foreach ($totalMethod as $key => $plugin)
                                                @includeIf($plugin['pathPlugin'].'::render')
                                                
                                            @endforeach
                                        </div>
                                    </div>
                                </div>
                                {{-- //Total method --}}
                                {{-- Shipping method --}}
                                @if (!sc_config('shipping_off'))                              
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div
                                                class="form-group {{ $errors->has('shippingMethod') ? ' has-error' : '' }}">
                                                <h3 class="control-label">
                                                    <img src="{{sc_file('images/shipped.png')}}" width="50px"  alt="">
                                                    {{ sc_language_render('order.shipping_method') }}:<br></h3>
                                                @if($errors->has('shippingMethod'))
                                                <span class="help-block">{{ $errors->first('shippingMethod') }}</span>
                                                @endif
                                            </div>

                                            <div class="form-group">
                                                @foreach ($shippingMethod as $key => $shipping)
                                                <div>
                                                    <label class="radio-inline">
                                                        <input type="radio" name="shippingMethod"
                                                            value="{{ $shipping['key'] }}"
                                                            {{ (old('shippingMethod') == $key)?'checked':'' }}
                                                            style="position: relative;"
                                                            {{ ($shipping['permission'])?'':'disabled' }}>
                                                        {{ $shipping['title'] }}
                                                    </label>
                                                </div>
                                                @includeIf($shipping['pathPlugin'].'::render')
                                                

                                                @endforeach
                                            </div>
                                        </div>
                                    </div>
                                
                                @endif
                                 {{-- Payment method --}}
                                @if (!sc_config('payment_off'))
                               
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div
                                                class="form-group {{ $errors->has('paymentMethod') ? ' has-error' : '' }}">
                                                <h3 class="control-label"><i class="linearicons-credit-card"></i>
                                                    {{ sc_language_render('order.payment_method') }}:<br></h3>
                                                @if($errors->has('paymentMethod'))
                                                <span class="help-block">{{ $errors->first('paymentMethod') }}</span>
                                                @endif
                                            </div>
                                            <div class="form-group cart-payment-method">
                                                @foreach ($paymentMethod as $key => $payment)
                                                <div>
                                                    <label class="radio-inline">
                                                        <input type="radio" name="paymentMethod"
                                                            value="{{ $payment['key'] }}"
                                                            {{ (old('shippingMethod') == $key)?'checked':'' }}
                                                            style="position: relative;"
                                                            {{ ($payment['permission'])?'':'disabled' }}>
                                                            <label class="radio-inline" for="payment-{{ $payment['key'] }}">
                                                                <img title="{{ $payment['title'] }}"
                                                                    alt="{{ $payment['title'] }}"
                                                                    src="{{ sc_file($payment['image']) }}">
                                                            </label>
                                                    </label>
                                                </div>

                                                {{-- Render view --}}
                                                @includeIf($payment['pathPlugin'].'::render')
                                                {{-- //Render view --}}

                                                @endforeach
                                            </div>
                                        </div>
                                    </div>                               
                                @endif

                            </div>
                            
                        </div>
                        {{-- End total --}}

                        {{-- Button checkout --}}
                        <div class="row" style="padding-bottom: 20px;">
                            <div class="col-md-12 text-center">
                                <div class="pull-right">
                                    {!! $viewCaptcha ?? ''!!}
                                    <button class="button button-lg button-primary" type="submit" id="button-form-process">{{ sc_language_render('cart.checkout') }}</button>
                                </div>
                            </div>
                        </div>
                        {{-- Button checkout --}}

                    </div>
                </div>
            </form>
        </div>





            @endif
        </div>
    </div>
</section>

   {{-- Render include view --}}
   @include($sc_templatePath.'.common.include_view')
   {{--// Render include view --}}

@endsection




@push('scripts')

{{-- Render script from total method --}}
@foreach ($totalMethod as $key => $plugin)
    @includeIf($plugin['pathPlugin'].'::script')
@endforeach
{{--// Render script from total method --}}

{{-- Render script from shipping method --}}
@foreach ($shippingMethod as $key => $plugin)
    @includeIf($plugin['pathPlugin'].'::script')
@endforeach
{{--// Render script from shipping method --}}

{{-- Render script from payment method --}}
@foreach ($paymentMethod as $key => $plugin)
    @includeIf($plugin['pathPlugin'].'::script')
@endforeach
{{--// Render script from payment method --}}

<script type="text/javascript">

    $('#button-form-process').click(function(){
        $('#form-process').submit();
        $(this).prop('disabled',true);
    });

    $('#addressList').change(function(){
        var id = $('#addressList').val();
        if(!id) {
            return;   
        } else if(id == 'new') {
            $('#form-process [name="first_name"]').val('');
            $('#form-process [name="last_name"]').val('');
            $('#form-process [name="phone"]').val('');
            $('#form-process [name="postcode"]').val('');
            $('#form-process [name="company"]').val('');
            $('#form-process [name="country"]').val('');
            $('#form-process [name="address1"]').val('');
            $('#form-process [name="address2"]').val('');
            $('#form-process [name="address3"]').val('');
        } else {
            $.ajax({
            url: '{{ sc_route('customer.address_detail') }}',
            type: 'GET',
            dataType: 'json',
            async: false,
            cache: false,
            data: {
                id: id,
            },
            success: function(data){
                error= parseInt(data.error);
                if(error === 1)
                {
                    alert(data.msg);
                }else{
                    $('#form-process [name="first_name"]').val(data.first_name);
                    $('#form-process [name="last_name"]').val(data.last_name);
                    $('#form-process [name="phone"]').val(data.phone);
                    $('#form-process [name="postcode"]').val(data.postcode);
                    $('#form-process [name="company"]').val(data.company);
                    $('#form-process [name="country"]').val(data.country);
                    $('#form-process [name="address1"]').val(data.address1);
                    $('#form-process [name="address2"]').val(data.address2);
                    $('#form-process [name="address3"]').val(data.address3);
                }

                }
        });
        }
    });

</script>
<script src="{{ asset($sc_templateFile.'/js/select2.full.min.js')}}"></script>
<script>
    $(document).ready(function () {
        $('.select2').select2();
        // get_province();
        get_default_ward();
        $(document).on('change', '#province', function () {
            let code = $(this).find('option:selected').data('code');
            get_district(code);
        });

        $(document).on('change', '#district', function () {
            let code = $(this).find('option:selected').data('code');
            get_ward(code);
        });
    });

    async function get_default_ward() {
        await get_default_district();
        let code = $('#district').find('option:selected').data('code');
        let ward = "{!! old()?old('ward'):$shippingAddress['ward']??'' !!}";
        $('#ward').append($('<option value="">Chọn xã/phường/thị trấn</option>'));
        $.getJSON('{{asset('hcvn/xa_phuong.json')}}', function (json) {
            jQuery.each(json, function (index, item) {
                if (item.parent_code == code) {
                    let opt;
                    if (ward === item.name_with_type) {
                        opt = $('<option data-code="' + index + '" value="' + item.name_with_type + '" selected>' + item.name_with_type + '</option>');
                    } else {
                        opt = $('<option data-code="' + index + '" value="' + item.name_with_type + '">' + item.name_with_type + '</option>');
                    }
                    $('#ward').append(opt);
                }
            });
        });
    }

    function get_ward(code) {
        let ward = "{!! old()?old('ward'):$shippingAddress['ward']??'' !!}";
        $.getJSON('{{asset('hcvn/xa_phuong.json')}}', function (json) {
            $('#ward').empty();
            $('#ward').append($('<option value="">Chọn xã/phường/thị trấn</option>'));
            jQuery.each(json, function (index, item) {
                if (item.parent_code == code) {
                    let opt;
                    if (ward === item.name_with_type) {
                        opt = $('<option data-code="' + index + '" value="' + item.name_with_type + '" selected>' + item.name_with_type + '</option>');
                    } else {
                        opt = $('<option data-code="' + index + '" value="' + item.name_with_type + '">' + item.name_with_type + '</option>');
                    }
                    $('#ward').append(opt);
                }
            });
        });
    }

    async function get_default_district() {
        await get_defaut_province();
        $('#province').addClass('required');
        let code = $('#province').find('option:selected').data('code');
        let district = "{!! old()?old('district'):$shippingAddress['district']??'' !!}";
        $('#district').append($('<option value="">Chọn quận/huyện</option>'));
        return new Promise(resolve => {
            $.getJSON('{{asset('hcvn/quan_huyen.json')}}', function (json) {
                jQuery.each(json, function (index, item) {
                    if (item.parent_code == code) {
                        let opt;
                        if (district === item.name_with_type) {
                            opt = $('<option data-code="' + index + '" value="' + item.name_with_type + '" selected>' + item.name_with_type + '</option>');
                        } else {
                            opt = $('<option data-code="' + index + '" value="' + item.name_with_type + '">' + item.name_with_type + '</option>');
                        }
                        $('#district').append(opt);
                    }
                });
                resolve($('#district'));
            });
        });
    }

    function get_district(code) {
        let district = "{!! old()?old('district'):$shippingAddress['district']??'' !!}";
        $.getJSON('{{asset('hcvn/quan_huyen.json')}}', function (json) {
            $('#district').empty();
            $('#district').append($('<option value="">Chọn quận/huyện</option>'));
            $('#ward').empty();
            $('#ward').append($('<option value="">Chọn xã/phường/thị trấn</option>'));
            jQuery.each(json, function (index, item) {
                if (item.parent_code == code) {
                    let opt;
                    if (district === item.name_with_type) {
                        opt = $('<option data-code="' + index + '" value="' + item.name_with_type + '" selected>' + item.name_with_type + '</option>');
                    } else {
                        opt = $('<option data-code="' + index + '" value="' + item.name_with_type + '">' + item.name_with_type + '</option>');
                    }
                    $('#district').append(opt);
                }
            });
        });
    }

    function get_defaut_province() {
        return new Promise(resolve => {
            let province = "{!! old()?old('province'):$shippingAddress['province']??'' !!}";
            $('#province').append($('<option value="">Chọn tỉnh/thành</option>'));
            $.getJSON('{{asset('hcvn/tinh_tp.json')}}', function (json) {
                jQuery.each(json, function (index, item) {
                    let opt;
                    if (province === item.name) {
                        opt = $('<option data-code="' + index + '" value="' + item.name + '" selected>' + item.name + '</option>');
                    } else {
                        opt = $('<option data-code="' + index + '" value="' + item.name + '">' + item.name + '</option>');
                    }
                    $('#province').append(opt);
                });
                resolve($('#province'));
            });
        });
    }

    function get_province() {
        let province = "{!! old()?old('province'):$obj['province']??'' !!}";
        $.getJSON('{{asset('hcvn/tinh_tp.json')}}', function (json) {
            $('#province').empty();
            $('#district').empty();
            $('#district').append($('<option value="">Chọn quận/huyện</option>'));
            $('#ward').empty();
            $('#ward').append($('<option value="">Chọn xã/phường/thị trấn</option>'));
            jQuery.each(json, function (index, item) {
                let opt;
                if (province === item.name) {
                    opt = $('<option data-code="' + index + '" value="' + item.name + '" selected>' + item.name + '</option>');
                } else {
                    opt = $('<option data-code="' + index + '" value="' + item.name + '">' + item.name + '</option>');
                }
                $('#province').append(opt);
            });
        });
    }
</script>

@endpush

@push('styles')

@endpush