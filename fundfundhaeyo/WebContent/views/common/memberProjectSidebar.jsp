<%@page import="java.net.URLDecoder"%>
<%@page import="com.kh.semi1st.project.model.vo.Project"%>
<%@page import="com.kh.semi1st.member.model.vo.Member"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뻔뻔해요</title>
<link rel="stylesheet" href="resources/css/memberProjectSidebar.css">
</head>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<body>
	<h4 align="center";>최근 본 상품목록</h4>
	<hr>
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
	
	<script src="resources/js/memberProjectSide.js"></script>
</body>
</html>