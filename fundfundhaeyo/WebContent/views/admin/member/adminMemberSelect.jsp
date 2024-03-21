<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뻔뻔해요</title>
<link rel="stylesheet" href="resources/css/admin/member/adminMemberSelect.css">
</head>
<body>
	<%@ include file="../common/adminHeader.jsp" %>
	
    <div class="adm-content font_outer">
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
	    		모든 회원의 정보를 조회합니다.
	    	</div>
	    	<div class="adm-content-center-main">
	    		<div class="adm-content-center-main-header">회원정보조회</div>
	    		<div class="adm-content-center-main-body">
	    			<div class="adm-content-center-main-body1">
	    				<div class="adm-content-center-main-body1-col1 fl"><%-- numberBox --%></div>
	    				<div class="adm-content-center-main-body1-col2 fl"><%-- entries per page --%></div>
	    				<div class="adm-content-center-main-body1-col3 fl"><%-- 여백 --%></div>
	    				<div class="adm-content-center-main-body1-col4 fl">
	    					<%--
	    					<div class="adm-content-center-main-body1-col4-searchInput fl"><input type="text" style="width: 100%; height: 100%; border: none; border-right: 0.5px solid lightgray;"></div>
	    					<div class="adm-content-center-main-body1-col4-searchBtn fl"><a href="#"><i class="fa-solid fa-magnifying-glass fa-xl" style="width: 100%; height: 100%; color: black; padding: 3px 0 0 3px; line-height: 110%;"></i></a></div>
	    					--%>
	    				</div>
	    			</div>
	    			<div class="adm-content-center-main-body2">
	    				<table>
	    				<thead>
	    					<tr>
	    						<th style="width:40px;">#</th>
	    						<th style="width:100px;">회원번호</th>
	    						<th style="width:60px;">이미지</th>
	    						<th style="width:120px;">이름</th>
	    						<th style="width:120px;">아이디</th>
	    						<th style="width:200px;">닉네임</th>
	    						<th style="width:240px;">이메일</th>
	    						<th style="width:550px;">소개말</th>
	    						<th style="width:140px;">회원가입일</th>
	    						<th style="width:100px;">등급</th>
	    						<th style="width:100px;">상태값</th>
	    						<th style="width:60px;">수정</th>
	    					</tr>
	    				</thead>
	    				<tbody>
	    				</tbody>
	    			</table>
	    			</div>
	    			<div class="adm-content-center-main-body3">
	    				<div class="adm-content-center-main-body3-col1 fl">
	    					Showing
	    					<span class="adm-content-center-main-body3-col1-startPoint"></span>
	    					 to 
	    					<span class="adm-content-center-main-body3-col1-endPoint"></span>
	    					 of 
	    					<span class="adm-content-center-main-body3-col1-totalPoint"></span>
	    					entries
	    				</div>
	    				<div class="adm-content-center-main-body3-col2 fl"><%-- 여백 --%></div>
	    				<%-- 페이징바 --%>
	    				<div class="adm-content-center-main-body3-col3 fl">
	    				</div>
	    			</div>
	    		</div>
	    	</div>
	    </div>
	</div>
	
	<%@ include file="../common/adminSidebar.jsp" %>
	
	<%@ include file="../common/adminFooter.jsp" %>
	
	<script type="text/javascript" src="resources/js/admin/member/adminMemberSelect.js"></script>
</body>
</html>