@extends('master')
@section('content')
	<div class="inner-header">
		<div class="container">
			<div class="pull-left">
				<h6 class="inner-title">Інформація</h6>
			</div>
			<div class="pull-right">
				<div class="beta-breadcrumb font-large">
					<a href="{{route('trang-chu')}}">ГОЛОВНА</a> / <span>Інформація</span>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<div class="container">
		<div id="content">
			<div class="our-history">
				<h2 class="text-center wow fadeInDown">НОВИНИ</h2>
				<div class="space35">&nbsp;</div>

				<div class="history-slider">
					<div class="history-navigation center">
						{{-- <a data-slide-index="0" href="blog_with_2sidebars_type_e.html" class="circle"><span class="auto-center">2003</span></a>
						<a data-slide-index="1" href="blog_with_2sidebars_type_e.html" class="circle"><span class="auto-center">2004</span></a>
						<a data-slide-index="2" href="blog_with_2sidebars_type_e.html" class="circle"><span class="auto-center">2005</span></a>
						<a data-slide-index="3" href="blog_with_2sidebars_type_e.html" class="circle"><span class="auto-center">2007</span></a>
						<a data-slide-index="4" href="blog_with_2sidebars_type_e.html" class="circle"><span class="auto-center">2009</span></a>
						<a data-slide-index="5" href="blog_with_2sidebars_type_e.html" class="circle"><span class="auto-center">2011</span></a> --}}
						@foreach ($news as $new)
							<a data-slide-index="{{$new->new_id}}" href="#" class="circle"><span class="auto-center">{{$new->new_id}}</span></a>
						@endforeach
						
					</div>

					<div class="history-slides">
						@foreach ($news as $new)
						<div> 
							<div class="row">
							<div class="col-sm-5">
								{{-- <img src="source/assets/dest/images/history.jpg" alt="" height="250px"> --}}
								<img src="source/image/new/{{$new->new_image}}" alt="" height="250px">>
							</div>
							<div class="col-sm-7">
								<h5 class="other-title">{{$new->title}} </h5>
								<p>
									{{$new->created_at}} <br />
									{{-- {{$new->updated_at}} <br /> --}}
									
								</p>
								<div class="space20">&nbsp;</div>
								{{-- <p>{{$new->content}}</p> --}}
								<p>{!!$new->content!!}</p>
							</div>
							</div> 
						</div>
						@endforeach
						{{-- <div> 
							<div class="row">
							<div class="col-sm-5">
								<img src="source/assets/dest/images/history.jpg" alt="">
							</div>
							<div class="col-sm-7">
								<h5 class="other-title">Web Design</h5>
								<p>
									Suite 127 / 267 – 277 Brussel St,<br />
									62 Croydon, NYC<br />
									New York
								</p>
								<div class="space20">&nbsp;</div>
								<p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem.</p>
							</div>
							</div> 
						</div>
						<div> 
							<div class="row">
							<div class="col-sm-5">
								<img src="source/assets/dest/images/history.jpg" alt="">
							</div>
							<div class="col-sm-7">
								<h5 class="other-title">Web Development</h5>
								<p>
									Suite 127 / 267 – 277 Brussel St,<br />
									62 Croydon, NYC<br />
									New York
								</p>
								<div class="space20">&nbsp;</div>
								<p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem.</p>
							</div>
							</div> 
						</div>
						<div> 
							<div class="row">
							<div class="col-sm-5">
								<img src="source/assets/dest/images/history.jpg" alt="">
							</div>
							<div class="col-sm-7">
								<h5 class="other-title">Photoshop</h5>
								<p>
									Suite 127 / 267 – 277 Brussel St,<br />
									62 Croydon, NYC<br />
									New York
								</p>
								<div class="space20">&nbsp;</div>
								<p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem.</p>
							</div>
							</div> 
						</div>
						<div> 
							<div class="row">
							<div class="col-sm-5">
								<img src="source/assets/dest/images/history.jpg" alt="">
							</div>
							<div class="col-sm-7">
								<h5 class="other-title">Skill</h5>
								<p>
									Suite 127 / 267 – 277 Brussel St,<br />
									62 Croydon, NYC<br />
									New York
								</p>
								<div class="space20">&nbsp;</div>
								<p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem.</p>
							</div>
							</div> 
						</div>
						<div> 
							<div class="row">
							<div class="col-sm-5">
								<img src="source/assets/dest/images/history.jpg" alt="">
							</div>
							<div class="col-sm-7">
								<h5 class="other-title">Project.</h5>
								<p>
									Suite 127 / 267 – 277 Brussel St,<br />
									62 Croydon, NYC<br />
									New York
								</p>
								<div class="space20">&nbsp;</div>
								<p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem.</p>
							</div>
							</div> 
						</div>
						<div> 
							<div class="row">
							<div class="col-sm-5">
								<img src="source/assets/dest/images/history.jpg" alt="">
							</div>
							<div class="col-sm-7">
								<h5 class="other-title">Coffe</h5>
								<p>
									Suite 127 / 267 – 277 Brussel St,<br />
									62 Croydon, NYC<br />
									New York
								</p>
								<div class="space20">&nbsp;</div>
								<p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem.</p>
							</div>
							</div> 
						</div> --}}
						
					</div>
				</div>
			</div>

			<div class="space50">&nbsp;</div>
			<hr />
			<div class="space50">&nbsp;</div>
			<h2 class="text-center wow fadeInDown">Наша пристрасть до того, що ми робимо, перетворюється на наші послуги</h2>
			<div class="space20">&nbsp;</div>
			<p class="text-center wow fadeInLeft">Тим, що не вживає мінімуму, не вимагає напруги .<br /> . </p>
			<div class="space35">&nbsp;</div>

			<div class="row">
				<div class="col-sm-2 col-sm-push-2">
					<div class="beta-counter">
						<p class="beta-counter-icon"><i class="fa fa-user"></i></p>
						<p class="beta-counter-value timer numbers" data-to="{{count($user)}}" data-speed="1000">{{count($user)}}</p>
						<p class="beta-counter-title">Задоволені клієнти</p>
					</div>
				</div>

				<div class="col-sm-2 col-sm-push-2">
					<div class="beta-counter">
						<p class="beta-counter-icon"><i class="fa fa-picture-o"></i></p>
						<p class="beta-counter-value timer numbers" data-to="{{count($pro)}}" data-speed="1000">{{count($pro)}}</p>
						<p class="beta-counter-title">Продукції</p>
					</div>
				</div>

				<div class="col-sm-2 col-sm-push-2">
					<div class="beta-counter">
						<p class="beta-counter-icon"><i class="fa fa-clock-o"></i></p>
						<p class="beta-counter-value timer numbers" data-to="258934" data-speed="1000">258934</p>
						<p class="beta-counter-title">Годин підтримки</p>
					</div>
				</div>

				<div class="col-sm-2 col-sm-push-2">
					<div class="beta-counter">
						<p class="beta-counter-icon"><i class="fa fa-pencil"></i></p>
						<p class="beta-counter-value timer numbers" data-to="{{count($com)}}" data-speed="1000">{{count($com)}}</p>
						<p class="beta-counter-title">Коментарів</p>
					</div>
				</div>
			</div> <!-- .beta-counter block end -->

			<div class="space50">&nbsp;</div>
			<hr />
			<div class="space50">&nbsp;</div>

			<h2 class="text-center wow fadeInDownwow fadeInDown">Засновники</h2>
			<div class="space20">&nbsp;</div>
			{{-- <h5 class="text-center other-title wow fadeInLeft">Засновники</h5> --}}
			{{-- <p class="text-center wow fadeInRight">Nemo enims voluptatem quia volupas sit aspe aut odit aut fugit, sed quia <br />consequuntur magni dolores.</p> --}}
			<div class="space20">&nbsp;</div>
			<div class="row">

				<div class="col-sm-12 wow fadeInLeft">
					<div class="beta-person media">
					<div class="beta-person beta-person-full">
						<div class="col-sm-5">
						<img class="pull-left" src="source/assets/dest/images/pig.jpg" alt="" width="75%">
						</div>
						<div class="media-body beta-person-body col-sm-7">
							<h5>Курсова робота ТВ-81 Голобородько,Євтушенко,Романюк (©) 2020</h5>
							<p class="font-large">laravel</p>
							<p>В даний час навчаються в KPI.</p>
							
						</div>
					</div>
				</div>
				</div>

				{{-- <div class="col-sm-6 wow fadeInRight">
					<div class="beta-person media ">
					<div class="beta-person beta-person-full">
						<img class="pull-left" src="source/assets/dest/images/person3.jpg" alt="">
					
						<div class="media-body beta-person-body">
							<h5>Denis</h5>
							<p class="font-large">Founder</p>
							<p>.</p>
							<a href="single_type_gallery.html">View projects <i class="fa fa-chevron-right"></i></a>
						</div>
					</div>
					</div>
				</div> --}}

			</div>
			
			<div class="space60">&nbsp;</div>
			<h5 class="text-center other-title wow fadeInDown">Найкращі з професіоналів</h5>
			<p class="text-center wow fadeInUp"><br /></p>
			<div class="space20">&nbsp;</div>
			<div class="row">

				{{-- <div class="col-sm-3">
					<div class="beta-person beta-person-full">
				<div class="bets-img-hover">
						<img src="source/assets/dest/images/person1.jpg" alt="">
				</div>
						<div class="beta-person-body">
							<h5>Vlad </h5>
							<p class="font-large">Web developer</p>
							<p>Nemo enims voluptatem quia volupas sit aspe aut odit aut fugit, sed quia consequuntur magni dolores.</p>
							<a href="single_type_gallery.html">View projects <i class="fa fa-chevron-right"></i></a>
						</div>
					</div>
				</div>

				<div class="col-sm-3">
					<div class="beta-person beta-person-full">
					<div class="bets-img-hover">
						<img src="source/assets/dest/images/person2.jpg" alt="">
					</div>
						<div class="beta-person-body">
							<h5>Dima</h5>
							<p class="font-large">Web developer</p>
							<p>Nemo enims voluptatem quia volupas sit aspe aut odit aut fugit, sed quia consequuntur magni dolores.</p>
							<a href="single_type_gallery.html">View projects <i class="fa fa-chevron-right"></i></a>
						</div>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="beta-person beta-person-full">
					<div class="bets-img-hover">
						<img src="source/assets/dest/images/person3.jpg" alt="">
					</div>
						<div class="beta-person-body">
							<h5>Denis</h5>
							<p class="font-large">Web developer</p>
							<p>Nemo enims voluptatem quia volupas sit aspe aut odit aut fugit, sed quia consequuntur magni dolores.</p>
							<a href="single_type_gallery.html">View projects <i class="fa fa-chevron-right"></i></a>
						</div>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="beta-person beta-person-full">
					<div class="bets-img-hover">	
						<img src="source/assets/dest/images/person4.jpg" alt="">
					</div>
						<div class="beta-person-body">
							<h5>David Black</h5>
							<p class="font-large">Web developer</p>
							<p>Nemo enims voluptatem quia volupas sit aspe aut odit aut fugit, sed quia consequuntur magni dolores.</p>
							<a href="single_type_gallery.html">View projects <i class="fa fa-chevron-right"></i></a>
						</div>
					</div>
				</div> --}}

			</div>
		</div> <!-- #content -->
	</div> <!-- .container -->

<!--customjs-->
<script>
	/* <![CDATA[ */
	jQuery(document).ready(function($) {
		'use strict';

		
		try {		
			if ($(".animated")[0]) {
				$('.animated').css('opacity', '0');
			}
			$('.triggerAnimation').waypoint(function() {
				var animation = $(this).attr('data-animate');
				$(this).css('opacity', '');
				$(this).addClass("animated " + animation);

			},
			{
				offset: '80%',
				triggerOnce: true
			}
			);
		} catch(err) {

		}
		
		var wow = new WOW(
		{
    boxClass:     'wow',      // animated element css class (default is wow)
    animateClass: 'animated', // animation css class (default is animated)
    offset:       150,          // distance to the element when triggering the animation (default is 0)
    mobile:       false        // trigger animations on mobile devices (true is default)
}
);
		wow.init();	 
// NUMBERS COUNTER START
$('.numbers').data('countToOptions', {
	formatter: function(value, options) {
		return value.toFixed(options.decimals).replace(/\B(?=(?:\d{3})+(?!\d))/g, ',');
	}
});

                // start timer
                $('.timer').each(count);

                function count(options) {
                	var $this = $(this);
                	options = $.extend({}, options || {}, $this.data('countToOptions') || {});
                	$this.countTo(options);
                } // NUMBERS COUNTER END 

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

	/* ]]> */
</script>
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

@endsection