<div id="header">
		<div class="header-top">
			<div class="container">
				<div class="pull-right auto-width-right">
					<ul class="top-menu menu-beta l-inline">
						<li><a href="{{route('lienhe')}}"><i class="fa fa-home"></i> Україна,Київ</a></li>
						<li><a href="{{route('lienhe')}}"><i class="fa fa-phone"></i> 999 999 9</a></li>
					</ul>
				</div>
				<div class="pull-right auto-width-right">
					<ul class="top-details menu-beta l-inline">
						{{-- @if(Auth::check()) --}}
						@if(Auth::guard('cus')->check())
						{{-- <li><a href="#"><i class="fa fa-user"></i>Рахунок</a></li> --}}
						{{-- <li><a href="#"><i class="fa fa-user"></i>Hello {{Auth::user()->full_name}}</a></li> --}}
						{{-- <li><a href="#"><i class="fa fa-user"></i>Hello @foreach ($cus as $cu)
							{{$cu->cus_name}}
						@endforeach </a></li> --}}
						<li><a href="{{route('trang-chu')}}"><i class="fa fa-user"></i>Hello {{Auth::guard('cus')->user()->cus_name}}</a></li>
						<li><a href="{{route('logout')}}">Вийти</a></li>
						@else
						<li><a href="{{route('signin')}}">Зареєструватися</a></li>
						<li><a href="{{route('login')}}">Увійти</a></li>
						@endif
					</ul>
				</div>
				<div class="clearfix"></div>
			</div> <!-- .container -->
		</div> <!-- .header-top -->
		<div class="header-body">
			<div class="container beta-relative">
				<div class="pull-left">
					<a href="{{route('trang-chu')}}" id="logo"><img src="source/assets/dest/images/logo91.png" width="150px" alt="" style="border-top-left-radius: 20%;"></a>
					
				</div>
             <div class="pull-left" >
			 <pre>   </pre>
			 <pre>   </pre>
			 <div>   <h1> <pre><strong>  Light Novel</strong> </pre></h1> </div>
			 <div>   <h1> <pre><strong>  Книги «манґа»</strong> </pre></h1> </div>
			 
				
			
						</div>
						




				<div class="pull-right beta-components space-left ov">
					<div class="space10">&nbsp;</div>
					<div class="beta-comp">
						<form role="search" method="get" id="searchform" action="{{route('search')}}">
					        <input type="text" value="" name="key" id="s" placeholder="Пошук книги..."  class="form-control" />
					        <button class="fa fa-search" type="submit" id="searchsubmit"></button>
						</form>
					</div>

					<div class="beta-comp">
						{{-- @if(Session::has('cart')) --}}
						<div class="cart">
						   <div class="beta-select"><i class="fa fa-shopping-cart"></i> Кошик (@if(Session::has('cart')){{Session('cart')->totalQty}} @else Порожній @endif) <i class="fa fa-chevron-down"></i></div>
							<div class="beta-dropdown cart-body">

								@if(Session::has('cart'))
								@foreach ($product_cart as $product)
								<div class="cart-item">
									<a class="cart-item-delete" href="{{route('xoagiohang', $product['item']['id'])}}"> <i class="fa fa-times"></i> </a>
									<div class="media">
										<a class="pull-left" href="{{route('chitietsanpham',$product['item']['id'])}}"><img src="source/image/product/{{$product['item']['image']}}" alt=""></a>
										<div class="media-body">
											<span class="cart-item-title">{{$product['item']['name']}}</span>
											{{-- <span class="cart-item-options">Size: XS; Colar: Navy</span> --}}
											<span class="cart-item-amount"> {{$product['qty']}}* 
												{{-- <span>{{number_format($product['item']['unit_price'], 2, '.', '')}}</span> --}}
												@if($product['item']['promotion_price']==0)
												<span>{{number_format($product['item']['unit_price'], 2, '.', '')}} грн</span>
												@else
												<span>{{number_format($product['item']['promotion_price'], 2, '.', '')}} грн</span>
												@endif
											</span>
											{{-- <input type="number" value="" min="1"> --}}
										</div>
									</div>
								</div>
								@endforeach
						
									<div class="cart-caption">
										<div class="cart-total text-right">Загальна оплата праці: 
											<span class="cart-total-value">{{number_format(Session('cart')->totalPrice, 2, '.', '')}} грн</span>
										</div>

										@endif
										
										<div class="clearfix"></div>
										<div class="center">
											<div class="space10">&nbsp;</div>
											<a href="{{route('dathang')}}" class="beta-btn primary text-center">Купівля <i class="fa fa-chevron-right"></i></a>
										</div>
									</div>
								</div>

							</div> <!-- .cart -->
						{{-- @endif --}}

					</div>
				</div>
				<div class="clearfix"></div>
			</div> <!-- .container -->
		</div> <!-- .header-body -->
		<div class="header-bottom" style="background-color: #0277b8;">
			<div class="container">
				<a class="visible-xs beta-menu-toggle pull-right" href="#"><span style='color: white;' class='beta-menu-toggle-text'>Меню</span> <i class="fa fa-bars"></i></a>
				<div class="visible-xs clearfix"></div>
				<nav class="main-menu">
					<ul class="l-inline ov ">
						<li><a href="{{route('trang-chu')}}">Головна</a></li>
						<li><a href="{{route('all')}}">Категорії</a></li>
					
							<ul class="sub-menu">
							<li><a href="{{route('trang-chu')}}">Головна</a></li>
						<li><a href="{{route('all')}}">Категорії</a>
						<li><a href="{{route('gioithieu')}}">Інформація</a></li>
						<li><a href="{{route('lienhe')}}">Контактна інформація</a></li>
															@foreach ($loai_sp as $item)
									<li><a href="{{route('loaisanpham', $item->cate_id)}}">{{$item->cate_name}}</a></li>
								@endforeach
								
								
							</ul>
						
						<li><a href="{{route('gioithieu')}}">Інформація</a></li>
						<li><a href="{{route('lienhe')}}">Контактна інформація</a></li>
					</ul>
					<div class="clearfix"></div>
				</nav>
			</div> <!-- .container -->
		</div> <!-- .header-bottom -->
	</div> <!-- #header -->

	