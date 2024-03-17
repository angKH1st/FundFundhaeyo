$(document).ready(function() {
	$('.phoneBtn').click(function() {
		$('#phoneInput').focus();
	});
	$('.emailBtn').click(function() {
		$('#emailInput').focus();
	});
	$('.addressBtn').click(function() {
		$('#addressInput').focus();
	});
	$('.marketingBtn').click(function() {
		var marketingInput = $('#marketingInput');
		marketingInput.val(marketingInput.val() === 'Y' ? 'N' : 'Y');
	});
	$('.profileBtn').click(function() {
		$('#profileInput').focus();
	});
	$('.mypage_update_Form_right_pwdBtn').on('click', function() {
		$('.mypage_update_Form_right').hide();
	});
});

var observer = new MutationObserver(function(mutations) {
	mutations.forEach(function(mutationRecord) {
		var styleAttribute = mutationRecord.target.getAttribute('style');
		if (styleAttribute.includes('display: none')) {
			$('.mypage_update_Form_right').show();
		}
	});
});

var target = document.querySelector('.modal');
observer.observe(target, { attributes: true, attributeFilter: ['style'] });

function uploadMemberProfile() {
	$("#file").click();
}

function loadImg(inputFile) {
	if (inputFile.files.length == 1) {
		const reader = new FileReader();

		reader.readAsDataURL(inputFile.files[0]);

		reader.onload = function(e) {
			$("#profileImg").attr("src", e.target.result);
		}
	} else {
		$("#profileImg").attr("src", null);
	}
}

function validatePwd() {
	if ($("input[name=updatePwd]").val() != $("input[name=checkPwd]").val()) {
		alert("변경할 비밀번호가 일치하지 않습니다.");
		return false;
	}
}