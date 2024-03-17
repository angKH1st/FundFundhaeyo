<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뻔뻔해요</title>
<link rel="stylesheet" href="resources/css/admin/project/adminProjectSelect.css">
</head>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
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
	    		모든 프로젝트의 정보를 조회합니다.
	    	</div>
	    	<div class="adm-content-center-main">
	    		<div class="adm-content-center-main-header">프로젝트조회</div>
	    		<div class="adm-content-center-main-body">
	    			<div class="adm-content-center-main-body1">
	    				<div class="adm-content-center-main-body1-col1 fl"><%-- numberBox --%></div>
	    				<div class="adm-content-center-main-body1-col2 fl"><%-- entries per page --%></div>
	    				<div class="adm-content-center-main-body1-col3 fl"><%-- 여백 --%></div>
	    				<div class="adm-content-center-main-body1-col4 fl">
	    					<div class="adm-content-center-main-body1-col4-searchInput fl"><input type="text" style="width: 100%; height: 100%; border: none; border-right: 0.5px solid lightgray;"></div>
	    					<div class="adm-content-center-main-body1-col4-searchBtn fl"><a href="#"><i class="fa-solid fa-magnifying-glass fa-xl" style="width: 100%; height: 100%; color: black; padding: 3px 0 0 3px; line-height: 110%;"></i></a></div>
	    				</div>
	    			</div>
	    			<div class="adm-content-center-main-body2">
	    				<table>
	    				<thead>
	    					<tr>
	    						<th style="width:40px;">#</th>
	    						<th style="width:120px;">프로젝트번호</th>
	    						<th style="width:80px;">이미지</th>
	    						<th style="width:120px;">창작자</th>
	    						<th style="width:120px;">카테고리</th>
	    						<th style="width:220px;">태그</th>
	    						<th style="width:430px;">제목</th>
	    						<th style="width:150px;">목표금액</th>
	    						<th style="width:120px;">펀딩률</th>
	    						<th style="width:130px;">시작일</th>
	    						<th style="width:130px;">종료일</th>
	    						<th style="width:100px;">상태</th>
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
	
	<script type="text/javascript" src="resources/js/admin/project/adminProjectSelect.js"></script>
</body>
</html>