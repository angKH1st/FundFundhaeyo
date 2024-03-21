<%@page import="java.util.Locale"%>
<%@page import="java.text.NumberFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Member seller = (Member)request.getAttribute("seller"); 
	Member buyer = (Member)request.getAttribute("buyer"); 
	int likes = (int)request.getAttribute("likes");
	int clap = (int)request.getAttribute("clap");
	
	// 원화 처리
	NumberFormat nf = NumberFormat.getInstance(Locale.KOREA);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뻔뻔해요</title>
<link rel="stylesheet" href="resources/css/member/memberMypage.css">
</head>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<body>
	<%@ include file="../common/header.jsp" %>
	
	<div class="mypage_outer font_outer">
		<div class="blank_top"><%-- 여백 --%></div>
		
		<div class="mypage_main shadow brlg br5">
			<div class="mypage_left fl">
				<%@ include file="../common/memberMypageSidebar.jsp" %>
			</div>
			<div class="mypage_right fl">
				<div class="mypage_right_content1 pd15">
					<div class="mypage_right_root">
						<span><a href="<%= request.getContextPath() %>/mypage.me">Home</a></span>
					</div>
					<div class="mypage_right_title"><h3>마이페이지</h3></div>
					<div class="mypage_right_activity brlg br5">
						<div class="mypage_activity_row1">
							<div class="mypage_activity_row1_grade1 hoverA2-2 fl" onclick="moveToAttend();">
								<div class="mypage_activity_row1_grade1_title"><h4>후원활동</h4></div>
								<div class="mypage_activity_row1_grade1_count"><h3><%= buyer.getBuyerCount() %></h3><h5> 회</h5></div>
							</div>
							<div class="mypage_activity_row1_grade2 hoverA2-2 fl" onclick="moveToOrder();">
								<div class="mypage_activity_row1_grade2_title"><h4>후원금액</h4></div>
								<div class="mypage_activity_row1_grade2_count"><h3><%= nf.format(buyer.getBuyerFunding()) %></h3><h5> 원</h5></div>
							</div>
							<div class="mypage_activity_row1_grade3 hoverA2-2 fl" onclick="moveToMyPj();">
								<div class="mypage_activity_row1_grade3_title"><h4>창작활동</h4></div>
								<div class="mypage_activity_row1_grade3_count"><h3><%= seller.getSellerCount() %></h3><h5> 회</h5></div>
							</div>
							<div class="mypage_activity_row1_grade4 hoverA2-2 fl" onclick="moveToFunding();">
								<div class="mypage_activity_row1_grade4_title"><h4>창작금액</h4></div>
								<div class="mypage_activity_row1_grade4_count"><h3><%= nf.format(seller.getSellerFunding()) %></h3><h5> 원</h5></div>
							</div>
						</div>
					</div>
				</div>
				<div class="mypage_right_content2 pd15">
					<div class="mypage_right_title2"><h3>나의활동</h3></div>
					<div class="mypage_right_my">
						<div class="mypage_right_my_left fl">
							<div class="mypage_right_my_left_likes brlg br5" onclick="moveToLikes();">
								<div class="mypage_activity_row1_grade1_title mypage_title fl"><i class="fa-solid fa-heart fa-xl" style="color: #ff0000; line-height: 150%; padding: 5px 10px 0 10px;"></i> 찜목록</div>
								<div class="mypage_count fl"><%= likes %> 개</div>
							</div>
							<div class="mypage_right_my_left_grade brlg br5" onclick="moveToMyPj();">
								<div class="mypage_activity_row1_grade1_title mypage_title fl"><i class="fa-solid fa-hands-clapping fa-xl" style="line-height: 150%; padding: 5px 10px 0 10px;"></i> 받은 박수</div>
								<div class="mypage_count fl"><%= clap %> 개</div>
							</div>
						</div>
						<div class="mypage_right_my_left br10 fl">
							<div class="mypage_right_my_left_likes brlg br5" onclick="moveToNotices();">
								<div class="mypage_activity_row1_grade1_title mypage_title fl"><i class="fa-regular fa-bell fa-xl" style="line-height: 150%; padding: 5px 10px 0 10px;"></i> 알림</div>
								<div class="mypage_count fl">확인</div>
							</div>
							<div class="mypage_right_my_left_grade brlg br5" onclick="moveToRecent();">
								<div class="mypage_activity_row1_grade1_title mypage_title fl"><i class="fa-regular fa-face-grin-tongue-wink fa-xl" style="line-height: 150%; padding: 5px 10px 0 10px;"></i> 최근 본 프로젝트</div>
								<div class="mypage_count fl">확인</div>
							</div>
						</div>
					</div>
				</div>
				<div class="mypage_right_content3 pd15">
					<div class="mypage_right_title2"><h3>고객지원</h3></div>
					<div class="mypage_right_my">
						<div class="mypage_right_my_left fl">
							<div class="mypage_right_my_left_likes brlg br5" onclick="moveToAnnouncements();">
								<div class="mypage_activity_row1_grade1_title mypage_title fl"><i class="fa-solid fa-bullhorn fa-xl" style="line-height: 150%; padding: 5px 10px 0 12px;"></i> 공지사항</div>
								<div class="mypage_count fl">확인</div>
							</div>
							<div class="mypage_right_my_left_grade brlg br5" onclick="moveToGuide();">
								<div class="mypage_activity_row1_grade1_title mypage_title fl"><i class="fa-solid fa-bookmark fa-lg" style="line-height: 150%; padding: 5px 10px 0 13px;"></i> 펀딩가이드</div>
								<div class="mypage_count fl">확인</div>
							</div>
							<div class="mypage_right_my_left_grade brlg br5" onclick="moveToGear();">
								<div class="mypage_activity_row1_grade1_title mypage_title fl"><i class="fa-solid fa-gear fa-xl" style="line-height: 150%; padding: 5px 10px 0 10px;"></i> 설정</div>
								<div class="mypage_count fl">변경</div>
							</div>
						</div>
						<div class="mypage_right_my_left br10 fl">
							<div class="mypage_right_my_left_likes brlg br5" onclick="moveToQNA();">
								<div class="mypage_activity_row1_grade1_title mypage_title fl"><i class="fa-regular fa-comments fa-xl" style="line-height: 150%; padding: 5px 10px 0 10px;"></i> Q&A</div>
								<div class="mypage_count fl">확인</div>
							</div>
							<div class="mypage_right_my_left_grade brlg br5" onclick="moveToFAQ();">
								<div class="mypage_activity_row1_grade1_title mypage_title fl"><i class="fa-regular fa-question fa-xl" style="line-height: 150%; padding: 5px 10px 0 10px;"></i> FAQ 자주묻는질문</div>
								<div class="mypage_count fl">확인</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="blank_bottom"><%-- 여백 --%></div>
	</div>
		
	<%@ include file="../common/footer.jsp" %>
	
	<script src="resources/js/member/memberMypage.js"></script>
</body>
</html>