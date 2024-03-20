$(document).ready(function(){
    if (autoSearch){
        searchId();
    }
});

function resetUpdate() {
    location.reload();  // 페이지 새로고침
};

function searchId(){
	if($("#searchId").val()==''){
		alert('수정할 회원의 ID를 입력해주세요.')
	}else{
		$.ajax({
			url:"admSearchId.me",
			type:"get",
			data:{searchId:$("#searchId").val()},
			success: function(members){
				var m = members.m;
				var sm = members.sm;
				var bm = members.bm;
				if(m == undefined){
					alert('존재하지 않는 회원입니다.');
					$("#searchId").val("");				
				}else{
					/* 인적사항 */
					$(".adm-content-left-profile1-body-photo").html("<img class=\"circleImg\" width=200 height=200 src=\""+ m.userImg +"\">");
					$(".adm-info-userNo-input").text(m.userNo);
					$(".adm-info-userId-input").text(m.userId);
					$(".adm-info-userPwd-input").text(m.userPwd);
					$(".adm-info-userName-input").text(m.userName);
					$(".adm-info-userSsn-input").text(m.userSsn);
					$(".adm-info-userNickname-input").text(m.userNickname);
					$(".adm-info-userPhone-input").text(m.userPhone);
					$(".adm-info-userEmail-input").text(m.userEmail);
					$(".adm-info-userAddress-input").text(m.userAddress);
					if(m.userMarketing == 'N'){
						$(".adm-info-userMarketing-input").text("비동의");
					}else if(m.userMarketing == 'Y'){
						$(".adm-info-userMarketing-input").text("동의");
					}
					
					$(".adm-info-userProfile-input").text(m.userProfile);
					$(".adm-info-userEnrollDate-input").text(m.userEnrollDate);
					
					/* 실적 */
					$(".adm-content-left-profile2-body-grade-row1-col2").text(bm.userGrade);
					$(".adm-content-left-profile2-body-grade-row2-col2").text(sm.userGrade);
					$(".adm-content-left-profile2-body-grade-row3-col2").text(m.userGrade);
					let us = $(".adm-content-left-profile2-body-grade-row4-col2");
					switch(m.userStatus){
						case 'Y' : us.text("사용중"); break;
						case 'N' : us.text("탈퇴"); break;
						case 'B' : us.text("차단"); break;
						case 'A' : us.text("관리자"); break;
					}
					
					switch(m.userStatus){
						case 'Y' : 
						$('.adm-ban-btn').prop('disabled', false);   // 차단 버튼 활성화
						$('.adm-ban-btn').css('color', "red");
						$('.adm-ban-btn').addClass('hoverA3');
	        			$('.adm-allow-btn').prop('disabled', true);  // 차단해제 버튼 비활성화
						$('.adm-allow-btn').css('color', "gray");
						$('.adm-allow-btn').removeClass('hoverA3');
	        			break;
	        			case 'B' :
	        			$('.adm-ban-btn').prop('disabled', true);    // 차단 버튼 비활성화
	        			$('.adm-ban-btn').css('color', "gray");
	        			$('.adm-ban-btn').removeClass('hoverA3');
				        $('.adm-allow-btn').prop('disabled', false); // 차단해제 버튼 활성화
				        $('.adm-allow-btn').css('color', "blue");
				        $('.adm-allow-btn').addClass('hoverA3');
				        break;
					}
				}
			}, error: function(){
				
			}
		})
	}
}

function banAllow(userStatus){
	$.ajax({
		url:"admUpdateBanAllow.me",
		type:"get",
		data:{
			userStatus:userStatus,
			userId:$(".adm-info-userId-input").text(),
		},
		success: function(result){
			if(userStatus == 'Y'){
				alert('유저 ID : ' + $(".adm-info-userId-input").text() + ', 성공적으로 차단해제되었습니다.')
			}else if(userStatus == 'B'){
				alert('유저 ID : ' + $(".adm-info-userId-input").text() + ', 성공적으로 차단되었습니다.')
			}
			searchId();
		}, error: function(result){
			alert('실패하였습니다.')
		}
	})
}