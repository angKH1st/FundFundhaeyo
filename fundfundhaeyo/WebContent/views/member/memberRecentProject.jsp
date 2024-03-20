<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뻔뻔해요</title>
<link rel="stylesheet" href="resources/css/member/memberRecentProject.css">
</head>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<body>
	<%@ include file="../common/header.jsp" %>
	
	<div class="mypage_recent_Form_outer font_outer">
		<div class="blank_top"><%-- 여백 --%></div>
		
			<div class="mypage_recent_Form_main shadow brlg br5">
				<div class="mypage_recent_Form_left fl">
					<%@ include file="../common/memberMypageSidebar.jsp" %>
				</div>
				<div class="mypage_recent_Form_right fl">
					<div class="mypage_recent_Form_right_content1 pd15">
						<div class="mypage_recent_Form_right_root">
							<span><a href="<%= request.getContextPath() %>/mypage.me">Home</a></span>
							<span> > </span>
							<span>나의활동</span>
						</div>
						<div class="mypage_recent_Form_right_title"><h3>최근 본 프로젝트</h3></div>
						<div class="mypage_recent_Form_right_list brlg br5">
							<div class="recent_btn_area">
								<div class="recent_btn fl">
									최근 본 5개 프로젝트입니다. 
								</div> 
								<div class="recent_cnt fl">
								</div>
							</div>
							<div class="recent_recent_area">
							<%
								// 쿠키 가져오기
								Cookie[] cookies = null;
								if((Member)(request.getSession().getAttribute("loginUser")) != null){
									cookies = request.getCookies();
								}
							
								if(cookies != null){
							%>
								<div class="member_pr_form">
							<%	
								for(Cookie c : cookies) {
									if(c.getName().contains("recent_products")) {
										
										String value = URLDecoder.decode(c.getValue(), "UTF-8");
										
										String[] products = value.split("/");
										
										for(int i = 0; i < products.length; i++) {
								            String product = products[i];
								            if (!product.equals("")) { // 빈 문자열이 아닌 경우에만 출력
							%>
						               	<input type="hidden" id="count" value="<%= products.length %>">
						               	<input type="hidden" id="p<%= i %>" value="<%= product %>">
							<%	
									           }
									        }     			
										}
									}
								}
							%>
								</div>	
							</div>
						</div>
					</div>
				</div>
			</div>
		<div class="blank_bottom"><%-- 여백 --%></div>
	</div>
		
	<%@ include file="../common/footer.jsp" %>
	
	<script src="resources/js/member/memberRecentProject.js"></script>
</body>
</html>