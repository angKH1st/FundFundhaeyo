$(function() {
	$(".pj").click(function() {
		if ($(this).next().css("display") == "none") {
			$(this).siblings(".content").slideUp();
			$(this).next().slideDown();
		} else {
			$(this).next().slideUp();
		}
	});
});