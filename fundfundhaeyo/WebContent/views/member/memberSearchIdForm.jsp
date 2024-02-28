<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Member m = (Member)request.getAttribute("m");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뻔뻔해요</title>
<link rel="stylesheet" href="resources/css/member/memberSearchIdPwForm.css">
<script src="resources/js/member/memberSearchIdPwForm.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
</head>
<body>
	<%@ include file="../common/header.jsp" %>
	
	<div class="member_search_id_pw_form_outer">
		<div class="blank_top"><%-- 여백 --%></div>
		
		<div class="member_search_id_pw_form_main">
		
			<div class="page-container">
		        <div class="search-id-pw-form-container shadow">
		            <div class="search-id-pw-form-left-side">
		                <div class="top-logo-wrap">
		                    
		                </div>
		                <h1 class="font_outer">개성이 모여 <br> 세상을 바꾸는 곳</h1>
		                <p>아이디어를 가진 당신의 꿈을 현실로 만들어주는 <br> 크라우드펀딩 플랫폼</p>
		            </div>
		            <div class="search-id-pw-form-right-side">
		                <div class="search-id-pw-top-wrap">
		                    <span>계정이 없으신가요?</span>
		                    <button onclick="location.href='<%= contextPath %>/moveToEnrollAgreement.me'" type="button" class="create-account-btn shadow-light">회원가입</button>
		                </div>
						<div class="btn-group">
							<button onclick="location.href='<%= contextPath %>/moveToSearchId.me'" type="button" class="btn btn-primary">아이디 찾기</button>
							<button onclick="location.href='<%= contextPath %>/moveToSearchPw.me'" type="button" class="btn btn-primary">비밀번호 찾기</button>
						</div>

					
		
		                <div class="search-id-pw-input-container">
		                    <div class="search-id-pw-input-wrap input-id">
		                        <i class="far fa-envelope"></i>
		                        <input placeholder="이름을 입력하세요." type="text" name="username" id="userName">
		                    </div>
		                    <div class="search-id-pw-input-wrap input-password">
		                        <i class="fas fa-key"></i>
		                        <input placeholder="이메일을 입력하세요." type="email" name="userEmail" id="userEmail">
		                    </div>
		                </div>
  
		                
		                <div class="search-id-pw-btn-wrap"> 
		                	<br>
		                    <button class="search-id-pw-btn" type="button" onclick="searchIdMember();">ID 찾기</button>
		                </div>
					
					
					<script>
						function searchIdMember(){
							
							//console.log("1");
							
							var $nameSearch = $("#userName");
							var $emailSearch = $("#userEmail"); 
							
							//console.log("nameSearch");
							//console.log("emailSearch");
							
							$.ajax({
								url:"searchId.me",
								data:{checkName:$nameSearch.val(),
									  checkEmail:$emailSearch.val()
									 
								},
								type:"post",
								success:function(id){
									//console.log(id);
								if(id !== ""){
									$(".search-id-pw-input-container").css("visibility","hidden"); // $()를 공간을 남겨두고 안보이게 해줌 / 이름 이메일 숨김
									$(".search-id-pw-btn-wrap").css("display","none"); // 공간까지 없애고 안보이게 해줌 / id찾기 버튼 숨김
									
									let value = "<div>당신의 아이디는 " + id + "입니다</div>";
									
									$(".search-id-pw-input-container").html(value);
									$(".search-id-pw-input-container").css("visibility","visible"); // 반대로 다시 보이게 해줌
										
								} else {
				                    alert('입력하신 정보와 맞는 회원이 없습니다.');
				                }
									
									}, error:function(){
										alert('오류');
									}
							})
						}
					</script>


		                <br>
		                
						<div style="height: 10px;"><%-- 여백 --%></div>
		            </div>
		        </div>
		    </div>
		    
	    </div>
	    
	    <div class="blank_bottom"><%-- 여백 --%></div>
    </div>
	
	<%@ include file="../common/footer.jsp" %>
</body>
</html>