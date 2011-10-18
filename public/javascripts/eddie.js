$(document).ready(function(){
	function HideAll(){
		$('#interest').children().next().hide();
		$('#education').children().next().hide();
		$('.jobs').hide();
	}
	HideAll();
	$('#interest').click(function() {
		HideAll();
		$(this).children().next().fadeIn('slow',function() {
                        
                });
	});

	$('#education').click(function() {
		HideAll();
		$(this).children().next().fadeIn('slow',function() {
                        
                });
	});

	$('#jobs').click(function() {
		HideAll();
		$('.jobs').fadeIn('slow',function() {
                        
                });
	});
});
