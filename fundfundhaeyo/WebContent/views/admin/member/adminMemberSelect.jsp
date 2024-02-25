<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	
    <div class="adm-member-select-wrap">
	    <div class="adm-member-select-top">
	    	<div class="adm-member-select-top-title fl"><h1>회원정보조회</h1></div>
	    	<div class="adm-member-select-top-blank fl"></div>
	    	<div class="adm-member-select-top-root fl">
	    		<div class="adm-member-select-top-root-first fl"><a href="<%= contextPath %>">Home</a></div>
	    		<div class="adm-member-select-top-root-second fl">/</div>
	    		<div class="adm-member-select-top-root-third fl">Member</div>
	    	</div>
	    </div>
	    <div class="adm-member-select-center"></div>
	</div>
	
	<%@ include file="../common/adminSidebar.jsp" %>
	
	<%@ include file="../common/adminFooter.jsp" %>
</body>
</html>