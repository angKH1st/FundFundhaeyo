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
<link rel="stylesheet" href="resources/css/member/memberBanProject.css">
</head>
<link rel="icon" sizes="32x32" type="image/png" href="resources/image/main.ico">
<body>
	<%@ include file="../common/header.jsp" %>
	
	<div class="mypage_ban_Form_outer font_outer">
		<div class="blank_top"><%-- 여백 --%></div>
		
			<div class="mypage_ban_Form_main shadow brlg br5">
				<div class="mypage_ban_Form_left fl">
					<%@ include file="../common/memberMypageSidebar.jsp" %>
				</div>
				<div class="mypage_ban_Form_right fl">
					<div class="mypage_ban_Form_right_content1 pd15">
						<div class="mypage_ban_Form_right_root">
							<span><a href="<%= request.getContextPath() %>/mypage.me">Home</a></span>
							<span> > </span>
							<span>나의창작</span>
						</div>
						<div class="mypage_ban_Form_right_title"><h3>반려된 프로젝트</h3></div>
						<div class="mypage_ban_Form_right_list brlg br5 pd15">
						<% if(list.size() == 0){ %>
								반려된 창작 프로젝트가 없습니다.
							<% }else{ %>
								<% for(Project p : list){ %>
									<div onclick=location.href="<%= contextPath %>/detail.pr?pno=<%= p.getProjectNo() %>" class="mypage_ban_Form_right_list_project prHoverContainer fl brlg br5">
										<div class="mypage_ban_project_img prHover">
											<img src="<%= p.getProjectTitleImg() %>" width=200 height=150>
										</div>
										<div class="mypage_ban_project_title"><%= p.getProjectTitle() %></div>
										<div class="mypage_ban_project_info">
											<div class="mypage_ban_project_funding fl"><span class="percentage" style="color: red;">반려</span></div>
											<div class="mypage_ban_project_dday fl">
											</div>
										</div>
									</div>
								<% } %>
							<% } %>
						</div>
					</div>
					<div class="mypage_ban_Form_right_content2 pd15">
						<div class="mypage_ban_Form_right_title2">
						<% if(currentPage != 1){ %>
		            		<button type="button" onclick="location.href='<%= contextPath %>/banProject.me?cpage=<%= currentPage-1 %>'">←</button>
			        	<% }else{ %>
			        		<button type="button" onclick="location.href='<%= contextPath %>/banProject.me?cpage=<%= currentPage-1 %>'" disabled>←</button>
			        	<% } %>
			        	
			            <% for(int p = startPage; p <= endPage; p++){ %>
			            	<% if(p == currentPage){ %>
			            		<button type="button" disabled><%= p %></button>
			            	<% }else{ %>
			            		<button type="button" onclick="location.href='<%= contextPath %>/banProject.me?cpage=<%= p %>'"><%= p %></button>
			            	<% } %>
			            <% } %>
			            
			            <% if(currentPage != maxPage){ %>
			            	<button type="button" onclick="location.href='<%= contextPath %>/banProject.me?cpage=<%= currentPage+1 %>'">→</button>
			            <% }else{ %>
			            	<button type="button" onclick="location.href='<%= contextPath %>/banProject.me?cpage=<%= currentPage+1 %>'" disabled>→</button>
			            <% } %>
						</div>
						<div class="mypage_ban_Form_right_blank"></div>
					</div>
				</div>
			</div>
		<div class="blank_bottom"><%-- 여백 --%></div>
	</div>
		
	<%@ include file="../common/footer.jsp" %>
	
	<script src="resources/js/member/memberBanProject.js"></script>
</body>
</html>