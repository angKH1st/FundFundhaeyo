$(document).ready(function(){

	var IMP = window.IMP;
	IMP.init("imp17786267");
	
	var totalPriceElement = document.getElementById('totalPrice');
	var totalPriceText = totalPriceElement.innerText;
	var numericValue = parseInt(totalPriceText.replace(/[^0-9]/g, ''), 10);
	var projectName = $(".project_order_top_col2_row2").text();
	var selectedOption;
	var method;
	
	$("input[name='group1']").eq(0).prop("checked", true).trigger("change");
    selectedOption = $("input[name='group1']:checked").attr('id');
	
	$("input[name='group1']").change(function(){
    	selectedOption = $("input[name='group1']:checked").attr('id');
  	});
	
	const payButton = $("#payButton");
	
	function onClickPay() {
		var selectedPaymentMethod = $('input[name="group2"]:checked').val();
		
        var params = {
			pay_method: "card",
            amount: numericValue,
            name: projectName,
            merchant_uid: generateMerchantUID(),
            buyer_name: $(".project_order_info_name_input input").val(),
            buyer_ssn: $(".project_order_info_ssn_input input").val(), 
            buyer_tel: $(".project_order_info_phone_input input").val(), 
            buyer_email: $(".project_order_info_email_input input").val(),
            buyer_addr: $(".project_order_info_address_input input").val() 
        }
        
        if(selectedPaymentMethod === "kakaopay") {
			params.pg = "kakaopay.TC0ONETIME";
			method = 1;
		} else if(selectedPaymentMethod === "tosspay") {
			params.pg = "tosspay";
			method = 2;
		}
		
		IMP.request_pay(params, function(response) {
			if (response.success) {
				// 결제 성공 시 로직
				$.ajax({
					type: "post",
					url: "insertOrder.me",
					data: {
						pno: $("#pno").val(),
						uno: $("#uno").val(),
						sno: $("#sno").val(),
						merchant_uid: response.merchant_uid,
						name: response.buyer_name,
						amount: response.paid_amount,
						option: selectedOption,
						method: method
					},
					success: function(result){
						if(result == 1){
							alert("결제가 성공적으로 완료되었습니다.");
						}else{
							alert("결제에 실패하였습니다." + result);
						}
					}, error: function(){
						alert("결제에 실패하였습니다.");
					}
				})
			} else {
				// 결제 실패 시 로직
				alert("결제에 실패하였습니다. 에러 메시지: " + response.error_msg);
			}
		});
    };
	
	payButton.on("click", onClickPay);
});

/* 결제 ID 생성용 */
function generateMerchantUID() {
	const now = new Date();
	const year = now.getFullYear();
	const month = (now.getMonth() + 1).toString().padStart(2, '0');
	const day = now.getDate().toString().padStart(2, '0');

	const merchant_uid = 'ord' + year + month + day + '_' + $("#pno").val() + '_' + $("#uno").val();
	
	return merchant_uid;
}