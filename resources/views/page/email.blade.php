

<div id="wrap-inner">
	<div id="khach-hang">
		<h3>Customer information</h3>
		<p>
			<span class="info">Customer: </span>
			{{$info['name']}}
		</p>
		<p>
			<span class="info">Email: </span>
			{{$info['email']}}
		</p>
		<p>
			<span class="info">Phone: </span>
			{{$info['phone']}}
		</p>
		<p>
			<span class="info">Message: </span>
			{{$info['message']}}
		</p>
	</div>						
	<div id="hoa-don">
		{{-- <h3>Hóa đơn mua hàng</h3>							
		<table class="table-bordered table-responsive">
			<tr class="bold">
				<td width="30%"></td>
				<td width="25%"></td>
				<td width="20%"></td>
				<td width="15%"></td>
			</tr>
			@foreach ($cart as $item)
				<tr>
					<td>{{$item->name}}</td>
					<td class="price">{{number_format($item->price, 2, '.', '')}} VND</td>
					<td>{{$item->qty}}</td>
					<td class="price">{{number_format($item->price*$item->qty, 2, '.', '')}} VNĐ</td>
				</tr>
			@endforeach
			
			
			<tr>
				<td colspan="3">Загальні гроші:</td>
				<td class="total-price">{{$total}} VNĐ</td>
			</tr>
		</table> --}}
	</div>
	<div id="xac-nhan">
		<br>
		<p align="justify">
			<b></b><br />
			• .<br/>
			• .<br/>
			<b><br /></b>
		</p>
	</div>
</div>					
				
