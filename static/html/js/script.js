$(document).ready(function(){

	// open/close project cards
	$('[data-project-card]').each(function(){
		var $card = $(this);
		$('[data-open-card]',$card).click(function(){
			if ($card.hasClass('open')) {
				$card.removeClass('open');
			} else {
				$('.card.open').removeClass('open');
				$card.addClass('open');
			}
		});
	});

	// contact form fake logic
	$('[data-contact-form]').bind('submit',function(event){
		event.preventDefault();
		var error = false,
			$form = $(this).closest('form');
		$('.error',$form).removeClass('error');
		$('[data-required]').each(function(){
			if ($(this).val()==='') {
				error = true;
				$(this).closest('div').addClass('error');
			}
		});

		if (!error) {
			$('.container').removeClass('show-form').addClass('show-success');
		}
	});

	// contact form - send new message
	$('[data-new-message]').click(function(event){
		event.preventDefault();
		$('.container').removeClass('show-success').addClass('show-form');
		$('form')[0].reset();
	});
});
