$(document).ready(function() {
	$('[name="answer"]').on('input', function() {
		checkInputs();
	});

	$('button[type="reset"]').on('click', function() {
		setTimeout(checkInputs, 0);
	});

	function checkInputs() {
		if ($('[name="answer"]').val().trim() !== '') {
			$('#submitBtn').prop('disabled', false);
			$('#deleteAnswerBtn').prop('disabled', false);
			$('#resetBtn').prop('disabled', false);
		} else {
			$('#submitBtn').prop('disabled', true);
			$('#deleteAnswerBtn').prop('disabled', true);
			$('#resetBtn').prop('disabled', true);
		}
	}

	$("#submitBtn").click(function() {
		var confirmSubmit = confirm("제출하시겠습니까?");
		if (confirmSubmit) {
			$("#actionType").val("0");
			$("form").submit();
		}
	});
	$("#deleteBtn").click(function() {
		var confirmDelete = confirm("게시글을 삭제하시겠습니까?");
		if (confirmDelete) {
			$("#actionType").val("1");
			$("form").submit();
		}
	});
	$("#deleteAnswerBtn").click(function() {
		var confirmDelete = confirm("답변을 삭제하시겠습니까?");
		if (confirmDelete) {
			$("#actionType").val("2");
			$("form").submit();
		}
	});

	$(".adm-content-center-main-body-top-search-btn").click(function searchQna() {
		var qNo = $("#search").val();

		if (qNo >= 1) {
			location.href = "admMoveToUpdateQnaForm.hp?qNo=" + qNo;
		} else {
			alert("잘못 입력하셨습니다.");
		}
	});
});