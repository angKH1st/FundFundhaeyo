<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뻔뻔해요</title>
<link rel="stylesheet" href="resources/css/member/memberTestingProject.css">
</head>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<body>
	<%@ include file="../common/header.jsp" %>
	
	<div class="mypage_testing_Form_outer font_outer">
		<div class="blank_top"><%-- 여백 --%></div>
		
			<div class="mypage_testing_Form_main shadow brlg br5">
				<div class="mypage_testing_Form_left fl">
					<%@ include file="../common/memberMypageSidebar.jsp" %>
				</div>
				<div class="mypage_testing_Form_right fl">
					<div class="mypage_testing_Form_right_content1 pd15">
						<div class="mypage_testing_Form_right_root">
							<span><a href="<%= request.getContextPath() %>/mypage.me">Home</a></span>
							<span> > </span>
							<span>나의창작</span>
						</div>
						<div class="mypage_testing_Form_right_title"><h3>심사중인 프로젝트</h3></div>
						<div class="mypage_testing_Form_right_list brlg br5 pd15">
						</div>
					</div>
					<div class="mypage_testing_Form_right_content2 pd15">
						<div class="mypage_testing_Form_right_title2">
						</div>
						<div class="mypage_testing_Form_right_blank"></div>
					</div>
				</div>
			</div>
		<div class="blank_bottom"><%-- 여백 --%></div>
	</div>
		
	<%@ include file="../common/footer.jsp" %>
	
	<script src="resources/js/member/memberTestingProject.js"></script>
</body>
</html>