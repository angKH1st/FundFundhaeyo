<%@page import="java.sql.Date"%>
<%@page import="java.time.temporal.ChronoUnit"%>
<%@page import="java.time.LocalDate"%>
<%@page import="com.kh.semi1st.project.model.vo.Project"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<Project> categoryList = (ArrayList<Project>)request.getAttribute("categoryList");

	//현재 날짜
	LocalDate now = LocalDate.now();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뻔뻔해요</title>
<link rel="stylesheet" href="resources/css/project/projectSortCategory.css">
</head>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<body>
	<%@ include file="../common/header.jsp" %>
	
	<div class="project_sort_category_outer font_outer">
		<div class="blank_top">
			<%-- 여백 --%>
		</div>
		<div class="project_sort_category_main">
			<div class="project_sort_category_left fl">
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
					<div class="range_area_col3 fl"><span class="percentage"><%= categoryList.size() %></span>개의 프로젝트가 진행중입니다.</div>
				</div>
				<div class="project_area">
					<% if(categoryList.size() < 5){ %>
						<% if(categoryList.size() == 0){ %>
							<div class="project_area_pr fl" style="height: 828px;">
								조회 결과가 없습니다.
							</div>
						<% }else{ %>
							<% for(int i = 0; i < categoryList.size(); i++) { %>
							<div class="project_area_pr fl">
							<br>
								<div class="project_area_head prHoverContainer">
									<a href="<%= contextPath %>/detail.pr?pno=<%= categoryList.get(i).getProjectNo() %>"><img class="prHover br10" src="<%= categoryList.get(i).getProjectTitleImg() %>" width="255" height="180"></a>
									<% if(loginUser != null) { %>
										<span class="likes" style="position: absolute; bottom: 10px; right: 10px; z-index: 10;" data-projectNo="<%= categoryList.get(i).getProjectNo() %>"><i class="fa-solid fa-heart fa-xl"></i></span>
									<% } %>
								</div>
								<div class="project_area_body">
									<div class="project_area_body_row1">
										<a href="<%= contextPath %>/category.pr?cno=<%= categoryList.get(i).getProjectCategoryNo() %>" class="pca"><%= categoryList.get(i).getProjectCategoryName() %></a>
									</div>
									<div class="project_area_body_row2">
										<a href="<%= contextPath %>/detail.pr?pno=<%= categoryList.get(i).getProjectNo() %>"><strong class="ptitle"><%= categoryList.get(i).getProjectTitle() %></strong></a>
									</div>
									<div class="project_area_body_row3">
										<div class="project_area_body_row3_col1 fl">
											<span class="percentage"><%= categoryList.get(i).getProjectFunding() %>% 달성</span>
										</div>
										<div class="project_area_body_row3_col2 fl"></div>
									</div>
									<div class="project_area_body_row4">
										<div class="progress-bar-pr">
											<div class="progressA" style="width: <%= (categoryList.get(i).getProjectFunding() > 100 ? 100 : categoryList.get(i).getProjectFunding()) %>%;"></div>
										</div>
									</div>
								</div>
							</div>
							<% } %>
							<div style="height: 548px;"></div>
						<% } %>
					<% }else{ %>
						<% for(int i = 0; i < categoryList.size(); i++) { %>
						<div class="project_area_pr fl">
						<br>
							<div class="project_area_head prHoverContainer">
								<a href="<%= contextPath %>/detail.pr?pno=<%= categoryList.get(i).getProjectNo() %>"><img class="prHover br10" src="<%= categoryList.get(i).getProjectTitleImg() %>" width="255" height="180"></a>
								<% if(loginUser != null) { %>
									<span class="likes" style="position: absolute; bottom: 10px; right: 10px; z-index: 10;" data-projectNo="<%= categoryList.get(i).getProjectNo() %>"><i class="fa-solid fa-heart fa-xl"></i></span>
								<% } %>
							</div>
							<div class="project_area_body">
								<div class="project_area_body_row1">
									<a href="<%= contextPath %>/category.pr?cno=<%= categoryList.get(i).getProjectCategoryNo() %>" class="pca"><%= categoryList.get(i).getProjectCategoryName() %></a>
								</div>
								<div class="project_area_body_row2">
									<a href="<%= contextPath %>/detail.pr?pno=<%= categoryList.get(i).getProjectNo() %>"><strong class="ptitle"><%= categoryList.get(i).getProjectTitle() %></strong></a>
								</div>
								<div class="project_area_body_row3">
									<div class="project_area_body_row3_col1 fl">
										<span class="percentage"><%= categoryList.get(i).getProjectFunding() %>% 달성</span>
									</div>
									<div class="project_area_body_row3_col2 project-d-day-form fl">
										<% if((long)(ChronoUnit.DAYS.between(now, ((Date)categoryList.get(i).getProjectEnd()).toLocalDate())) == 0){ %>
										<span class="project-d-day" style="color: red">오늘 마감!</span>
										<% }else{ %>
										<span class="project-d-day">D-<%= (long)(ChronoUnit.DAYS.between(now, ((Date)categoryList.get(i).getProjectEnd()).toLocalDate())) %></span>
										<% } %>
									</div>
								</div>
								<div class="project_area_body_row4">
									<div class="progress-bar-pr">
										<div class="progressA" style="width: <%= (categoryList.get(i).getProjectFunding() > 100 ? 100 : categoryList.get(i).getProjectFunding()) %>%;"></div>
									</div>
								</div>
							</div>
						</div>
						<% } %>
					<% } %>
				</div>
			</div>
			<div class="project_sort_category_right pd15 brlg br5 fl">
				<%@ include file="../common/memberProjectSidebar.jsp" %>
			</div>
		</div>
		<div class="blank_bottom">
			<%-- 여백 --%>
		</div>
	</div>
    
	<%@ include file="../common/footer.jsp" %>
	
	<script src="resources/js/project/projectSortCategory.js"></script>
</body>
</html>