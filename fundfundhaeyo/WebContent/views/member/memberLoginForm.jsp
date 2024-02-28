<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뻔뻔해요</title>
<link rel="stylesheet" href="resources/css/member/memberLoginForm.css">
</head>
<body>
	<%@ include file="../common/header.jsp" %>
	
	<div class="login_form_outer">
		<div class="blank_top"><%-- 여백 --%></div>
			<div class="login_form_main">
			<form action="<%= contextPath %>/login.me" method="post">
			
			<div class="page-container">
		        <div class="login-form-container shadow">
		            <div class="login-form-left-side">
		                <div class="top-logo-wrap">
		                    
		                </div>
		                <h1 class="font_outer">개성이 모여 <br> 세상을 바꾸는 곳</h1>
		                <p>아이디어를 가진 당신의 꿈을 현실로 만들어주는 <br> 크라우드펀딩 플랫폼</p>
		            </div>
		            <div class="login-form-right-side">
		                <div class="login-top-wrap">
		                    <span>계정이 없으신가요?</span>
		                    <button onclick="location.href='<%= contextPath %>/moveToEnrollAgreement.me'" type="button" class="create-account-btn shadow-light">회원가입</button>
		                </div>
		                <div class="login-input-container">
		                    <div class="login-input-wrap input-id">
		                        <i class="far fa-envelope"></i>
		                        <input placeholder="아이디" type="text" name="userId">
		                    </div>
		                    <div class="login-input-wrap input-password">
		                        <i class="fas fa-key"></i>
		                        <input placeholder="비밀번호" type="password" name="userPwd">
		                    </div>
		                </div>
		                <div class="login-btn-wrap">
		                	<br>
		                    <button class="login-btn"  type="submit">로그인</button>
		                    <a href="<%= contextPath %>/moveToSearchId.me">아이디/비밀번호 찾기</a>
		                </div>
		                
		                <br>
		                
						<div class="login-alternative-methods font_outer">
							<span>또는</span>
						</div>

						<div style="height: 10px;"><%-- 여백 --%></div>

						<div class="login_form_main_social">
							<%-- 추후 소셜로그인 구현 --%>구   네   카
						</div>
		            </div>
		        </div>
		    </div>
			
			</form>
		    </div>
	    <div class="blank_bottom"><%-- 여백 --%></div>
    </div>
	<%@ include file="../common/footer.jsp" %>
</body>
</html>