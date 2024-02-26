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
							<button onclick="Location.href='<%= contextPath %>/moveToSearchIdPw.me'" type="button" class="btn btn-primary">아이디 찾기</button>
							<button onclick="Location.href='<%= contextPath %>/moveToSearchIdPw.me'" type="button" class="btn btn-primary">비밀번호 찾기</button>
						</div>

		                <div class="search-id-pw-input-container">
		                    <div class="search-id-pw-input-wrap input-id">
		                        <i class="far fa-envelope"></i>
		                        <input placeholder="이름을 입력하세요." type="text" name="username" id="username">
		                    </div>
		                    <div class="search-id-pw-input-wrap input-password">
		                        <i class="fas fa-key"></i>
		                        <input placeholder="이메일을 입력하세요." type="email" name="userEmail" id="userEmail">
		                    </div>
		                </div>
		                
		                <script>
		                	function searchIdMember(){
		                		$.ajax({
		                			url:"searchId.me",
		                			data:{name:$("#username").val(),
		                				  email:$("#userEmail").val()},
		                			type:"post",
		                			success:function(list){
		                				console.log(list);
		                			},error:function(){
		                				
		                			}
		                		})
		                	}
		                </script>
		                
		                
		                <div class="search-id-pw-btn-wrap"> 
		                	<br>
		                    <button onclick="Location.href='<%= contextPath %>/searchIdResult.me'" class="search-id-pw-btn" type="submit">ID 찾기</button>
		                </div>
		                
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