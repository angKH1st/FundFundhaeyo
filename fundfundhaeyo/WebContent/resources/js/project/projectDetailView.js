function alertToLogin() {
	var isConfirmed = confirm("로그인 후 이용가능합니다. 로그인하시겠습니까?");

	if (isConfirmed) {
		location.href = "/fund/moveToLogin.me";
	}
}

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
					var cnt = 0;

					// 모든 찜 아이콘을 순회하며, 클릭한 아이콘과 같은 상품의 찜 아이콘 상태를 변경
					$('.likes').each(function() {
						var $like = $(this);
						if ($like.data("projectno") === projectNo) {
							$like.data('likes', newLikes);
							$like.attr('data-likes', newLikes); // DOM 요소의 'data-likes' 속성을 업데이트
							$like.find('.fa-heart').toggleClass('liked', newLikes);

							if ($this.find('.fa-heart').hasClass('liked')) {
								cnt = 1;
							} else {
								cnt = -1;
							}
						}
					});

					var target = $(".project_detail_top_info_row2_btn1_num");

					target.text(parseInt(target.text(), 10) + cnt);
				} else {
					alert('찜 상태를 변경하는데 실패했습니다.');
				}
			},
			error: function() {
				alert('찜 상태를 변경하는데 실패했습니다.');
			}
		});
	});

	var totalSlides = $('.slide').length;

	$('.slide').not(':eq(0)').hide();
	$('.dot').eq(0).addClass('active');

	var currentSlide = 0;

	function changeSlide() {
		$('.slide').eq(currentSlide).hide();
		$('.dot').eq(currentSlide).removeClass('active');
		currentSlide = (currentSlide + 1) % totalSlides;
		$('.slide').eq(currentSlide).show();
		$('.dot').eq(currentSlide).addClass('active');
	}

	$('.prev').on('click', function() {
		clearInterval(autoChange);
		$('.slide').eq(currentSlide).hide();
		$('.dot').eq(currentSlide).removeClass('active');
		currentSlide = (currentSlide - 1 + totalSlides) % totalSlides;
		$('.slide').eq(currentSlide).show();
		$('.dot').eq(currentSlide).addClass('active');
		autoChange = setInterval(changeSlide, 5000);
	});

	$('.next').on('click', function() {
		clearInterval(autoChange);
		changeSlide();
		autoChange = setInterval(changeSlide, 5000);
	});

	var autoChange = setInterval(changeSlide, 5000);

});