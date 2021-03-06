@extends('master')
@section('content')

	<div class="inner-header">
		<div class="container">
			<div class="pull-left">
				{{-- <h6 class="inner-title">Товар {{$product->name}}</h6> --}}
			</div>
			<div class="pull-right">
				<div class="beta-breadcrumb font-large">
					<a href="{{route('trang-chu')}}">ГОЛОВНА</a> / <span>Подробиці продукту</span>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>

	<div class="container">
		<div id="content">
			<div class="row">
				<div class="col-sm-9">

					<div class="row">

						<div class="col-sm-4">
							{{-- @if($product->promotion_price!=0)
								<div class="ribbon-wrapper"><div class="ribbon sale">Sale</div></div>
							@endif --}}
							<img src="source/image/product/{{$product->image}}" alt="" height="250px">
						</div>
						<div class="col-sm-8">

							<div class="single-item-body">
								<p class="single-item-title"><h2><b>{{$product->name}}</b></h2></p> <br>
								<p class="single-item-price">
									@if($product->promotion_price!=0)
									<span class="label label-info">
										&darr;{{number_format((($product->unit_price-$product->promotion_price)/$product->unit_price)*100)}} %
									</span>  <br>  <br>
									@endif
									@if($product->promotion_price==0)
										<span class="flash-sale">{{number_format($product->unit_price, 2, '.', '')}} грн</span>
									@else
									<span class="flash-del">{{number_format($product->unit_price, 2, '.', '')}} грн</span>
											<span class="flash-sale">{{number_format($product->promotion_price, 2, '.', '')}} грн</span>
									@endif
								</p>
							</div>

							<div class="clearfix"></div>
							<div class="space20">&nbsp;</div>

							<div class="single-item-desc">
								{{-- <p>{{$product->description}}</p> --}}
							</div>
							<div class="space20">&nbsp;</div>
							


							
							<a href="{{route('dathang')}}" class="beta-btn primary text-center">Перейти в кошик<i class="fa fa-chevron-right"></i></a>
							<p>Кількість книг:</p> <hr>
							
							
							<div class="single-item-options">
								
								<select class="wc-select" name="quantity">
									{{-- <option>Quantity</option> --}}
									<option value="1">1</option>
									{{-- <option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option> --}}
								</select>

								{{-- <input type="number" name="quantity" value="1" class="wc-select" min="1"> --}}
								
								<a class="add-to-cart" href="{{route('themgiohang',$product->id)}}" style="width: 50%"><i class="fa fa-shopping-cart "></i></a>
								
							
								<div class="clearfix"></div>
							</div>
						</div>
					</div>

					<div class="space40">&nbsp;</div>
					<div class="woocommerce-tabs">
						<ul class="tabs">
							<li><a href="#tab-description">Опис</a></li>
							<li><a href="#tab-reviews">Відгуки - ({{$dem}})</a></li>
							
						</ul>

						<div class="panel" id="tab-description">
							{{-- <p>{{$product->description}}</p> --}}
							<p class="text-justify">{!!$product->description!!}</p>
						</div>
						<div class="panel" id="tab-reviews">
							@if(Auth::guard('cus')->check())
								<div id="comment">
									@if(Session::has('thanhcong'))
										<div class="alert alert-success">{{Session::get('thanhcong')}}</div>
									@endif
										<form action="{{route('chitietsanpham', $idpro)}}" method="post">
											<input type="hidden" name="_token" value="{{csrf_token()}}">
											{{-- <div class="form-group">
												<label for="email">Email:</label>
												<input required type="email" class="form-control" id="email" name="email">
											</div>
											<div class="form-group">
												<label for="name">Ім'я:</label>
												<input required type="text" class="form-control" id="name" name="name">
											</div> --}}
											<div class="form-group">
												<label for="cm">Ім'я:</label>
												<input required type="text" class="form-control" name="name_customer">
											</div>
											<div class="form-group">
												<label for="cm">Прокоментуйте:</label>
												<textarea required rows="3" id="cm" class="form-control" name="content"></textarea>
											</div>
											<div class="form-group text-right">
												<button type="submit" class="btn btn-default">Send</button>
											</div>
											{{csrf_field()}}
										</form>
									
								</div>

								<div id="comment-list">
									@foreach ($comt as $com)
									<div class="media beta-sales-item">
									<ul>
										<span class="beta-sales-price">
											{{$com->name_customer}}
											<br>
											
										</span>
										<i>{{date('d/m/Y H:i',strtotime($com->created_at))}}</i>	
										<li class="com-details">
											{{$com->content}}
										</li>
									</ul>
									</div>
									@endforeach

								</div>

								@else
								<div id="comment-list">
									@foreach ($comt as $com)
									<ul>
										<span class="beta-sales-price">
											{{$com->name_customer}}
											<br>
											
										</span>
										<span>{{date('d/m/Y H:i',strtotime($com->created_at))}}</span>	
										<li class="com-details">
											{{$com->content}}
										</li>
									</ul>

									@endforeach

								</div>
								@endif
						</div>
					</div>
					<div class="space50">&nbsp;</div>
					
				</div>
				<div class="col-sm-3 aside">
					<div class="widget">
						<h3 class="widget-title">Бестселери</h3>
						<div class="widget-body">
							<div class="beta-sales beta-lists">
								@foreach ($most as $item)
								<div class="media beta-sales-item">
									<a href="{{route('chitietsanpham',$item->id_product)}}"><img src="source/image/product/{{$item->image}}" alt="" width="250px"></a>
									<div class="media-body">
										<p class="single-item-title">{{$item->name}}
											@if($item->promotion_price!=0)
												<span class="label label-danger">
													&darr;{{number_format((($item->unit_price-$item->promotion_price)/$item->unit_price)*100)}} %
												</span>
											@endif
											</p>
										<p class="single-item-title">Bought: {{$item->TotalQuantity}}</p>
										<span class="beta-sales-price">
											@if($item->promotion_price==0)
													<span class="flash-sale">{{number_format($item->unit_price, 2, '.', '')}} грн</span>
												@else
													<span class="flash-del">{{number_format($item->unit_price, 2, '.', '')}} грн</span>
													<span class="flash-sale">{{number_format($item->promotion_price, 2, '.', '')}} грн</span>
												@endif

										</span>
									</div>
								</div>
								@endforeach
							</div>
						</div>
					</div> <!-- best sellers widget -->

					<div class="widget">
						<h3 class="widget-title">Нові продукти</h3>
						<div class="widget-body">
							<div class="beta-sales beta-lists">
								@foreach ($latest as $item)
								<div class="media beta-sales-item">
									<a href="{{route('chitietsanpham',$item->id)}}"><img src="source/image/product/{{$item->image}}" alt="" width="250px"></a>
									{{-- <a class="pull-left" href="product.html"><img src="source/assets/dest/images/products/sales/1.png" alt=""></a> --}}
									<div class="media-body">
										<p class="single-item-title">{{$item->name}}
											@if($item->promotion_price!=0) 
												<span class="label label-danger">
													&darr;{{number_format((($item->unit_price-$item->promotion_price)/$item->unit_price)*100)}} %
												</span>
												@endif
											</p>
										<span class="beta-sales-price">
											@if($item->promotion_price==0)
													<span class="flash-sale">{{number_format($item->unit_price, 2, '.', '')}} грн</span>
												@else
													<span class="flash-del">{{number_format($item->unit_price, 2, '.', '')}} грн</span>
													<span class="flash-sale">{{number_format($item->promotion_price, 2, '.', '')}} грн</span>
												@endif
										</span>
									</div>
									{{-- <div class="space50">&nbsp;</div> --}}
								</div>
								@endforeach
							</div>
						</div>
					</div> <!-- best sellers widget -->

				</div>
			</div>
		</div> <!-- #content -->
	</div> <!-- .container -->

@endsection