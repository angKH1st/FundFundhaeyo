$(document).ready(function(){
	$(".mypage_left_content > ul > li > a").click(function() {
	    $(this).next().slideToggle('slow');
	    $(this).children("i").toggleClass("fas fa-angle-up fas fa-angle-down");
	});
});