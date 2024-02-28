$(document).ready(function(){
    if (autoSearch){
        searchId();
    }
});

function searchId(){
	$.ajax({
		url:"admSearchId.me",
		type:"get",
		data:{searchId:$("#searchId").val()},
		success: function(m){
			if(m == undefined){
				alert('존재하지 않는 회원입니다.');
				$("#searchId").val("");				
			}else{
				/* 인적사항 */
				$(".adm-info-userNo-input").text(m.userNo);
				$(".adm-info-userId-input").text(m.userId);
				$(".adm-info-userPwd-input").text(m.userPwd);
				$(".adm-info-userName-input").text(m.userName);
				$(".adm-info-userSsn-input").text(m.userSsn);
				$(".adm-info-userNickname-input").text(m.userNickname);
				$(".adm-info-userPhone-input").text(m.userPhone);
				$(".adm-info-userEmail-input").text(m.userEmail);
				$(".adm-info-userAddress-input").text(m.userAddress);
				$(".adm-info-userMarketing-input").text(m.userMarketing);
				$(".adm-info-userProfile-input").text(m.userProfile);
				$(".adm-info-userEnrollDate-input").text(m.userEnrollDate);
				
				/* 실적 */
				$(".adm-content-left-profile2-body-grade-row3-col2").text(m.userGrade);
				$(".adm-content-left-profile2-body-grade-row4-col2").text(m.userStatus);
				
				switch(m.userStatus){
					case 'Y' : 
					$('.adm-ban-btn').prop('disabled', false);   // 차단 버튼 활성화
					$('.adm-ban-btn').css('color', "red");
        			$('.adm-allow-btn').prop('disabled', true);  // 차단해제 버튼 비활성화
					$('.adm-allow-btn').css('color', "blue");
        			break;
        			case 'N' :
        			$('.adm-ban-btn').prop('disabled', true);    // 차단 버튼 비활성화
        			$('.adm-ban-btn').css('color', "blue");
			        $('.adm-allow-btn').prop('disabled', false); // 차단해제 버튼 활성화
			        $('.adm-allow-btn').css('color', "red");
			        break;
				}
			}
		}, error: function(){
			
		}
	})
}

function banAllow(userStatus){
	$.ajax({
		url:"admBanAllowUpdate.me",
		type:"get",
		data:{
			userStatus:userStatus,
			userId:$(".adm-info-userId-input").text(),
		},
		success: function(result){
			console.log("성공 : " + result);
		}, error: function(result){
			console.log("실패 : " + result);
		}
	})
}