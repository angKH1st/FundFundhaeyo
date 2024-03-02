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
		            <a class="mypage_left_content-main-menu"><i class="fas fa-angle-up"></i> 나의 후원</a>
		            <ul class="hidden">
		                <li><a href="#">뭘 넣을까</a></li>
		                <li><a href="#">뭘 넣을까</a></li>
		                <li><a href="#">뭘 넣을까</a></li>
		            </ul>
		        </li>
		        <li>
		            <a class="mypage_left_content-main-menu"><i class="fas fa-angle-up"></i> 나의 창작</a>
		            <ul class="hidden">
		                <li><a href="#">뭘 넣을까</a></li>
		                <li><a href="#">뭘 넣을까</a></li>
		                <li><a href="#">뭘 넣을까</a></li>
		            </ul>
		        </li>
		        <li>
		            <a class="mypage_left_content-main-menu"><i class="fas fa-angle-up"></i> 나의 활동</a>
		            <ul class="hidden">
		                <li><a href="<%= request.getContextPath() %>/moveToLikes.me">찜 목록</a></li>
		                <li><a href="#">알림 목록</a></li>
		                <li><a href="#">최근 본 프로젝트</a></li>
		                <li><a href="#">채팅</a></li>
		                <li><a href="#">Q&A</a></li>
		            </ul>
		        </li>
		        <li>
		            <a class="mypage_left_content-main-menu"><i class="fas fa-angle-up"></i> 회원 정보</a>
		            <ul class="hidden">
		                <li><a href="<%= request.getContextPath() %>/moveToUpdate.me">회원정보수정</a></li>
		                <li><a href="<%= request.getContextPath() %>/moveToDelete.me">회원탈퇴</a></li>
		            </ul>
		        </li>
		        <li>
		            <a href="#" class="mypage_left_content-main-menu">단일 메뉴</a>
		        </li>
		    </ul>
		</div>
	</div>
	<script src="resources/js/member/memberMypageSidebar.js"></script>
</body>
</html>