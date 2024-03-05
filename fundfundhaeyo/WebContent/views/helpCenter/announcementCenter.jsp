<%@page import="com.kh.semi1st.common.model.vo.*"%>
<%@page import="com.kh.semi1st.company.model.vo.*"%>
<%@page import="java.util.*"%>
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
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뻔뻔해요</title>
<link rel="stylesheet" href="resources/css/helpCenter/announcementCenter.css">
</head>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<body>
	<%@ include file="../common/header.jsp" %>
	
	<div class="announcement_center_outer font_outer">
		<div class="blank_top"><%-- 여백 --%></div>
		
		<div class="announcement_center_main">
		
			<div class="announcement_center_main_top font_outer">
				<div class="announcement_center_main_top_row1">
					<h1 class="announcement_center_main_top_row1_title">고객지원</h1>
				</div>
				<div class="announcement_center_main_top_row2">
					<div class="announcement_center_main_top_row2_bottom"></div>
				</div>
			</div>
			<div class="announcement_center_main_navi">
				<div class="btn-a fl"><a style="color: skyblue;">공지사항</a></div>
				<div class="btn-b fl"><a href="<%= contextPath %>/faq.hp">FAQ</a></div>
				<div class="btn-c fl"><a href="<%= contextPath %>/qna.hp?cpage=1">Q&A</a></div>
				<div class="btn-d fl"><a href="<%= contextPath %>/guide.hp">펀딩 가이드</a></div>
			</div>
			<div class="announcement_center_main_select"><%-- 여백 --%></div>
			<div class="announcement_center_main_content">
				<table border=1 class="announcement_list_area">
					<thead>
						<tr>
		                    <th width="100">글번호</th>
		                    <th>글제목</th>
		                    <th width="100">작성자</th>
		                    <th width="100">조회수</th>
		                    <th width="130">작성일</th>
                		</tr>
					</thead>
					<tbody>
					
					<%-- 공지사항이 없을 경우 --%>
					<% if(list.isEmpty()){ %>
						<tr>
							<td colspan="5">존재하는 공지사항이 없습니다.</td>
						</tr>
					<% }else{ %>
						<%-- 공지사항이 있을 경우 --%>
						<% if(pi.getBoardLimit() > list.size()){ %>
							<% for(Announcement v : list){ %>
							<tr>
								<td><%= v.getAnnouncementNo() %></td>
								<td><%= v.getAnnouncementTitle() %></td>
								<td><%= v.getAnnouncementWriter() %></td>
								<td><%= v.getAnnouncementCount() %></td>
								<td><%= v.getAnnouncementCreateDate() %></td>
							</tr>
							<% for(int i = 0; i < pi.getBoardLimit() - list.size(); i++){ %>
							<tr class="no-border">
								<td class="no-border">&nbsp;</td>
								<td class="no-border">&nbsp;</td>
								<td class="no-border">&nbsp;</td>
								<td class="no-border">&nbsp;</td>
								<td class="no-border">&nbsp;</td>
							</tr>
							<% } %>
						<% } %>
						<% }else{ %>
							<% for(Announcement v : list){ %>
							<tr>
								<td><%= v.getAnnouncementNo() %></td>
								<td><%= v.getAnnouncementTitle() %></td>
								<td><%= v.getAnnouncementWriter() %></td>
								<td><%= v.getAnnouncementCount() %></td>
								<td><%= v.getAnnouncementCreateDate() %></td>
							</tr>
							<% } %>
						<% } %>
					<% } %>
					
					</tbody>					
				</table>
			</div>
			
			<%-- 페이징바 --%>
			<div class="announcement_center_main_bottom">
				<% if(currentPage != 1){ %>
            		<button type="button" onclick="location.href='<%= contextPath %>/announcement.hp?cpage=<%= currentPage-1 %>'">←</button>
	        	<% }else{ %>
	        		<button type="button" onclick="location.href='<%= contextPath %>/announcement.hp?cpage=<%= currentPage-1 %>'" disabled>←</button>
	        	<% } %>
	        	
	            <% for(int p = startPage; p <= endPage; p++){ %>
	            	<% if(p == currentPage){ %>
	            		<button type="button" disabled><%= p %></button>
	            	<% }else{ %>
	            		<button type="button" onclick="location.href='<%= contextPath %>/announcement.hp?cpage=<%= p %>'"><%= p %></button>
	            	<% } %>
	            <% } %>
	            
	            <% if(currentPage != maxPage){ %>
	            	<button type="button" onclick="location.href='<%= contextPath %>/announcement.hp?cpage=<%= currentPage+1 %>'">→</button>
	            <% }else{ %>
	            	<button type="button" onclick="location.href='<%= contextPath %>/announcement.hp?cpage=<%= currentPage+1 %>'" disabled>→</button>
	            <% } %>
			</div>
	    </div>
	    
	    <div class="blank_bottom"><%-- 여백 --%></div>
    </div>
	
	<%@ include file="../common/footer.jsp" %>
	
	<script src="resources/js/helpCenter/announcementCenter.js" rel="javascript"></script>
</body>
</html>