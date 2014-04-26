var base_url = location.host+"/hubin/";

//Load Jquery Plugin
	$.get('assets/js/bootstrap.min.js');
	$.get('assets/js/jquery.isotope.min.js');
	// $.get('assets/js/jquery.imagesloaded.js');
	// $.get('assets/js/jquery.cslider.js');
	// $.get('assets/js/slider.js');
	// /*What Client Say*/
	// $.get('assets/js/carousel.js');
	// /*Client Slider*/
	$.get('assets/js/flexslider.js');
	$.get('assets/js/jquery.fancybox.js');
	$.get('assets/js/excanvas.js');
	// /*Flot*/
	// $.get('assets/js/jquery.flot.js');
	// $.get('assets/js/jquery.flot.pie.min.js');
	// $.get('assets/js/jquery.flot.stack.js');
	// $.get('assets/js/jquery.flot.resize.min.js');

	$.get('assets/js/custom.js');
	// $.get('assets/js/loading/pace.min.js');
	// $.get('assets/eiji.js');

/* the below code is to override back button to get the ajax content without reload*/
$(window).bind('popstate', function() {
	$.ajax({url:location.pathname+'?x=1',success: function(data){
		$('#body').html(data);
	}});
});

/*// Textarea Elastic
$(document).on('click',document,function(){

});*/

// AJAX Reload
$(function(){
	//Anchor
	$(document).on('click','[x] a,[x]',function(e){
		$url = $(this).attr('href');
		$target = $(this).attr('target');
		//Check Target
		if($target){
			$url = $url+'?x='+$target;
			$target = '#'+$target;
		}else{
			$url = $url+'?x=true';
			$target = '#body';
		}
		$.ajax({
			url:$url,type:'post',
				beforeSend:function(){
					$('[loading]').fadeIn(100);
				},
				success: function(a){
					$('[loading]').fadeOut(100);
					$($target).html(a);
			}
		});
		return false;
	 });
});
$(function(){
	//Form
	$.get('assets/js/form.js',function(){
		$(document).on('submit','form',function(){
			$url = $(this).attr('action');
			$target = $(this).attr('target');
			if(!$url || $url==""){
				$url = location.pathname;
			}
			if(!$target || $target==""){
				$url += "?x=1";
				$target="#body";
			}else{
				$url = $url+"?x="+$target;
				$target = "#"+$target;
			}
			$(this).ajaxSubmit({
				url:$url,
				beforeSend:function(){				
					$('[loading]').fadeIn(100);
				},
				success:function(a){
					$('[loading]').fadeOut(100);
					$($target).html(a)
				}
			});
			return false;
		});
	});
});