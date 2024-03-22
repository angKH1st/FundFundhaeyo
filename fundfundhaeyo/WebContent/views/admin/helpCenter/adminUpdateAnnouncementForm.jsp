<%@page import="com.kh.semi1st.helpCenter.model.vo.Announcement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Announcement a = null;
	if((Announcement)request.getAttribute("a") != null){
		a = (Announcement)request.getAttribute("a");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뻔뻔해요</title>
<link rel="stylesheet" href="resources/css/admin/helpCenter/adminUpdateAnnouncementForm.css">
</head>
<link rel="icon" sizes="32x32" type="image/png" href="resources/image/main.ico">
<body>
	<%@ include file="../common/adminHeader.jsp" %>
	
	<form action="admUpdateAnnouncement.hp" method="get">
    <div class="adm-content font_outer">
	    <div class="adm-content-top">
	    	<div class="adm-content-top-title fl"><h1>공지사항수정</h1></div>
	    	<div class="adm-content-top-blank fl"></div>
	    	<div class="adm-content-top-root fl">
	    		<div class="adm-content-top-root-first fl"><a href="<%= contextPath %>">Home</a></div>
	    		<div class="adm-content-top-root-second fl">/</div>
	    		<div class="adm-content-top-root-third fl">HelpCenter</div>
	    	</div>
	    </div>
	    <div class="adm-content-center">
	    	<div class="adm-content-center-top">
	    		공지사항을 수정합니다.
	    	</div>
	    	<div class="adm-content-center-main">
	    		<div class="adm-content-center-main-header">공지사항수정</div>
	    		<div class="adm-content-center-main-body">
	    			<div class="adm-content-center-main-body fl">
	    				<div class="adm-content-center-main-body-top">
	    					<div class="adm-content-center-main-body-top-search fl">수정할 공지사항의 번호를 입력</div>
	    					<div class="adm-content-center-main-body-top-search-input fl"><input type="number" id="search" name="search"></div>
	    					<div class="adm-content-center-main-body-top-search-btn fl" onclick="searchAnnouncement();"><i class="fa-solid fa-magnifying-glass fa-xl hoverA3" style="width: 100%; height: 100%;"></i></div>
	    				</div>
	    				<div class="adm-content-center-main-body-content">
		    				<div class="adm-content-center-main-body-inside brlg br5 pd15">
			    				<div class="adm-content-center-main-body-row0 centerXY">공지사항수정</div>
				    			<div class="adm-content-center-main-body-row1">
				    				<div class="adm-announcement-title">제목</div>
				    				<% if(a != null){ %>
				    				<div class="adm-announcement-title-input"><input type="text" name="title" value="<%= a.getAnnouncementTitle() %>" required></div>
				    				<% }else { %>
				    				<div class="adm-announcement-title-input"><input type="text" name="title" required></div>
				    				<% } %>
				    			</div>
				    			<div class="adm-content-center-main-body-blank"></div>
				    			<div class="adm-content-center-main-body-row2">
				    				<div class="adm-announcement-content">내용</div>
				    				<% if(a != null){ %>
				    				<div class="adm-announcement-content-input"><textarea name="content" required><%= a.getAnnouncementContent() %></textarea></div>
				    				<% }else { %>
				    				<div class="adm-announcement-content-input"><textarea name="content" required></textarea></div>
				    				<% } %>
				    			</div>
				    			<div class="adm-content-center-main-body-row3 centerXY">
				    				<button type="button" onclick="moveToAnnouncement();">목록으로</button>
				    				<input type="hidden" name="actionType" id="actionType" value="">
				    				<% if(a != null){ %>
				    				<input type="hidden" name="aNo" id="aNo" value="<%= a.getAnnouncementNo() %>">
				    				<% } %>
				    				<% if(a != null){ %>
				    				<button type="submit" id="submitBtn" disabled>제출</button>
				    				<% }else{ %>
				    				<button type="button" disabled>제출</button>
				    				<% } %>
				    				<button type="button" id="deleteBtn">삭제</button>
				    				<button type="reset">초기화</button>
				    			</div>
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
	
	<script type="text/javascript" src="resources/js/admin/helpCenter/adminUpdateAnnouncementForm.js"></script>
</body>
</html>