$(document).ready(function() {
	$('[name="title"], [name="content"]').on('input', function() {
		checkInputs();
	});

	$('button[type="reset"]').on('click', function() {
		setTimeout(checkInputs, 0);
	});

	function checkInputs() {
		if ($('[name="title"]').val().trim() !== '' && $('[name="content"]').val().trim() !== '') {
			$('#submitBtn').prop('disabled', false);
		} else {
			$('#submitBtn').prop('disabled', true);
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
		var confirmDelete = confirm("삭제하시겠습니까?");
		if (confirmDelete) {
			$("#actionType").val("1");
			$("form").submit();
		}
	});

	$(".adm-content-center-main-body-top-search-btn").click(function searchAnnouncement() {
		var aNo = $("#search").val();

		if (aNo >= 1) {
			location.href = "admMoveToUpdateAnnouncementForm.hp?aNo=" + aNo;
		} else {
			alert("잘못 입력하셨습니다.");
		}
	});
});