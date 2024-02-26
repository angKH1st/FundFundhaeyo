<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<Member> list = (ArrayList<Member>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뻔뻔해요</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link rel="stylesheet" href="resources/css/admin/member/adminMemberSelect.css">
<script src="resources/js/admin/member/adminMemberSelect.js" rel="javascript"></script>
</head>
<body>
	<%@ include file="../common/adminHeader.jsp" %>
	
    <div class="adm-content">
	    <div class="adm-content-top">
	    	<div class="adm-content-top-title fl"><h1>회원정보조회</h1></div>
	    	<div class="adm-content-top-blank fl"></div>
	    	<div class="adm-content-top-root fl">
	    		<div class="adm-content-top-root-first fl"><a href="<%= contextPath %>">Home</a></div>
	    		<div class="adm-content-top-root-second fl">/</div>
	    		<div class="adm-content-top-root-third fl">Member</div>
	    	</div>
	    </div>
	    <div class="adm-content-center">
	    	<div class="adm-content-center-top">
	    	
	    	</div>
	    	<div class="adm-content-center-main">
	    		<div class="adm-content-center-main1"></div>
	    		<div class="adm-content-center-main2">
	    			<table border=1>
	    				<thead>
	    					<tr>
	    						<th>회원번호</th>
	    						<th>이름</th>
	    						<th>닉네임</th>
	    						<th>소개말</th>
	    						<th>상태값</th>
	    					</tr>
	    				</thead>
	    				<tbody>
	    					<% for(Member m : list){ %>
	    					<tr>
	    						<th><%= m.getUserNo() %></th>
	    						<th><%= m.getUserName() %></th>
	    						<th><%= m.getUserNickname() %></th>
	    						<th><%= m.getUserProfile() %></th>
	    						<th><%= m.getUserStatus() %></th>
	    					</tr>
	    					<% } %>
	    				</tbody>
	    			</table>
	    		</div>
	    		<div class="adm-content-center-main3"></div>
	    	</div>
	    </div>
	</div>
	
	<%@ include file="../common/adminSidebar.jsp" %>
	
	<%@ include file="../common/adminFooter.jsp" %>
</body>
</html>