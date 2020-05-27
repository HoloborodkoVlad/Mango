@extends('backend.master')
@section('title','Add customer')
@section('main')
		
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Customer</h1>
			</div>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-xs-12 col-md-12 col-lg-12">
				
				<div class="panel panel-primary">
					<div class="panel-heading">Додати клієнта</div>
					<div class="panel-body">
						@include('errors.note')
						<form method="post" enctype="multipart/form-data">
							<div class="row" style="margin-bottom:40px">
								<div class="col-xs-8">
									<div class="form-group" >
										<label>Ім'я клієнта</label>
										<input required type="text" name="cus_name" class="form-control"  placeholder="full name">
									</div>

									<div class="form-group" >
										<label>Стать</label>
										<select required name="gender" class="form-control">
											<option value="Nam" 		 >Чоловіча</option>
											<option value="Nữ"  		 >Жіноча</option>
					                    </select>
									</div>	

									<div class="form-group" >
										<label>електронна пошта клієнта</label>
										<input required type="email" name="email" class="form-control" value="@gmail.com">
									</div>
									<div class="form-group" >
										<label>Адреса</label>
										<input required type="text" name="address" class="form-control" placeholder="district...">
									</div>
									<div class="form-group" >
										<label>Телефонний номер</label>
										<input required type="tel" name="phone_number" class="form-control" value="0123456789">
									</div>
									<div class="form-group" >
										<label>Примітка</label>
										<input required type="text" name="note" class="form-control" placeholder="text">
									</div>
									
									<input type="submit" name="submit" value="Add" class="btn btn-primary col-sm-6">
									<a href="{{asset('admin/customer')}}" class="btn btn-danger col-sm-6">Скасувати</a>
								</div>
							</div>
							{{csrf_field()}}
						</form>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
		</div><!--/.row-->
	</div>	<!--/.main-->

@stop