<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Member m = (Member)request.getAttribute("m");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

		                <div class="searchId-result">
		                	
		                	<%= m.getUserName() %>님의 아이디는 <%= m.getUserId() %> 입니다.

		                </div>

		                
		                
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