/*
$(document).ready(function() {
	let defType = $("#defType").val();
	$.ajax({
		url: '/fund/memberList.no',
		type: 'GET',
		data: {
			defType: defType
		},
		success: function(list) {
			$this.data('likes', likes);
			$this.attr('data-likes', likes);  // DOM 요소의 'data-likes' 속성을 업데이트
			$this.find('.fa-heart').toggleClass('liked', likes);
		}
	});
})
*/