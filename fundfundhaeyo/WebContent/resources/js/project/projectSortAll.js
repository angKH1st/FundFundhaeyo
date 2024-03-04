$('.option').each(function() {
	$(this).on('click', function() {
		$('#selectedOption').text($(this).text());
		$('#optionsContainer').hide();

		let option;

		switch($(this).text()){
			case '전체보기' : window.location.href = "/fund/all.pr"; break;
			case '50% 이하' : option = 50; break;
			case '50%~100%' : option = 150; break;
			case '100% 이상' : option = 100; break;
		}
		
		if (option) {
			window.location.href = "/fund/all.pr?option=" + option;
		}
	});
});

$(document).on('click', function(event) {
	if (!$(event.target).closest('#customSelect').length) {
		$('#optionsContainer').hide();
	}
});

$('#customSelect').on('click', function() {
	$('#optionsContainer').toggle();
});

$(document).ready(function() {
	// 페이지가 로드되었을 때 각 프로젝트에 대한 '좋아요' 상태를 조회
	$('.likes').each(function() {
		var $this = $(this);
		var projectNo = $this.data('projectno');

		$.ajax({
			url: '/fund/checkLikes.me',
			type: 'GET',
			data: {
				projectNo: projectNo
			},
			success: function(likes) {
				$this.data('likes', likes);
				$this.attr('data-likes', likes);  // DOM 요소의 'data-likes' 속성을 업데이트
				$this.find('.fa-heart').toggleClass('liked', likes);
			}
		});
	});

	// '좋아요' 버튼을 클릭했을 때 '좋아요' 상태를 업데이트
	$(document).on("click", ".likes", function() {
		var $this = $(this);
		var projectNo = $this.data("projectno");
		var likes = $this.data("likes");

		$.ajax({
			url: "/fund/updateLikes.me",
			type: "POST",
			data: {
				projectNo: projectNo,
				likes: likes
			},
			success: function(result) {
				if (result > 0) {
					var newLikes = !likes;
					// 모든 찜 아이콘을 순회하며, 클릭한 아이콘과 같은 상품의 찜 아이콘 상태를 변경
					$('.likes').each(function() {
						var $like = $(this);
						if ($like.data("projectno") === projectNo) {
							$like.data('likes', newLikes);
							$like.attr('data-likes', newLikes); // DOM 요소의 'data-likes' 속성을 업데이트
							$like.find('.fa-heart').toggleClass('liked', newLikes);
						}
					});
				} else {
					alert('찜 상태를 변경하는데 실패했습니다.');
				}
			},
			error: function() {
				alert('찜 상태를 변경하는데 실패했습니다.');
			}
		});
	});
});