<%@page import="com.kh.semi1st.member.model.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Member loginUser = (Member)session.getAttribute("loginUser");
	String contextPath = request.getContextPath() + "/admin";
	
	String alertMsg = (String)session.getAttribute("alertMsg");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뻔뻔해요</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link rel="stylesheet" href="resources/css/admin/common/adminHeader.css">
<script src="resources/js/admin/common/adminHeader.js" rel="javascript"></script>
<script src="https://kit.fontawesome.com/4dc2c036ac.js" crossorigin="anonymous"></script>
</head>
<body>
	<% if(alertMsg != null) { %>
		<script>
			alert("<%= alertMsg %>");	
		</script>
		<% session.removeAttribute("alertMsg"); %>
	<% } %>
	
	<div class="adm-header">
		<div class="adm-header-left fl">
			<div class="adm-header-left-col1 fl">
				<button id="sidebarToggle"><i class="fa-solid fa-bars fa-xl"></i></button>
			</div>
			<div class="adm-header-left-col2 fl">
				<a href="<%= contextPath %>" class="hoverA">Home</a>
			</div>
			<div class="adm-header-left-col3 fl">
				<%-- 여백 --%>
			</div>
		</div>
		<div class="adm-header-center fl">
    		<%-- 여백 --%>
		</div>
		<div class="adm-header-right fl">
			<div class="adm-header-right-col1 fl"></div>
			<div class="adm-header-right-col2 fl"></div>
			<div class="adm-header-right-col3 fl"></div>
			<div class="adm-header-right-col4 fl">
				<div class="notification">
					<a href="#"><i class="fa-regular fa-bell fa-xl" style="line-height: 150%;"></i></a>
					<span class="badge">3</span> 
				</div>
			</div>
			<div class="adm-header-right-col5 fl"></div>
		</div>
	</div>
	
</body>
</html>