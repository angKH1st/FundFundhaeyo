function searchIdMember() {
	var $nameSearch = $("#userName");
	var $emailSearch = $("#userEmail");

	$.ajax({
		url: "searchId.me",
		data: {
			checkName: $nameSearch.val(),
			checkEmail: $emailSearch.val()
		},
		type: "post",
		success: function(id) {
			if (id !== "") {
				$(".search-id-pw-input-container").css("visibility", "hidden"); // $()를 공간을 남겨두고 안보이게 해줌 / 이름 이메일 숨김
				$(".search-id-pw-btn-wrap").css("display", "none"); // 공간까지 없애고 안보이게 해줌 / id찾기 버튼 숨김

				let value = "<br><br><div class=\"br5 brlg\">&nbsp; <i class=\"fa-regular fa-envelope\"></i>&nbsp;당신의 아이디는 <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class=\"percentage\">" + id + "</span> 입니다.💜</div>"
							+ "<br><br><br><div style=\"text-align:center;\"><button type=\"button\" onclick=location.href=\"/fund/moveToLogin.me\" class=\"blueBtn\">로그인으로</button></div>";

				$(".search-id-pw-input-container").html(value);
				$(".search-id-pw-input-container").css("visibility", "visible"); // 반대로 다시 보이게 해줌
			} else {
				alert('입력하신 정보와 맞는 회원이 없습니다.');
			}
		}, error: function() {
			alert('오류가 발생했습니다.');
		}
	})
}