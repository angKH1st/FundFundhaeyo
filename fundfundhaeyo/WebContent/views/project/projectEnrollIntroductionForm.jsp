<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뻔뻔해요</title>
<link rel="stylesheet" href="resources/css/project/projectEnrollIntroductionForm.css">
</head>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<body>
	<%@ include file="../common/header.jsp" %>
	
	<div class="project_enroll_introduction_form_outer font_outer">
		<div class="blank_top"><%-- 여백 --%></div>
		<div class="project_enroll_introduction_form_main">
			<div class="project_enroll_introduction_top">
				<h2>누구나 쉽고 빠르게</h2>
				<h2>프로젝트를 시작할 수 있습니다.</h2>
			</div>
			<div class="project_enroll_introduction_middle">
				<p>개성이 모여 세상을 바꾸는 뻔뻔해요에서</p>
			</div>
			<div class="project_enroll_introduction_bottom">
				<% if(loginUser != null) { %>
				<button type="button" class="blueBtnBig" style="margin-right: 5px;" onclick=location.href="<%= contextPath %>/moveToEnroll.pr">펀딩 시작하기</button>
				<% }else{ %>
				<button type="button" class="blueBtnBig" style="margin-right: 5px;" onclick="alertToLogin();">펀딩 시작하기</button>
				<% } %>
				<button type="button" onclick=location.href="<%= contextPath %>/guide.hp" class="grayBtnBig">창작자 가이드</button>
			</div>
	    </div>
	    <div class="blank_bottom"><%-- 여백 --%></div>
    </div>
	
	<%@ include file="../common/footer.jsp" %>
	
	<script src="resources/js/project/projectEnrollIntroductionForm.js"></script>
</body>
</html>