<%@page import="java.sql.Date"%>
<%@page import="java.time.temporal.ChronoUnit"%>
<%@page import="java.time.LocalDate"%>
<%@page import="com.kh.semi1st.project.model.vo.Project"%>
<%@page import="com.kh.semi1st.common.model.vo.PageInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<Project> list = (ArrayList<Project>)request.getAttribute("list");

	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
	
	//현재 날짜
	LocalDate now = LocalDate.now();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뻔뻔해요</title>
<link rel="stylesheet" href="resources/css/member/memberOngoingProject.css">
</head>
<link rel="icon" sizes="32x32" type="image/png" href="resources/image/main.ico">
<body>
	<%@ include file="../common/header.jsp" %>
	
	<div class="mypage_ongoing_Form_outer font_outer">
		<div class="blank_top"><%-- 여백 --%></div>
		
			<div class="mypage_ongoing_Form_main shadow brlg br5">
				<div class="mypage_ongoing_Form_left fl">
					<%@ include file="../common/memberMypageSidebar.jsp" %>
				</div>
				<div class="mypage_ongoing_Form_right fl">
					<div class="mypage_ongoing_Form_right_content1 pd15">
						<div class="mypage_ongoing_Form_right_root">
							<span><a href="<%= request.getContextPath() %>/mypage.me">Home</a></span>
							<span> > </span>
							<span>나의창작</span>
						</div>
						<div class="mypage_ongoing_Form_right_title"><h3>진행중인 프로젝트</h3></div>
						<div class="mypage_ongoing_Form_right_list brlg br5 pd15">
						<% if(list.size() == 0){ %>
							진행중인 창작 프로젝트가 없습니다.
						<% }else{ %>
							<% for(Project p : list){ %>
								<div onclick=location.href="<%= contextPath %>/detail.pr?pno=<%= p.getProjectNo() %>" class="mypage_ongoing_Form_right_list_project prHoverContainer fl brlg br5">
									<div class="mypage_ongoing_project_img prHover">
										<img class="br10" src="<%= p.getProjectTitleImg() %>" width=200 height=150>
									</div>
									<div class="mypage_ongoing_project_title"><%= p.getProjectTitle() %></div>
									<div class="mypage_ongoing_project_info">
										<div class="mypage_ongoing_project_funding fl"><span class="percentage"><%= p.getProjectFunding() %>% 달성</span></div>
										<div class="mypage_ongoing_project_dday fl">
											<% if((long)(ChronoUnit.DAYS.between(now, ((Date)p.getProjectEnd()).toLocalDate())) == 0){ %>
											<span class="project-d-day" style="color: red">오늘 마감!</span>
											<% }else{ %>
											<span class="project-d-day">D-<%= (long)(ChronoUnit.DAYS.between(now, ((Date)p.getProjectEnd()).toLocalDate())) %></span>
											<% } %>
										</div>
									</div>
								</div>
							<% } %>
						<% } %>
						</div>
					</div>
					<div class="mypage_ongoing_Form_right_content2 pd15">
						<div class="mypage_ongoing_Form_right_title2">
						<% if(currentPage != 1){ %>
		            		<button type="button" onclick="location.href='<%= contextPath %>/ongoingProject.me?cpage=<%= currentPage-1 %>'">←</button>
			        	<% }else{ %>
			        		<button type="button" onclick="location.href='<%= contextPath %>/ongoingProject.me?cpage=<%= currentPage-1 %>'" disabled>←</button>
			        	<% } %>
			        	
			            <% for(int p = startPage; p <= endPage; p++){ %>
			            	<% if(p == currentPage){ %>
			            		<button type="button" disabled><%= p %></button>
			            	<% }else{ %>
			            		<button type="button" onclick="location.href='<%= contextPath %>/ongoingProject.me?cpage=<%= p %>'"><%= p %></button>
			            	<% } %>
			            <% } %>
			            
			            <% if(currentPage != maxPage && maxPage != 0){ %>
			            	<button type="button" onclick="location.href='<%= contextPath %>/ongoingProject.me?cpage=<%= currentPage+1 %>'">→</button>
			            <% }else{ %>
			            	<button type="button" onclick="location.href='<%= contextPath %>/ongoingProject.me?cpage=<%= currentPage+1 %>'" disabled>→</button>
			            <% } %>
						</div>
						<div class="mypage_ongoing_Form_right_blank"></div>
					</div>
				</div>
			</div>
		<div class="blank_bottom"><%-- 여백 --%></div>
	</div>
		
	<%@ include file="../common/footer.jsp" %>
	
	<script src="resources/js/member/memberOngoingProject.js"></script>
</body>
</html>