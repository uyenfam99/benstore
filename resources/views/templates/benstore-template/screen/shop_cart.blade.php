@php
/*
$layout_page = shop_cart
**Variables:**
- $cart: no paginate
- $countries: array
- $attributesGroup: array
*/
@endphp

@extends($sc_templatePath.'.layout')

@section('block_main')
<section class="section section-xl bg-default text-md-left">
    <div class="container">
        <div class="row">
            @if (count($cart) ==0)

            <div class="col-md-12">
                {!! sc_language_render('cart.cart_empty') !!}!
            </div>

            @else
            @php
                $cartTmp = $cart->groupBy('storeId');
            @endphp

            {{-- Render cart item for earch shop --}}
            @foreach ($cartTmp as $sId => $cartItem)
            <div class="col-md-12">
                <h5 class="my-5">Giỏ hàng của bạn</h5>
            </div>

            <div class="col-md-12">
                <form action="{{ sc_route('checkout.prepare') }}" method="POST">
                    <input type="hidden" name="store_id" value="{{ $sId }}">
                    @csrf

                    {{-- Item cart detail --}}
                    @include($sc_templatePath.'.common.cart_list', ['cartItem' => $cartItem])
                    {{-- //Item cart detail --}}
                    
                    {{-- Button checkout --}}
                    <div class="col-md-12 text-center">
                        <div class="pull-right">
                            <button class="button button-lg " style="background: rgb(255, 211, 59);border:none;" type="submit">{{ sc_language_render('cart.checkout') }}</button>
                        </div>
                    </div>
                    {{-- Button checkout --}}
                </form>
            </div>
            @endforeach
            {{--// Render cart item for earch shop --}}
            @endif
        </div>
    </div>
</section>

   {{-- Render include view --}}
   @include($sc_templatePath.'.common.include_view')
   {{--// Render include view --}}

@endsection



@push('scripts')
{{-- //script here --}}
@endpush

@push('styles')
{{-- Your css style --}}
@endpush