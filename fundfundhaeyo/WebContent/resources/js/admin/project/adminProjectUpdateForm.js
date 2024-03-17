$(document).ready(function(){
    if (autoSearch){
        searchNo();
    }
});

function resetUpdate() {
    location.reload();
};

function searchNo(){
	if($("#searchNo").val()==''){
		alert('심사할 프로젝트의 번호를 입력해주세요.')
	}else{
		$.ajax({
			url:"admSearchNo.pr",
			type:"get",
			data:{searchNo:$("#searchNo").val()},
			success: function(map){
				var p = map.p;
				var list = map.list;
				var seller = map.seller;
				var bm = map.bm;
				var sm = map.sm;
				
				if(p == undefined){
					alert('존재하지 않거나, 심사 대상 프로젝트가 아닙니다.');
					$("#searchNo").val("");				
				}else{
					/* 세부사항 */
					
					for(let i = 0; i < list.length; i++){
						$(".slide-holder").append("<img class=\"slide\" width=200 height=200 src=\""+ list[i].attachmentPath + "/" + list[i].attachmentUpdateName +"\">");
					}
					
					for(let i = 0; i < list.length; i++){
						$(".dots").append("<span class=\"dot\"></span>")
					}
										
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
					
					$(".adm-info-projectNo-input").text(p.projectNo);
					$(".adm-info-projectCategoryName-input").text(p.projectCategoryName);
					$(".adm-info-projectOverview-input").text(p.projectOverview);
					$(".adm-info-projectTitle-input").text(p.projectTitle);
					$(".adm-info-projectTag-input").text(p.projectTag);
					$(".adm-info-projectPrice-input").text(p.projectPrice.toLocaleString() + "원");
					$(".projectPrice").val(p.projectPrice);
					
					$(".adm-info-projectStart-input").text(p.projectStart);
					$(".adm-info-projectEnd-input").text(p.projectEnd);
					$(".adm-info-projectPaymentBuyer-input").text(p.projectPaymentBuyer);
					$(".adm-info-projectPaymentSeller-input").text(p.projectPaymentSeller);
					$(".adm-info-projectContent-input").text(p.projectContent);
					$(".adm-info-projectSeller-input").text(seller.userName);
					
					/* 실적 */
					$(".adm-content-left-area2-body-grade-row1-col2").text(sm.sellerCount);
					$(".adm-content-left-area2-body-grade-row2-col2").text(bm.buyerCount);
					$(".adm-content-left-area2-body-grade-row3-col2").text(seller.userGrade);
					let us = $(".adm-content-left-area2-body-grade-row4-col2");
					switch(p.projectStatus){
						case 'Y' : us.text("게시"); break;
						case 'N' : us.text("심사 대기"); break;
						case 'W' : us.text("게시 대기"); break;
						case 'B' : us.text("반려"); break;
					}
					
					switch(p.projectStatus){
						case 'N' : 
						$('.adm-ban-btn').prop('disabled', false);     // 반려 버튼 활성화
						$('.adm-ban-btn').css('color', "red");
						$('.adm-ban-btn').addClass('hoverA3');
	        			$('.adm-allow-btn').prop('disabled', false);   // 승인 버튼 활성화
						$('.adm-allow-btn').css('color', "blue");
						$('.adm-allow-btn').removeClass('hoverA3');
	        			break;
	        			case 'B' :
	        			$('.adm-ban-btn').prop('disabled', true);      // 반려 버튼 비활성화
	        			$('.adm-ban-btn').css('color', "gray");
	        			$('.adm-ban-btn').removeClass('hoverA3');
				        $('.adm-allow-btn').prop('disabled', true);    // 승인 버튼 비활성화
				        $('.adm-allow-btn').css('color', "gray");
				        $('.adm-allow-btn').addClass('hoverA3');
				        break;
					}
				}
			}, error: function(){
				
			}
		})
	}
}

function banAllow(projectStatus){
	if($(".reason").val() == ""){
		alert('알림 내용을 기입해주세요.')
	}else{
		$.ajax({
			url:"admUpdateBanAllow.pr",
			type:"get",
			data:{
				projectStatus:projectStatus,
				projectNo:$(".adm-info-projectNo-input").text(),
				projectReason:$(".reason").val(),
				projectPrice:$(".projectPrice").val()
			},
			success: function(result){
				if(projectStatus == 'W'){
					alert('프로젝트 심사 승인되었습니다.')
				}else if(projectStatus == 'B'){
					alert('프로젝트 심사 반려되었습니다.')
				}
				location.href='/fund/admSelect.pr';
			}, error: function(result){
				alert('실패하였습니다.')
			}
		})
	}
}