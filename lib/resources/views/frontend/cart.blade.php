@extends('frontend.master')
@section('title', 'Cart page')
@section('main')
<link rel="stylesheet" href="css/cart.css">

<script type="text/javascript">
	function updateCart(qty, rowId){
		$.get(
				'{{asset('cart/update')}}', //url,
				{qty:qty, rowId:rowId},//Đối tượng,
				function(){
					location.reload();
				}//phương thức
			);
	}
</script>

<div id="wrap-inner">
	<div id="list-cart">
		<h3>Giỏ hàng</h3>
		@if(Cart::count()>=1)
		<form>
			<table class="table table-bordered .table-responsive text-center">
				<tr class="active">
					<td width="11.111%">Опис фотографії</td>
					<td width="22.222%">Назва продукту</td>
					<td width="22.222%">Сума</td>
					<td width="16.6665%">Ціна за одиницю</td>
					<td width="16.6665%">у гроші</td>
					<td width="11.112%">Стерти</td>
				</tr>
					@foreach ($items as $item)
						<tr>
							<td><img width="230px" class="img-responsive" src="{{asset('lib/storage/app/avatar/'.$item->options->img)}}"></td>
							<td>{{$item->name}}</td>
							<td>
								<div class="form-group">
									<input class="form-control" type="number" value="{{$item->qty}}" onchange="updateCart(this.value,'{{$item->rowId}}')">
								</div>
							</td>
							<td><span class="price">{{number_format($item->price, 2, '.', '')}} грн</span></td>
							<td><span class="price">{{number_format($item->price*$item->qty, 2, '.', '')}} грн</span></td>
							<td><a href="{{ asset('cart/delete/'.$item->rowId)}}" class="btn btn-outline-danger">Delete</a></td>
						</tr>
					@endforeach

			</table>
			<div class="row" id="total-price">
				<div class="col-md-6 col-sm-12 col-xs-12">										
				Загальний платіж: <span class="total-price">{{$total}} грн</span>

				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<a href="#" class="my-btn btn">Наступна покупка</a>
					<a href="#" class="my-btn btn">Оновлення</a>
					<a href="{{ asset('cart/delete/all')}}" class="my-btn btn">Видалити кошик</a>
				</div>
			</div>
		</form>             	                	
	</div>

	<div id="xac-nhan">
		<h3>Xác nhận mua hàng</h3>
		<form method="post">
			<div class="form-group">
				<label for="email">Email address:</label>
				<input required type="email" class="form-control" id="email" name="email">
			</div>
			<div class="form-group">
				<label for="name">Họ và tên:</label>
				<input required type="text" class="form-control" id="name" name="name">
			</div>
			<div class="form-group">
				<label for="phone">Số Телефон:</label>
				<input required type="number" class="form-control" id="phone" name="phone">
			</div>
			<div class="form-group">
				<label for="add">Головна:</label>
				<input required type="text" class="form-control" id="add" name="add">
			</div>
			<div class="form-group text-right">
				<button type="submit" class="btn btn-default">Thực hiện đơn hàng</button>
			</div>
			{{csrf_field()}}
		</form>
	</div>
	@else
	<h2>Giỏ hàng rỗng</h2>
	@endif
</div>

@stop