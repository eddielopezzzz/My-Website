$(document).ready(function(){
	function HideAll(){
		$('#interest').children().next().hide();
		$('#education').children().next().hide();
		$('.jobs').hide();
	}
	HideAll();
	$('#interest').mouseover(function() {
		HideAll();
		$(this).children().next().fadeIn('slow',function() {
                        
                });
	});

	$('#education').mouseover(function() {
		HideAll();
		$(this).children().next().fadeIn('slow',function() {
                        
                });
	});

	$('#jobs').mouseover(function() {
		HideAll();
		$('.jobs').fadeIn('slow',function() {
                        
                });
	});
});
