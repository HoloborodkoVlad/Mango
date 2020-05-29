@extends('master')
@section('content')

	<div class="inner-header">
		<div class="container">
			<div class="pull-left">
				<h6 class="inner-title">Контакти</h6>
			</div>
			<div class="pull-right">
				<div class="beta-breadcrumb font-large">
					<a href="{{route('trang-chu')}}">ГОЛОВНА</a> / <span>Контакти</span>
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
		<div id="content" class="space-top-none">
			
			<div class="space50">&nbsp;</div>
			<div class="row">
				<div class="col-sm-8">
					<h2>Введіть свій контакт </h2>
					<div class="space20">&nbsp;</div>
					{{-- <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit ani m id est laborum.</p> --}}
					<div class="space20">&nbsp;</div>
					<form action="{{route('mail')}}" method="post" class="contact-form" >	
						<div class="form-block">
							<input name="name" type="text" placeholder="Твоє ім'я" required="required" class="form-control">
						</div>
						<div class="form-block">
							<input name="email" type="email" placeholder="Ваша електронна адреса" required="required" class="form-control">
						</div>
						<div class="form-block">
							<input name="phone" type="tel" placeholder="Телефон" required="required" class="form-control">
						</div>
						<div class="form-block">
							<textarea name="message" placeholder="Ваше повідомлення" class="form-control"></textarea>
						</div>
						<div class="form-block">
							<button type="submit" class="beta-btn primary">Відправити повідомлення <i class="fa fa-chevron-right"></i></button>
						</div>
						{{csrf_field()}}
					</form>
				</div>
				<div class="col-sm-4">
					<h2>Звертайтесь до нас</h2>
					<div class="space20">&nbsp;</div>

					<h6 class="contact-title">Адреса</h6>
					<p>
						Україна,<br>
							Київ <br>
						
					</p>
					<div class="space20">&nbsp;</div>
					<h6 class="contact-title">[РЕКЛАМНИЙ ПЕРЕКЛАД]</h6>
					<p>
					Ви любите легкі романи. <br>
У вас є можливість вільно перекладати японську, яка багата в'єтнамською. <br>
						{{-- <a href="mailto:teftv81@gmail.com">teftv81@gmail.com</a> --}}
					</p>
					<div class="space20">&nbsp;</div>
					<h6 class="contact-title"> Будь ласка, заповніть текстове поле, щоб ми могли з вами зв’язатися</h6>
					<p>
					Ми завжди шукаємо талановитих людей, щоб <br>
                         приєднуйтесь до нашої команди. <br>
						{{-- <a href="teftv81@gmail.com">teftv81@gmail.com</a> --}}
					</p>
				</div>
			</div>
			
		</div> <!-- #content -->
		
	</div> <!-- .container -->
	<div class="beta-map">
		
		{{-- <div class="abs-fullwidth beta-map wow flipInX"><iframe src="https://www.google.com/maps/d/u/0/embed?mid=1lv-JlDZzJnR0BhW2w7F9GSu1ORw&hl=en&client=firefox&ie=UTF8&oe=UTF8&msa=0&ll=50.438094525292456%2C30.515642301574715&spn=0.006833%2C0.00751&z=15&output=embed" ></iframe></div> --}}
		<div class="abs-fullwidth beta-map wow flipInX"><iframe src="https://www.google.com/maps/d/u/0/embed?mid=1lv-JlDZzJnR0BhW2w7F9GSu1ORw&hl=en&client=firefox&ie=UTF8&oe=UTF8&msa=0&ll=50.438094525292456%2C30.515642301574715&spn=0.006833%2C0.00751&z=15&output=embed" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe></div>
	</div>

@endsection