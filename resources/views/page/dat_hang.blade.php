@extends('master')
@section('content')

	<div class="inner-header">
		<div class="container">
			<div class="pull-left">
				<h6 class="inner-title">Купівля</h6>
			</div>
			<div class="pull-right">
				<div class="beta-breadcrumb">
					<a href="{{route('trang-chu')}}">Home page</a> / <span>Купівля </span>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	
	<div class="container">
		@if(Session::has('thongbao'))
		<div class="row">
			<div class="alert alert-success">
				<strong> <h3>{{Session::get('thongbao')}}</h3>  </strong> 
			</div>
		</div>
		@endif
		<div id="content">
			
			<form action="{{route('dathang')}}" method="post" class="beta-form-checkout">
				<input type="hidden" name="_token" value="{{csrf_token()}}">

				<div class="row">
					<div class="col-sm-6">
						<h4>Купівля </h4>
						<div class="space20">&nbsp;</div>
						
						@if(Auth::guard('cus')->check())
							<input type="hidden" id="id" name="id" value="{{Auth::guard('cus')->user()->cus_id}}" required>
							<div class="form-block">

								<label for="name">Повне ім'я</label>
								<input type="text" id="name" name="name" value="{{Auth::guard('cus')->user()->cus_name}}" required>
							</div>
							<div class="form-block">
								<label>Стать </label>
								<input id="gender" type="radio" class="input-radio" name="gender" value="Male" checked="checked" style="width: 10%"><span style="margin-right: 10%">Чоловік</span>
								<input id="gender" type="radio" class="input-radio" name="gender" value="Female" style="width: 10%"><span>Жінка</span>
											
							</div>

							<div class="form-block">
								<label for="email">Електронна пошта</label>
								<input type="email" id="email" name="email" value="{{Auth::guard('cus')->user()->email}}" required>
							</div>

							<div class="form-block">
								<label for="adress">Адреса</label>
								<input type="text" id="adress" name="address" value="{{Auth::guard('cus')->user()->address}}" required>
							</div>
							

							<div class="form-block">
								<label for="phone">Телефонний номер</label>
								<input type="text" id="phone" name="phone" required value="{{Auth::guard('cus')->user()->phone_number}}">
							</div>
							
							<div class="form-block">
								<label for="notes">Примітка</label>
								<textarea id="notes" name="note"></textarea>
							</div>

						@else

							<div class="form-block">
								<label for="name">Повне ім'я</label>
								<input type="text" id="name" name="name" placeholder="Повне ім'я" required>
							</div>
							<div class="form-block">
								<label>Gender </label>
								<input id="gender" type="radio" class="input-radio" name="gender" value="nam" checked="checked" style="width: 10%"><span style="margin-right: 10%">Чоловік</span>
								<input id="gender" type="radio" class="input-radio" name="gender" value="nữ" style="width: 10%"><span>Жіночий</span>
											
							</div>

							<div class="form-block">
								<label for="email">Електронна пошта</label>
								<input type="email" id="email" name="email" value="@gmail.com" required placeholder="почта@gmail.com">
							</div>

							<div class="form-block">
								<label for="adress">Адреса</label>
								<input type="text" id="adress" name="address" placeholder="Адреса вулиці" required>
							</div>
							

							<div class="form-block">
								<label for="phone">Телефонний номер</label>
								<input type="text" id="phone" name="phone" required>
							</div>
							
							<div class="form-block">
								<label for="notes">Примітка</label>
								<textarea id="notes" name="note"></textarea>
							</div>

						@endif

					</div>

					<div class="col-sm-6">
						<div class="your-order">
							<div class="your-order-head"><h5>Ваше замовлення</h5></div>
							<div class="your-order-body" style="padding: 0px 10px">
								<div class="your-order-item">
									<div>
									<!--  one item	 -->
										@if(Session::has('cart'))
										@foreach ($product_cart as $cart)
											<div class="media">
												<img width="25%" src="source/image/product/{{$cart['item']['image']}}" alt="" class="pull-left">
												<div class="media-body">
													<p class="font-large">{{$cart['item']['name']}}</p>
													
													@if($cart['item']['promotion_price']==0)
													<span class="color-gray your-order-info">Unit price: {{number_format($cart['item']['unit_price'])}} грн</span>
													@else
													<span class="color-gray your-order-info">Ціна з акцієї лише: {{number_format($cart['item']['promotion_price'])}} грн</span>
													@endif
													{{-- <span class="color-gray your-order-info">Đơn giá:  {{$cart['price']}}</span> --}}
													<span class="color-gray your-order-info">Кількість: {{$cart['qty']}}</span>
												</div>
											</div>
										@endforeach
										<!-- end one item -->
								@endif
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="your-order-item">
									<div class="pull-left"><p class="your-order-f18">Разом:</p></div>
									{{-- <div class="pull-right"><h5 class="color-black">{{number_format(Session('cart')->totalPrice)}} грн</h5></div> --}}
									<div class="pull-right"><h5 class="color-black">@if(Session::has('cart')){{number_format($totalPrice)}} @else 0 @endif грн</h5></div>
									<div class="clearfix"></div>
								</div>
							{{-- @endif --}}
							</div>

							<div class="your-order-head"><h5>Оплата</h5></div>
							
							<div class="your-order-body">
								<ul class="payment_methods methods">
									<li class="payment_method_bacs">
										<input id="payment_method_bacs" type="radio" class="input-radio" name="payment_method" value="COD" checked="checked" data-order_button_text="">
										<label for="payment_method_bacs">НАКЛАДНА ПЛАТА </label>
										<div class="payment_box payment_method_bacs" style="display: block;">
										Магазин надішле товар на вашу адресу, після чого оплатити доставку
										</div>						
									</li>

									<li class="payment_method_cheque">
										<input id="payment_method_cheque" type="radio" class="input-radio" name="payment_method" value="ATM" data-order_button_text="">
										<label for="payment_method_cheque">Предоплата</label>
										<div class="payment_box payment_method_cheque" style="display: none;">
										Переказ на наступний банківський рахунок:
											<br>- Номер рахунку: 123 456 789
											<br>- Власник рахунку: ЖИТТЯ-120
											<br>- Bank ПРИВАТБАНКА, Kyiv
										</div>						
									</li>
									
								</ul>
							</div>
								
							<div class="text-center">
																
								@if(Auth::guard('cus')->check())
								
									@if(Session::has('cart'))
									<button type="submit" class="beta-btn primary" href="#">Checkout <i class="fa fa-chevron-right"></i></button>
									@else 
									<div class="alert alert-danger">
										<b>Неможливо перевірити</b>
									</div>
									<input type="button" class="beta-btn primary " value="Замовити " ><i class="fa fa-chevron-right"></i>
								@endif
								
								@else
								
									<div class="alert alert-danger">
										<b>Будь ласка, увійдіть, щоб замовити</b>
									</div>
									<input type="button" class="beta-btn primary " value="Замовити " ><i class="fa fa-chevron-right"></i>

								@endif
								
							</div>
						</div> <!-- .your-order -->
					</div>

				</div>
			</form>
		</div> <!-- #content -->
	</div> <!-- .container -->


	<!--customjs-->
	<script type="text/javascript">
    $(function() {
        // this will get the full URL at the address bar
        var url = window.location.href;

        // passes on every "a" tag
        $(".main-menu a").each(function() {
            // checks if its the same on the address bar
            if (url == (this.href)) {
                $(this).closest("li").addClass("active");
				$(this).parents('li').addClass('parent-active');
            }
        });
    });   


</script>
<script>
	 jQuery(document).ready(function($) {
                'use strict';
				
// color box

//color
      jQuery('#style-selector').animate({
      left: '-213px'
    });

    jQuery('#style-selector a.close').click(function(e){
      e.preventDefault();
      var div = jQuery('#style-selector');
      if (div.css('left') === '-213px') {
        jQuery('#style-selector').animate({
          left: '0'
        });
        jQuery(this).removeClass('icon-angle-left');
        jQuery(this).addClass('icon-angle-right');
      } else {
        jQuery('#style-selector').animate({
          left: '-213px'
        });
        jQuery(this).removeClass('icon-angle-right');
        jQuery(this).addClass('icon-angle-left');
      }
    });
				});
	</script>

@endsection