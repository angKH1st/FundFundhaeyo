<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뻔뻔해요</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link rel="stylesheet" href="resources/css/memberMypageSidebar.css">
<script src="https://kit.fontawesome.com/4dc2c036ac.js" crossorigin="anonymous"></script>
</head>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<body>
	<div class="mypage_left_area fl">
		<div class="mypage_left_top" align="center">
			프사
		</div>
		<div class="mypage_left_content listHover">
			<ul>
				<li>
		            <a href="<%= request.getContextPath() %>/mypage.me" class="mypage_left_content-main-menu">마이페이지</a>
		        </li>
		        <li>
		            <a class="mypage_left_content-main-menu">나의 후원 <i class="fas fa-angle-up"></i></a>
		            <ul class="hidden">
		                <li><a href="<%= request.getContextPath() %>/attendProject.me?cpage=1">후원한 프로젝트</a></li>
		                <li><a href="#">주문내역</a></li>
		                <li><a href="#">뭘 넣을까</a></li>
		            </ul>
		        </li>
		        <li>
		            <a class="mypage_left_content-main-menu">나의 창작 <i class="fas fa-angle-up"></i></a>
		            <ul class="hidden">
		                <li><a href="<%= request.getContextPath() %>/myProject.me?cpage=1">나의 창작 프로젝트</a></li>
		                <li><a href="#">송장</a></li>
		                <li><a href="#">수익</a></li>
		            </ul>
		        </li>
		        <li>
		            <a class="mypage_left_content-main-menu">나의 활동 <i class="fas fa-angle-up"></i></a>
		            <ul class="hidden">
		                <li><a href="<%= request.getContextPath() %>/moveToLikes.me?cpage=1">찜 목록</a></li>
		                <li><a href="<%= request.getContextPath() %>/MemberNotices.no">알림 목록</a></li>
		                <li><a href="#">최근 본 프로젝트</a></li>
		            </ul>
		        </li>
		        <li>
		            <a class="mypage_left_content-main-menu">회원 정보 <i class="fas fa-angle-up"></i></a>
		            <ul class="hidden">
		                <li><a href="<%= request.getContextPath() %>/moveToUpdate.me">회원정보수정</a></li>
		                <li><a href="<%= request.getContextPath() %>/moveToDelete.me">회원탈퇴</a></li>
		            </ul>
		        </li>
		    </ul>
		</div>
	</div>
	<script src="resources/js/member/memberMypageSidebar.js"></script>
</body>
</html>