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
});

function uploadMemberProfile(){
	$("#file").click();
}

function loadImg(inputFile){
	if (inputFile.files.length == 1) { // 파일이 선택된 경우 : 파일 읽어들여 미리보기
		// 파일을 읽어들일 수 있는 FileReader 객체 생성
		const reader = new FileReader();

		// 파일을 읽어들이는 메소드
		reader.readAsDataURL(inputFile.files[0]);

		// 해당 파일 읽어들이기가 완료됐을 때 실행할 함수 정의
		reader.onload = function(e) {
			$("#profileImg").attr("src", e.target.result);
		}
	} else { // 선택된 파일이 취소된 경우 : 미리보기 삭제
		$("#profileImg").attr("src", null);
	}
}