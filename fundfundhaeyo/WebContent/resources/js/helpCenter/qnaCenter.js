$(function() {
	$(".qna_list_area>tbody>tr").click(function() {
		location.href = '/fund/qnaDetail.hp?qNo=' + $(this).children().eq(0).text();
	});
});

$(document).ready(function() {
	$('.no-border').on('click', function(event) {
		event.preventDefault();
	});
});

function alertToLogin() {
	var isConfirmed = confirm("로그인 후 이용가능합니다. 로그인하시겠습니까?");

	if (isConfirmed) {
		location.href = "/fund/moveToLogin.me";
	}
}