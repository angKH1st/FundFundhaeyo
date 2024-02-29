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
	    		top : TBU
	    	</div>
	    	<div class="adm-content-center-main">
	    		<div class="adm-content-center-main-header">회원정보조회</div>
	    		<div class="adm-content-center-main-body">
	    			<div class="adm-content-center-main-body1">
	    				<div class="adm-content-center-main-body1-col1 fl">숫자박스</div>
	    				<div class="adm-content-center-main-body1-col2 fl">entries per page</div>
	    				<div class="adm-content-center-main-body1-col3 fl"><%-- 여백 --%></div>
	    				<div class="adm-content-center-main-body1-col4 fl">
	    					<div class="adm-content-center-main-body1-col4-searchInput fl"><input type="text" style="width: 100%; height: 100%;"></div>
	    					<div class="adm-content-center-main-body1-col4-searchBtn fl"><a href="#"><i class="fa-solid fa-magnifying-glass fa-xl" style="width: 100%; height: 100%; line-height: 110%;"></i></a></div>
	    				</div>
	    			</div>
	    			<div class="adm-content-center-main-body2">
	    				<table>
	    				<thead>
	    					<tr>
	    						<td style="width:40px;">#</td>
	    						<td style="width:100px;">회원번호</td>
	    						<td style="width:120px;">이름</td>
	    						<td style="width:120px;">아이디</td>
	    						<td style="width:200px;">닉네임</td>
	    						<td style="width:200px;">이메일</td>
	    						<td style="width:440px;">소개말</td>
	    						<td style="width:140px;">회원가입일</td>
	    						<td style="width:100px;">등급</td>
	    						<td style="width:100px;">상태값</td>
	    						<td style="width:200px;">수정</td>
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