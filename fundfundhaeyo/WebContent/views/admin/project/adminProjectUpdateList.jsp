<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뻔뻔해요</title>
<link rel="stylesheet" href="resources/css/admin/project/adminProjectUpdateList.css">
</head>
<link rel="icon" sizes="32x32" type="image/png" href="resources/image/main.ico">
<body>
	<%@ include file="../common/adminHeader.jsp" %>
	
    <div class="adm-content font_outer">
	    <div class="adm-content-top">
	    	<div class="adm-content-top-title fl"><h1>프로젝트조회</h1></div>
	    	<div class="adm-content-top-blank fl"></div>
	    	<div class="adm-content-top-root fl">
	    		<div class="adm-content-top-root-first fl"><a href="<%= contextPath %>">Home</a></div>
	    		<div class="adm-content-top-root-second fl">/</div>
	    		<div class="adm-content-top-root-third fl">Project</div>
	    	</div>
	    </div>
	    <div class="adm-content-center">
	    	<div class="adm-content-center-top">
	    		모든 심사 대상 프로젝트의 정보를 조회합니다.
	    	</div>
	    	<div class="adm-content-center-main">
	    		<div class="adm-content-center-main-header">프로젝트심사 리스트</div>
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
	    						<td style="width:40px;">#</td>
	    						<td style="width:120px;">프로젝트번호</td>
	    						<td style="width:80px;">이미지</td>
	    						<td style="width:120px;">창작자</td>
	    						<td style="width:120px;">카테고리</td>
	    						<td style="width:230px;">태그</td>
	    						<td style="width:440px;">제목</td>
	    						<td style="width:150px;">목표금액</td>
	    						<td style="width:130px;">시작일</td>
	    						<td style="width:130px;">종료일</td>
	    						<td style="width:100px;">상태</td>
	    						<td style="width:100px;">수정</td>
	    					</tr>
	    				</thead>
	    				<tbody>
	    				</tbody>
	    			</table>
	    			</div>
	    			<div class="adm-content-center-main-body3">
	    				<br>
	    				<div class="adm-content-center-main-body3-col1 fl">
	    					Showing
	    					<span class="adm-content-center-main-body3-col1-startPoint">0</span>
	    					 to 
	    					<span class="adm-content-center-main-body3-col1-endPoint">0</span>
	    					 of 
	    					<span class="adm-content-center-main-body3-col1-totalPoint">0</span>
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
	
	<script type="text/javascript" src="resources/js/admin/project/adminProjectUpdateList.js"></script>
</body>
</html>