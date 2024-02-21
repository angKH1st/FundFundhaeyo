<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뻔뻔해요</title>
<link rel="stylesheet" href="resources/css/memberSearchIdPwForm.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="resources/js/memberSearchIdPwForm.js"></script>
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
		                <h1>나중에 제목 넣기 그럴싸한걸로다가?</h1>
		                <p>뻔뻔하다 뻔뻔해 뻔뻔하다 뻔뻔해 뻔뻔하다 뻔뻔해 뻔뻔하다 뻔뻔해 뻔뻔하다 뻔뻔해 뻔뻔하다 뻔뻔해 뻔뻔하다 뻔뻔해 뻔뻔하다 뻔뻔해 뻔뻔하다 뻔뻔해 뻔뻔하다 뻔뻔해 뻔뻔하다 뻔뻔해 뻔뻔하다 뻔뻔해 </p>
		            </div>
		            <div class="search-id-pw-form-right-side">
		                <div class="search-id-pw-top-wrap">
		                    <span>계정이 없으신가요?</span>
		                    <button onclick="location.href='<%= contextPath %>/moveToMemberEnrollAgreement.me'" type="button" class="create-account-btn shadow-light">회원가입</button>
		                </div>
		                <div class="search-id-pw-input-container">
		                    <div class="search-id-pw-input-wrap input-id">
		                        <i class="far fa-envelope"></i>
		                        <input placeholder="아이디" type="text" name="userId">
		                    </div>
		                    <div class="search-id-pw-input-wrap input-password">
		                        <i class="fas fa-key"></i>
		                        <input placeholder="비밀번호" type="password" name="userPwd">
		                    </div>
		                </div>
		                <div class="search-id-pw-btn-wrap">
		                    <button class="search-id-pw-btn"  type="submit">ID 찾기</button>
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