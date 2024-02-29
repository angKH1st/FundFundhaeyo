<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뻔뻔해요</title>
<link rel="stylesheet" href="resources/css/member/memberUpdateForm.css">
</head>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<body>
	<%@ include file="../common/header.jsp" %>
	
	<div class="mypage_update_Form_outer">
		<div class="blank_top"><%-- 여백 --%></div>
		
			<div class="mypage_update_Form_main shadow brlg br5">
				<div class="mypage_update_Form_left fl">
					<%@ include file="../common/memberMypageSidebar.jsp" %>
				</div>
				<div class="mypage_update_Form_right fl">
					<div class="mypage_update_Form_right_content1 pd15">
						<div class="mypage_update_Form_right_root">
							<span><a href="<%= request.getContextPath() %>/mypage.me">Home</a></span>
							<span> > </span>
							<span>회원정보수정</span>
						</div>
						<div class="mypage_update_Form_right_title"><h3>회원정보수정</h3></div>
						<div class="mypage_update_Form_right_TBD brlg br5">TBD 클래스이름 고쳐야함</div>
					</div>
					<div class="mypage_update_Form_right_content2 pd15">
						<div class="mypage_update_Form_right_title2"><h3>제목</h3></div>
						<div class="mypage_update_Form_right_TBD2 brlg br5">TBD 클래스이름 고쳐야함</div>
					</div>
				</div>
			</div>
		<div class="blank_bottom"><%-- 여백 --%></div>
	</div>
		
	<%@ include file="../common/footer.jsp" %>
	
	<script src="resources/js/member/memberUpdateForm.js"></script>
</body>
</html>