<%@page import="java.sql.Date"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.time.temporal.ChronoUnit"%>
<%@page import="com.kh.semi1st.project.model.vo.Project"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	ArrayList<Project> randomList = (ArrayList<Project>)request.getAttribute("randomList");

	//현재 날짜
	LocalDate now = LocalDate.now();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뻔뻔해요</title>
<link rel="stylesheet" href="resources/css/project/projectSortAll.css">
</head>
<link rel="icon" sizes="32x32" type="image/png" href="resources/image/main.ico">
<body>
	<%@ include file="../common/header.jsp"%>

	<div class="project_sort_all_outer font_outer">
		<div class="blank_top">
			<%-- 여백 --%>
		</div>
		<div class="project_sort_all_main">
			<div class="project_sort_all_left fl">
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
					<div class="range_area_col3 fl"><span class="percentage"><%= randomList.size() %></span>개의 프로젝트가 진행중입니다.</div>
				</div>
				<div class="project_area">
					<% if(randomList.size() < 5){ %>
						<% if(randomList.size() == 0){ %>
							<div class="project_area_pr fl" style="height: 828px;">
								조회 결과가 없습니다.
							</div>
						<% }else{ %>
							<% for(int i = 0; i < randomList.size(); i++) { %>
							<div class="project_area_pr fl">
							<br>
								<div class="project_area_head prHoverContainer">
									<a href="<%= contextPath %>/detail.pr?pno=<%= randomList.get(i).getProjectNo() %>"><img class="prHover br10" src="<%= randomList.get(i).getProjectTitleImg() %>" width="255" height="180"></a>
									<% if(loginUser != null) { %>
										<span class="likes" style="position: absolute; bottom: 10px; right: 10px; z-index: 10;" data-projectNo="<%= randomList.get(i).getProjectNo() %>"><i class="fa-solid fa-heart fa-xl"></i></span>
									<% } %>
								</div>
								<div class="project_area_body">
									<div class="project_area_body_row1">
										<a href="<%= contextPath %>/category.pr?cno=<%= randomList.get(i).getProjectCategoryNo() %>" class="pca"><%= randomList.get(i).getProjectCategoryName() %></a>
									</div>
									<div class="project_area_body_row2">
										<a href="<%= contextPath %>/detail.pr?pno=<%= randomList.get(i).getProjectNo() %>"><strong class="ptitle"><%= randomList.get(i).getProjectTitle() %></strong></a>
									</div>
									<div class="project_area_body_row3">
										<div class="project_area_body_row3_col1 fl">
											<span class="percentage"><%= randomList.get(i).getProjectFunding() %>% 달성</span>
										</div>
										<div class="project_area_body_row3_col2 project-d-day-form fl">
											<% if((long)(ChronoUnit.DAYS.between(now, ((Date)randomList.get(i).getProjectEnd()).toLocalDate())) == 0){ %>
											<span class="project-d-day" style="color: red">오늘 마감!</span>
											<% }else{ %>
											<span class="project-d-day">D-<%= (long)(ChronoUnit.DAYS.between(now, ((Date)randomList.get(i).getProjectEnd()).toLocalDate())) %></span>
											<% } %>
										</div>
									</div>
									<div class="project_area_body_row4">
										<div class="progress-bar-pr">
											<div class="progressA" style="width: <%= (randomList.get(i).getProjectFunding() > 100 ? 100 : randomList.get(i).getProjectFunding()) %>%;"></div>
										</div>
									</div>
								</div>
							</div>
							<% } %>
							<div style="height: 548px;"></div>
						<% } %>
					<% }else{ %>
						<% for(int i = 0; i < randomList.size(); i++) { %>
						<div class="project_area_pr fl">
						<br>
							<div class="project_area_head prHoverContainer">
								<a href="<%= contextPath %>/detail.pr?pno=<%= randomList.get(i).getProjectNo() %>"><img class="prHover br10" src="<%= randomList.get(i).getProjectTitleImg() %>" width="255" height="180"></a>
								<% if(loginUser != null) { %>
									<span class="likes" style="position: absolute; bottom: 10px; right: 10px; z-index: 10;" data-projectNo="<%= randomList.get(i).getProjectNo() %>"><i class="fa-solid fa-heart fa-xl"></i></span>
								<% } %>
							</div>
							<div class="project_area_body">
								<div class="project_area_body_row1">
									<a href="<%= contextPath %>/category.pr?cno=<%= randomList.get(i).getProjectCategoryNo() %>" class="pca"><%= randomList.get(i).getProjectCategoryName() %></a>
								</div>
								<div class="project_area_body_row2">
									<a href="<%= contextPath %>/detail.pr?pno=<%= randomList.get(i).getProjectNo() %>"><strong class="ptitle"><%= randomList.get(i).getProjectTitle() %></strong></a>
								</div>
								<div class="project_area_body_row3">
									<div class="project_area_body_row3_col1 fl">
										<span class="percentage"><%= randomList.get(i).getProjectFunding() %>% 달성</span>
									</div>
									<div class="project_area_body_row3_col2 project-d-day-form fl">
										<% if((long)(ChronoUnit.DAYS.between(now, ((Date)randomList.get(i).getProjectEnd()).toLocalDate())) == 0){ %>
										<span class="project-d-day" style="color: red">오늘 마감!</span>
										<% }else{ %>
										<span class="project-d-day">D-<%= (long)(ChronoUnit.DAYS.between(now, ((Date)randomList.get(i).getProjectEnd()).toLocalDate())) %></span>
										<% } %>
									</div>
								</div>
								<div class="project_area_body_row4">
									<div class="progress-bar-pr">
										<div class="progressA" style="width: <%= (randomList.get(i).getProjectFunding() > 100 ? 100 : randomList.get(i).getProjectFunding()) %>%;"></div>
									</div>
								</div>
							</div>
						</div>
						<% } %>
					<% } %>
				</div>
			</div>
			<div class="project_sort_all_right pd15 brlg br5 fl">
				<%@ include file="../common/memberProjectSidebar.jsp" %>
			</div>
		</div>
		<div class="blank_bottom">
			<%-- 여백 --%>
		</div>
	</div>

	<%@ include file="../common/footer.jsp"%>

	<script src="resources/js/project/projectSortAll.js"></script>
</body>
</html>