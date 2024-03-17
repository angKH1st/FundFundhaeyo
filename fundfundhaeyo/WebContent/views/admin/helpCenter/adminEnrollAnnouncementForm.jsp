<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뻔뻔해요</title>
<link rel="stylesheet" href="resources/css/admin/helpCenter/adminEnrollAnnouncementForm.css">
</head>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<body>
	<%@ include file="../common/adminHeader.jsp" %>
	
	<form action="admEnrollAnnouncement.hp" method="get">
    <div class="adm-content font_outer">
	    <div class="adm-content-top">
	    	<div class="adm-content-top-title fl"><h1>공지사항작성</h1></div>
	    	<div class="adm-content-top-blank fl"></div>
	    	<div class="adm-content-top-root fl">
	    		<div class="adm-content-top-root-first fl"><a href="<%= contextPath %>">Home</a></div>
	    		<div class="adm-content-top-root-second fl">/</div>
	    		<div class="adm-content-top-root-third fl">HelpCenter</div>
	    	</div>
	    </div>
	    <div class="adm-content-center">
	    	<div class="adm-content-center-top">
	    		공지사항을 작성합니다.
	    	</div>
	    	<div class="adm-content-center-main">
	    		<div class="adm-content-center-main-header">공지사항작성</div>
	    		<div class="adm-content-center-main-body">
	    			<div class="adm-content-center-main-body fl">
		    			<div class="adm-content-center-main-body-inside brlg br5 pd15">
			    			<div class="adm-content-center-main-body-row1">
			    				<div class="adm-announcement-title centerXY fl">제목</div>
			    				<div class="adm-announcement-title-input fl"><input type="text" name="title" required></div>
			    			</div>
			    			<div class="adm-content-center-main-body-row2">
			    				<div class="adm-announcement-content centerXY fl">내용</div>
			    				<div class="adm-announcement-content-input fl"><textarea name="content" required></textarea></div>
			    			</div>
			    			<div class="adm-content-center-main-body-row3 centerXY">
			    				<button type="submit" disabled>제출</button>
			    				<button type="reset">초기화</button>
			    			</div>
		    			</div>
	    			</div>
	    		</div>
		    </div>
		</div>
	</div>
	</form>
	
	<%@ include file="../common/adminSidebar.jsp" %>
	
	<%@ include file="../common/adminFooter.jsp" %>
	
	<script type="text/javascript" src="resources/js/admin/helpCenter/adminEnrollAnnouncementForm.js"></script>
</body>
</html>