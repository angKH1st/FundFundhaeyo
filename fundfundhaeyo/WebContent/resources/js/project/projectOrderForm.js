$(document).ready(function() {
	$('input[name="group1"]').change(function() {
		var price = $(this).val();
		var formattedPrice = parseInt(price).toLocaleString();
		$('#giftPrice').text(formattedPrice + ' 원');
		$('#totalPrice').text(formattedPrice + ' 원');
	});

	$('.project_order_content_col3_row3_title input[type="checkbox"]').change(function() {
		if (this.checked) {
			$('.project_order_content_col3_row4 button').prop('disabled', false).addClass('blueBtn');
		} else {
			$('.project_order_content_col3_row4 button').prop('disabled', true).removeClass('blueBtn');
		}
	});
});