<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뻔뻔해요</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link rel="stylesheet" href="resources/css/member/memberMypage.css">
<script src="resources/js/member/memberMypage.js"></script>
</head>
<body>
	<%@ include file="../common/header.jsp" %>
	
	<div class="mypage_outer">
		<div class="blank_top"><%-- 여백 --%></div>
		
		<div class="mypage_main">
			
			<div class="mypage_left_area fl">
				<div class="mypage_left_top" align="center">
					<div>TBU : 프로필</div>
					<div><i class="fa-solid fa-gear fa-lg"></i></div>
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
				                <li><a href="#">찜 목록</a></li>
				                <li><a href="#">알림 목록</a></li>
				                <li><a href="#">최근 본 프로젝트</a></li>
				                <li><a href="#">채팅</a></li>
				                <li><a href="#">Q&A</a></li>
				            </ul>
				        </li>
				        <li>
				            <a class="mypage_left_content-main-menu"><i class="fas fa-angle-up"></i> 회원 정보</a>
				            <ul class="hidden">
				                <li><a href="#">회원정보 수정</a></li>
				                <li><a href="#">회원 탈퇴</a></li>
				            </ul>
				        </li>
				        <li>
				            <a class="mypage_left_content-main-menu">단일 메뉴</a>
				        </li>
				    </ul>
				</div>
			</div>
			
			<div class="mypage_right_area fl">
				<div class="mypage_right_top">
					<div class="mypage_right_top_root">
						TBU : 루트
					</div>
					<div class="mypage_right_top_title">
						<h1>마이페이지</h1>
					</div>
				</div>
				<div class="mypage_right_content">
					<div class="mypage_right_content_grade fl" align="center">
						TBU : 등급
					</div>
					<div class="mypage_right_content_profile fl"></div>
					<div class="mypage_right_content_introduction fl"></div>
				</div>
				<div class="mypage_right_bottom"></div>
			</div>
			
	    </div>
	    
	    <div class="blank_bottom"><%-- 여백 --%></div>
    </div>
    
	<%@ include file="../common/footer.jsp" %>
</body>
</html>