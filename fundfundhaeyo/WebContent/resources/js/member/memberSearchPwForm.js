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

				let value = "<div class=\"br5 brlg\">&nbsp; <i class=\"fas fa-key\"></i>&nbsp;당신의 비밀번호는 <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class=\"percentage\">" + pw + "</span> 입니다.💜</div>"
							+ "<br><br><br><div style=\"text-align:center;\"><button type=\"button\" onclick=location.href=\"/fund/moveToLogin.me\" class=\"blueBtn\">로그인으로</button></div>";

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