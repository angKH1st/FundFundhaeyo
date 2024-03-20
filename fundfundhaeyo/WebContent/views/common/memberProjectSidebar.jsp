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
<body>

<h4 align="center";>최근 본 상품목록</h4><br>

	<%
		// 쿠키 가져오기
		Cookie[] cookies = request.getCookies();
	
		for(Cookie c : cookies) {
			if(c.getName().contains("recent_products")) {
				
				String value = URLDecoder.decode(c.getValue(), "UTF-8");
				
				String[] products = value.split("/");
				
				for(int i = 0; i < products.length; i++) { // 향상된 for문 대신 일반 for문 사용
		            String product = products[i];
		            if (!product.equals("")) { // 빈 문자열이 아닌 경우에만 출력
		%>
		                <input type="text" name="p<%= i+1 %>" value="<%= product %>"><br>
		<%	
		           }
		          
		        }     			
// 				String name = c.getName();	
// 				out.print("글번호" + ":" + value + "<br>");
			}
		}
	
	%>
		
<%-- 		<% for(int i = 0 ; i < cookies.length; i++){ %> --%>
<%-- 		<input type="text" value=<%= (String)URLDecoder.decode(cookies[i].getValue(), "UTF-8") %>>  --%>
<%-- 		<% } %> --%>
	

	
<%-- 	<%@ include file="../common/memberProjectSidebar.jsp" %> --%>
</body>
</html>