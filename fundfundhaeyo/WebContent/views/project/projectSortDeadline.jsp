<%@page import="java.sql.Date"%>
<%@page import="java.time.temporal.ChronoUnit"%>
<%@page import="java.time.LocalDate"%>
<%@page import="com.kh.semi1st.project.model.vo.Project"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<Project> deadlineList = (ArrayList<Project>)request.getAttribute("deadlineList");

	//현재 날짜
	LocalDate now = LocalDate.now();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뻔뻔해요</title>
<link rel="stylesheet" href="resources/css/project/projectSortDeadline.css">
</head>
<link rel="icon" sizes="32x32" type="image/png" href="resources/image/main.ico">
<body>
	<%@ include file="../common/header.jsp" %>
	
	<div class="project_sort_deadline_outer font_outer">
		<div class="blank_top">
			<%-- 여백 --%>
		</div>
		<div class="project_sort_deadline_main">
			<div class="project_sort_deadline_left fl">
				<div class="range_area">
					<div class="range_area_col1 fl">
						<div class="custom-select" id="customSelect">
							<div class="selected-option br5" id="selectedOption">달성률(%)</div>
							<div class="options-container" id="optionsContainer">
								<div class="option">전체보기</div>
								<div class="option">50% 이하</div>
								<div class="option">50%~100%</div>
								<div class="option">100% 이상</div>
							</div>
						</div>
					</div>
					<div class="range_area_col2 fl">
						<%-- 여백 --%>
					</div>
					<div class="range_area_col3 fl"><span class="percentage"><%= deadlineList.size() %></span>개의 프로젝트가 진행중입니다.</div>
				</div>
				<div class="project_area">
					<% if(deadlineList.size() < 5){ %>
						<% if(deadlineList.size() == 0){ %>
							<div class="project_area_pr fl" style="height: 828px;">
								조회 결과가 없습니다.
							</div>
						<% }else{ %>
							<% for(int i = deadlineList.size() - 1; i >= 0; i--) { %>
							<div class="project_area_pr fl">
							<br>
								<div class="project_area_head prHoverContainer">
									<a href="<%= contextPath %>/detail.pr?pno=<%= deadlineList.get(i).getProjectNo() %>"><img class="prHover br10" src="<%= deadlineList.get(i).getProjectTitleImg() %>" width="255" height="180"></a>
									<% if(loginUser != null) { %>
										<span class="likes" style="position: absolute; bottom: 10px; right: 10px; z-index: 10;" data-projectNo="<%= deadlineList.get(i).getProjectNo() %>"><i class="fa-solid fa-heart fa-xl"></i></span>
									<% } %>
								</div>
								<div class="project_area_body">
									<div class="project_area_body_row1">
										<a href="<%= contextPath %>/category.pr?cno=<%= deadlineList.get(i).getProjectCategoryNo() %>" class="pca"><%= deadlineList.get(i).getProjectCategoryName() %></a>
									</div>
									<div class="project_area_body_row2">
										<a href="<%= contextPath %>/detail.pr?pno=<%= deadlineList.get(i).getProjectNo() %>"><strong class="ptitle"><%= deadlineList.get(i).getProjectTitle() %></strong></a>
									</div>
									<div class="project_area_body_row3">
										<div class="project_area_body_row3_col1 fl">
											<span class="percentage"><%= deadlineList.get(i).getProjectFunding() %>% 달성</span>
										</div>
										<div class="project_area_body_row3_col2 fl"></div>
									</div>
									<div class="project_area_body_row4">
										<div class="progress-bar-pr">
											<div class="progressA" style="width: <%= (deadlineList.get(i).getProjectFunding() > 100 ? 100 : deadlineList.get(i).getProjectFunding()) %>%;"></div>
										</div>
									</div>
								</div>
							</div>
							<% } %>
							<div style="height: 548px;"></div>
						<% } %>
					<% }else{ %>
						<% for(int i = deadlineList.size() - 1; i >= 0; i--) { %>
						<div class="project_area_pr fl">
						<br>
							<div class="project_area_head prHoverContainer">
								<a href="<%= contextPath %>/detail.pr?pno=<%= deadlineList.get(i).getProjectNo() %>"><img class="prHover br10" src="<%= deadlineList.get(i).getProjectTitleImg() %>" width="255" height="180"></a>
								<% if(loginUser != null) { %>
									<span class="likes" style="position: absolute; bottom: 10px; right: 10px; z-index: 10;" data-projectNo="<%= deadlineList.get(i).getProjectNo() %>"><i class="fa-solid fa-heart fa-xl"></i></span>
								<% } %>
							</div>
							<div class="project_area_body">
								<div class="project_area_body_row1">
									<a href="<%= contextPath %>/category.pr?cno=<%= deadlineList.get(i).getProjectCategoryNo() %>" class="pca"><%= deadlineList.get(i).getProjectCategoryName() %></a>
								</div>
								<div class="project_area_body_row2">
									<a href="<%= contextPath %>/detail.pr?pno=<%= deadlineList.get(i).getProjectNo() %>"><strong class="ptitle"><%= deadlineList.get(i).getProjectTitle() %></strong></a>
								</div>
								<div class="project_area_body_row3">
									<div class="project_area_body_row3_col1 fl">
										<span class="percentage"><%= deadlineList.get(i).getProjectFunding() %>% 달성</span>
									</div>
									<div class="project_area_body_row3_col2 project-d-day-form fl">
										<% if((long)(ChronoUnit.DAYS.between(now, ((Date)deadlineList.get(i).getProjectEnd()).toLocalDate())) == 0){ %>
										<span class="project-d-day" style="color: red">오늘 마감!</span>
										<% }else{ %>
										<span class="project-d-day">D-<%= (long)(ChronoUnit.DAYS.between(now, ((Date)deadlineList.get(i).getProjectEnd()).toLocalDate())) %></span>
										<% } %>
									</div>
								</div>
								<div class="project_area_body_row4">
									<div class="progress-bar-pr">
										<div class="progressA" style="width: <%= (deadlineList.get(i).getProjectFunding() > 100 ? 100 : deadlineList.get(i).getProjectFunding()) %>%;"></div>
									</div>
								</div>
							</div>
						</div>
						<% } %>
					<% } %>
				</div>
			</div>
			<div class="project_sort_deadline_right pd15 brlg br5 fl">
				<%@ include file="../common/memberProjectSidebar.jsp" %>
			</div>
		</div>
		<div class="blank_bottom">
			<%-- 여백 --%>
		</div>
	</div>
    
	<%@ include file="../common/footer.jsp" %>
	
	<script src="resources/js/project/projectSortDeadline.js"></script>
</body>
</html>