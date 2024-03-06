var isValid = { // 유효성 검사 결과를 추적하는 객체
	pjCategory: false,
	pjTitle: false,
	pjOverview: false,
	pjTag: false,
	pjPrice: false,
	pjContent: false,
	pjPrice: false,
};

function checkFormCompleteness() {
	var allClear = Object.values(isValid).every(Boolean);

	if (allClear) {
		$('.project_enroll_form_btn2').prop('disabled', false);
		$('.project_enroll_form_btn2').css('background-color', 'skyblue');
	} else {
		$('.project_enroll_form_btn2').prop('disabled', true);
		$('.project_enroll_form_btn2').css('background-color', 'lightgray');
	}
}

$(document).ready(function() {
	checkFormCompleteness();
	
	$('.select-box').click(function(event) {
		event.stopPropagation();
		$('.select-list').slideToggle('fast');
	});

	$('.select-list li').click(function() {
		var selected = $(this).text();
		$('.select-button').text(selected)
	});

	$(document).click(function() {
		$('.select-list').slideUp('fast');
	});

	/* 카테고리 검사 */
	$('.select-box').on('click', 'li', function() {
		$('.select-box').removeClass('redBorder').addClass('blueBorder');
		isValid.pjCategory = true;
		
		checkFormCompleteness();
	});
	$('.select-box').on('click', function() {
		if ($('.select-button').text() === '카테고리를 선택해주세요') {
			$('.select-box').removeClass('blueBorder').addClass('redBorder');
			isValid.pjCategory = false;
		}
		
		checkFormCompleteness();
	});

	/* 제목 검사 */
	$('input[name="pjTitle"]').on('blur', function() {
		var input = $(this).val();
		var reg = /^[a-zA-Z0-9가-힣!@#$%^&*()_+|<>?:{}\s]{1,20}$/;
		if (!reg.test(input)) {
			$(this).css('border', '1px solid red')
			$(this).parent().siblings().children('.project_enroll_inspection').text("한글, 숫자, 특수문자 조합 20자 이하로 입력해주세요.");
			isValid.pjTitle = false;
		} else {
			$(this).css('border', '1px solid blue');
			$(this).parent().siblings().children('.project_enroll_inspection').text("");
			isValid.pjTitle = true;
		}
		
		checkFormCompleteness();
	});

	/* 요약 검사 */
	$('input[name="pjOverview"]').on('blur', function() {
		var input = $(this).val();
		var reg = /^[a-zA-Z0-9가-힣!@#$%^&*()_+|<>?:{}\s]{1,20}$/;
		if (!reg.test(input)) {
			$(this).css('border', '1px solid red');
			$(this).parent().siblings().children('.project_enroll_inspection').text("한글, 숫자, 특수문자 조합 20자 이하로 입력해주세요.");
			isValid.pjOverview = false;
		} else {
			$(this).css('border', '1px solid blue');
			$(this).parent().siblings().children('.project_enroll_inspection').text("");
			isValid.pjOverview = true;
		}
		
		checkFormCompleteness();
	});

	/* 태그 검사 */
	$('input[name="pjTag"]').on('blur', function() {
		var input = $(this).val();
		var reg = /^#[a-zA-Z0-9가-힣!@#$%^&*()_+|<>?:{}]{1,14}$/;
		if (!reg.test(input)) {
			$(this).css('border', '1px solid red');
			$(this).parent().siblings().children('.project_enroll_inspection').text("#으로 시작, 한글, 숫자, 특수문자 조합 15자 이하로 입력해주세요.");
			isValid.pjTag = false;
		} else {
			$(this).css('border', '1px solid blue');
			$(this).parent().siblings().children('.project_enroll_inspection').text("");
			isValid.pjTag = true;
		}
		
		checkFormCompleteness();
	});

	/* 가격 검사 */
	$('input[name="pjPrice"]').on('blur', function() {
		var input = $(this).val();
		if (input < 100000) {
			$(this).css('border', '1px solid red');
			$(this).parent().siblings().children('.project_enroll_inspection').text("목표금액은 최소 100,000 이상이어야 합니다.");
			isValid.pjPrice = false;
		} else {
			$(this).css('border', '1px solid blue');
			$(this).parent().siblings().children('.project_enroll_inspection').text("");
			isValid.pjPrice = true;
		}
		
		checkFormCompleteness();
	});

	/* 내용 검사 */
	$('textarea[name="pjContent"]').on('blur', function() {
		var input = $(this).val();
		var reg = /^[a-zA-Z0-9가-힣!@#$%^&*()_+|<>?:{}\s]{1,100}$/;
		if (!reg.test(input)) {
			$(this).css('border', '1px solid red');
			$(this).parent().siblings().children('.project_enroll_inspection').text("한글, 숫자, 특수문자 조합으로 100자 이하로 입력해주세요.");
			isValid.pjContent = false;
		} else {
			$(this).css('border', '1px solid blue');
			$(this).parent().siblings().children('.project_enroll_inspection').text("");
			isValid.pjContent = true;
		}
		
		checkFormCompleteness();
	});

	/* 목표가액 계산 */
	$('input[name="pjPrice"]').on('input', function() {
		var input = $(this).val();

		$('.project_enroll_price_top_row2 input').val(Number(input).toLocaleString());

		var basicFee = Math.floor(input * 0.05 * 1.1);
		var cardFee = Math.floor(input * 0.03 * 1.1);

		var totalFee = Math.floor(basicFee + cardFee);

		var finalAmount = Math.floor(input - totalFee);

		$('.project_enroll_right_tax_row1_col2').text(totalFee.toLocaleString() + '원');
		$('.project_enroll_right_tax_row2_col2').text(cardFee.toLocaleString() + '원');
		$('.project_enroll_right_tax_row3_col2').text(basicFee.toLocaleString() + '원');
		$('.project_enroll_price_bottom_col2 span').text(finalAmount.toLocaleString());
		
		checkFormCompleteness();
	});
});