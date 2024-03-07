$(function() {
	var datePicker = $("#datepicker").datepicker({
		dateFormat: "yy.mm.dd",
		minDate: 7,
		onSelect: function(dateText) {
			var startDate = new Date(dateText);
			var endDate = new Date(startDate);
			endDate.setDate(endDate.getDate() + 30);
			var buyerPaymentDate = new Date(endDate);
			buyerPaymentDate.setDate(buyerPaymentDate.getDate() + 7);
			var sellerPaymentDate = new Date(buyerPaymentDate);
			sellerPaymentDate.setDate(sellerPaymentDate.getDate() + 7);

			$(".projectDetails").css("display", "block");

			$(".pjPeriod").val("30 일").addClass('blueBtn');
			$(".pjEnd").val($.datepicker.formatDate('yy.mm.dd', endDate)).addClass('blueBtn');
			$(".pjBuyerPayment").val($.datepicker.formatDate('yy.mm.dd', buyerPaymentDate)).addClass('blueBtn');
			$(".pjSellerPayment").val($.datepicker.formatDate('yy.mm.dd', sellerPaymentDate)).addClass('blueBtn');


			$(".anno2").text("펀딩 기간은 30 일로 고정됩니다.");
			$(".anno3").text("종료일 : 시작일로부터 30 일 후");
			$(".anno4").text("후원자 결제 종료 : 종료일로부터 7 일 후");
			$(".anno5").text("창작자 정산 : 후원자 결제일로부터 7 일 후");

			checkFormValidation();
		}
	});

	$('#open-datepicker').click(function() {
		datePicker.datepicker("show");
	});
});

function checkFormValidation() {
	var startDate = $("#datepicker").val();
	var titleImg = $("#titleImg").attr("src");

	if (startDate !== "" && titleImg !== "" && titleImg !== undefined) {
		$(".project_enroll_final_form_btn2").prop("disabled", false);
		$(".project_enroll_final_form_btn2").css("background-color", "skyblue");
	} else {
		$(".project_enroll_final_form_btn2").prop("disabled", true);
		$(".project_enroll_final_form_btn2").css("background-color", "lightgray");
	}
}

function chooseFile(num) {
	$("#file" + num).click();
}

function loadImg(inputFile, num) {
	if (inputFile.files.length == 1) {

		const reader = new FileReader();

		reader.readAsDataURL(inputFile.files[0]);
		reader.onload = function(e) {
			switch (num) {
				case 1: $("#titleImg").attr("src", e.target.result); break;
				case 2: $("#contentImg1").attr("src", e.target.result); break;
                case 3: $("#contentImg2").attr("src", e.target.result); break;
                case 4: $("#contentImg3").attr("src", e.target.result); break;
			}
			checkFormValidation();
		}
	} else {
		switch (num) {
			case 1: $("#titleImg").attr("src", ""); break;
			case 2: $("#contentImg1").attr("src", null); break;
            case 3: $("#contentImg2").attr("src", null); break;
            case 4: $("#contentImg3").attr("src", null); break;
		}
		checkFormValidation();
	}
}