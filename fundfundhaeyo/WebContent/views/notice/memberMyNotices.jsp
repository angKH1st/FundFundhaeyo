<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	int type = (int)request.getAttribute("type"); 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뻔뻔해요</title>
<link rel="stylesheet" href="resources/css/notice/memberMyNotices.css">
</head>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<body>
	<%@ include file="../common/header.jsp" %>
	
	<div class="mypage_notices_Form_outer font_outer">
		<div class="blank_top"><%-- 여백 --%></div>
		
			<div class="mypage_notices_Form_main shadow brlg br5">
				<div class="mypage_notices_Form_left fl">
					<%@ include file="../common/memberMypageSidebar.jsp" %>
				</div>
				<div class="mypage_notices_Form_right fl">
					<div class="mypage_notices_Form_right_content1 pd15">
						<div class="mypage_notices_Form_right_root">
							<span><a href="<%= request.getContextPath() %>/mypage.me">Home</a></span>
							<span> > </span>
							<span>나의활동</span>
						</div>
						<div class="mypage_notices_Form_right_title"><h3>알림</h3></div>
						<div class="mypage_notices_Form_right_list brlg br5 pd15">
						<input type="hidden" id="defType" value="<%= type %>">
							<div class="notices_btn_area">
								<button type="button">전체</button> | 
								<button type="button">일반</button> |
								<button type="button">프로젝트</button> |
								<button type="button">Q&A</button> 
							</div>
							<div class="notices_notices_area">
								<div class="notices_area_left fl"></div>
								<div class="notices_area_right fl">
									<div class="notices_area_right_row1">
										<div class="notices_area_right_row1_title fl"></div>
										<div class="notices_area_right_row1_blank fl"></div>
										<div class="notices_area_right_row1_date fl"></div>
									</div>
									<div class="notices_area_right_row2"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		<div class="blank_bottom"><%-- 여백 --%></div>
	</div>
		
	<%@ include file="../common/footer.jsp" %>
	
	<script src="resources/js/notice/memberMyNotices.js"></script>
</body>
</html>