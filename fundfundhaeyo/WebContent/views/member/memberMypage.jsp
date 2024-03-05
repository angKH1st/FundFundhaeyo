<%@page import="java.util.Locale"%>
<%@page import="java.text.NumberFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Member seller = (Member)request.getAttribute("seller"); 
	Member buyer = (Member)request.getAttribute("buyer"); 
	
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
							<div class="mypage_activity_row1_grade1 hoverA2-2 fl">
								<div class="mypage_activity_row1_grade1_title"><h4>후원활동</h4></div>
								<div class="mypage_activity_row1_grade1_count"><h3><%= buyer.getBuyerCount() %></h3><h5> 회</h5></div>
							</div>
							<div class="mypage_activity_row1_grade2 hoverA2-2 fl">
								<div class="mypage_activity_row1_grade2_title"><h4>후원금액</h4></div>
								<div class="mypage_activity_row1_grade2_count"><h3><%= nf.format(buyer.getBuyerFunding()) %></h3><h5> 원</h5></div>
							</div>
							<div class="mypage_activity_row1_grade3 hoverA2-2 fl">
								<div class="mypage_activity_row1_grade3_title"><h4>창작활동</h4></div>
								<div class="mypage_activity_row1_grade3_count"><h3><%= seller.getSellerCount() %></h3><h5> 회</h5></div>
							</div>
							<div class="mypage_activity_row1_grade4 hoverA2-2 fl">
								<div class="mypage_activity_row1_grade4_title"><h4>창작금액</h4></div>
								<div class="mypage_activity_row1_grade4_count"><h3><%= nf.format(seller.getSellerFunding()) %></h3><h5> 원</h5></div>
							</div>
						</div>
						<div class="mypage_activity_row2">
							<div class="mypage_activity_row2_grade1 bglg fl">
								<a href="#">???</a>
							</div>
							<div class="mypage_activity_row2_grade2 bglg fl">
								<a href="#">???</a>
							</div>
							<div class="mypage_activity_row2_grade3 bglg fl">
								<a href="#">???</a>
							</div>
							<div class="mypage_activity_row2_grade4 bglg fl">
								<a href="#">???</a>
							</div>
						</div>
					</div>
				</div>
				<div class="mypage_right_content2 pd15">
					<div class="mypage_right_title2"><h3>제목</h3></div>
					<div class="mypage_right_TBD brlg br5">TBD 클래스이름 고쳐야함</div>
				</div>
			</div>
		</div>
		
		<div class="blank_bottom"><%-- 여백 --%></div>
	</div>
		
	<%@ include file="../common/footer.jsp" %>
	
	<script src="resources/js/member/memberMypage.js"></script>
</body>
</html>