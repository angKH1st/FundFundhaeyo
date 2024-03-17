<%@page import="java.util.ArrayList"%>
<%@page import="com.kh.semi1st.common.model.vo.*"%>
<%@page import="com.kh.semi1st.helpCenter.model.vo.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<Announcement> list = (ArrayList<Announcement>)request.getAttribute("list");
	// 공지 번호, 제목, 작성자, 조회수, 작성일

	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
	int boardLimit = pi.getBoardLimit();
	int listCount = pi.getListCount();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뻔뻔해요</title>
<link rel="stylesheet" href="resources/css/admin/helpCenter/adminAnnouncementCenter.css">
</head>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<body>
	<%@ include file="../common/adminHeader.jsp" %>
	
    <div class="adm-content font_outer">
	    <div class="adm-content-top">
	    	<div class="adm-content-top-title fl"><h1>공지사항조회</h1></div>
	    	<div class="adm-content-top-blank fl"></div>
	    	<div class="adm-content-top-root fl">
	    		<div class="adm-content-top-root-first fl"><a href="<%= contextPath %>">Home</a></div>
	    		<div class="adm-content-top-root-second fl">/</div>
	    		<div class="adm-content-top-root-third fl">HelpCenter</div>
	    	</div>
	    </div>
	    <div class="adm-content-center">
	    	<div class="adm-content-center-top">
	    		모든 공지사항을 조회합니다.
	    	</div>
	    	<div class="adm-content-center-main">
	    		<div class="adm-content-center-main-header">공지사항</div>
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
	    						<th style="width:160px;">공지사항번호</th>
	    						<th style="width:480px;">제목</th>
	    						<th style="width:750px;">내용</th>
	    						<th style="width:140px;">작성일</th>
	    						<th style="width:100px;">조회수</th>
	    						<th style="width:100px;">상태값</th>
	    						<th style="width:60px;">수정</th>
	    					</tr>
	    				</thead>
	    				<tbody>
	    				<% if(list.size() == 0){ %>
	    					<tr>
	    						<td colspan=8>조회된 공지사항이 없습니다.</td>
	    					</tr>
	    				<% }else{ %>
	    				<% } %>
	    					<% for(int i = 0; i < list.size(); i++){ %>
	    					<tr>
	    						<td class="center"><%= ((currentPage - 1) * boardLimit + i + 1)%></td>
	    						<td class="center"><%= list.get(i).getAnnouncementNo() %></td>
	    						<td><%= list.get(i).getAnnouncementTitle() %></td>
	    						<td><%= list.get(i).getAnnouncementContent() %></td>
	    						<td class="center"><%= list.get(i).getAnnouncementCreateDate() %></td>
	    						<td class="center"><%= list.get(i).getAnnouncementCount() %></td>
	    						<% if(list.get(i).getAnnouncementStatus().equals("Y")){ %>
	    						<td class="center">게시</td>
	    						<% }else{ %>
	    						<td class="center">비게시</td>
	    						<% } %>
	    						<td class="center"><a href="admMoveToUpdateAnnouncementForm.hp?aNo=<%= list.get(i).getAnnouncementNo() %>"><i class="hoverA2 fa-regular fa-pen-to-square fa-lg"></i></a></td>
	    					</tr>
	    					<% } %>
	    				</tbody>
	    			</table>
	    			</div>
	    			<div class="adm-content-center-main-body3">
	    				<div class="adm-content-center-main-body3-col1 fl">
	    					Showing
	    					<span class="adm-content-center-main-body3-col1-startPoint"><%= (currentPage - 1) * boardLimit + 1 %></span>
	    					 to 
	    					<span class="adm-content-center-main-body3-col1-endPoint"><%= (currentPage - 1) * boardLimit + 1 + list.size() - 1 %></span>
	    					 of 
	    					<span class="adm-content-center-main-body3-col1-totalPoint"><%= listCount %></span>
	    					entries
	    				</div>
	    				<div class="adm-content-center-main-body3-col2 fl"><%-- 여백 --%></div>
	    				<%-- 페이징바 --%>
	    				<div class="adm-content-center-main-body3-col3 fl">
	    				<% if(currentPage != 1){ %>
		            		<button type="button" onclick="location.href='admAnnouncement.hp?cpage=<%= currentPage-1 %>'">←</button>
			        	<% }else{ %>
			        		<button type="button" onclick="location.href='admAnnouncement.hp?cpage=<%= currentPage-1 %>'" disabled>←</button>
			        	<% } %>
			        	
			            <% for(int p = startPage; p <= endPage; p++){ %>
			            	<% if(p == currentPage){ %>
			            		<button type="button" disabled><%= p %></button>
			            	<% }else{ %>
			            		<button type="button" onclick="location.href='admAnnouncement.hp?cpage=<%= p %>'"><%= p %></button>
			            	<% } %>
			            <% } %>
			            
			            <% if(currentPage != maxPage){ %>
			            	<button type="button" onclick="location.href='admAnnouncement.hp?cpage=<%= currentPage+1 %>'">→</button>
			            <% }else{ %>
			            	<button type="button" onclick="location.href='admAnnouncement.hp?cpage=<%= currentPage+1 %>'" disabled>→</button>
			            <% } %>
	    				</div>
	    			</div>
	    		</div>
		    </div>
		</div>
	</div>
	
	<%@ include file="../common/adminSidebar.jsp" %>
	
	<%@ include file="../common/adminFooter.jsp" %>
	
	<script type="text/javascript" src="resources/js/admin/helpCenter/adminAnnouncementCenter.js"></script>
</body>
</html>