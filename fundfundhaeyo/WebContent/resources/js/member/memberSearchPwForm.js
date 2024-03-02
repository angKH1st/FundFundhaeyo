function searchPwMember() {
	var $idSearch = $("#userId");
	var $nameSearch = $("#userName");
	var $emailSearch = $("#userEmail");

	$.ajax({
		url: "searchPw.me",
		data: {
			checkId: $idSearch.val(),
			checkName: $nameSearch.val(),
			checkEmail: $emailSearch.val()
		},
		type: "post",
		success: function(pw) {
			if (pw !== "") {
				$(".search-id-pw-input-container").css("visibility", "hidden");
				$(".search-id-pw-btn-wrap").css("display", "none");

				let value = "<div>당신의 비밀번호는 " + pw + "입니다.</div>";

				$(".search-id-pw-input-container").html(value);
				$(".search-id-pw-input-container").css("visibility", "visible");
			} else {
				alert('입력하신 정보와 맞는 회원이 없습니다.');
			}
		}, error: function() {
			alert('오류가 발생했습니다.');
		}
	})
}	