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
			$form = $(this).closest('form'),
			formData = window.serializeObject($form);

		$form.find('.error').removeClass('error').find('.error-message').remove();

		formData['mail_method'] = 'send';
		$.ajax({
			url: '/',
			data: formData,
			type: 'POST',
			success: function(data){
				// console.log(data);
				if (data.success) {
					$form[0].reset();
					$('.container').removeClass('show-form').addClass('show-success');
				} else {
					$form.find('div.'+data.error).addClass('error').append('<div class="error-message">'+data.msg+'</div>');
				}
			}

		});
	});

	// contact form - send new message
	$('[data-new-message]').click(function(event){
		event.preventDefault();
		$('.container').removeClass('show-success').addClass('show-form');
		$('form')[0].reset();
	});
});

(function () {
	if (window.serializeObject === undefined) {
		window.serializeObject = function ($form) {
			var o = {};
			$form.find('input[type="hidden"], input[type="text"], input[type="email"], input[type="password"], input[type="checkbox"]:checked, input[type="radio"]:checked, select, textarea').each(function () {
				if ($(this).attr('type') === 'hidden') { //if checkbox is checked do not take the hidden field
					var $parent = $(this).parent();
					var $chb = $parent.find('input[type="checkbox"][name="' + this.name.replace(/\[/g, '\[').replace(/\]/g, '\]') + '"]');
					if ($chb !== null) {
						if ($chb.prop('checked')) {
							return;
						}
					}
				}
				if (this.name === null || this.name === undefined || this.name === '') {
					return;
				}
				var elemValue = null;
				if ($(this).is('select')) {
					elemValue = $(this).find('option:selected').val();
				} else {
					elemValue = this.value;
				}
				if (o[this.name] !== undefined) {
					if (!o[this.name].push) {
						o[this.name] = [o[this.name]];
					}
					o[this.name].push(elemValue || '');
				} else {
					o[this.name] = elemValue || '';
				}
			});
			return o;
		};
	}
}());