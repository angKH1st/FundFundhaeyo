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
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뻔뻔해요</title>
<link rel="stylesheet" href="resources/css/member/memberTestingProject.css">
</head>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<body>
	<%@ include file="../common/header.jsp" %>
	
	<div class="mypage_testing_Form_outer font_outer">
		<div class="blank_top"><%-- 여백 --%></div>
		
			<div class="mypage_testing_Form_main shadow brlg br5">
				<div class="mypage_testing_Form_left fl">
					<%@ include file="../common/memberMypageSidebar.jsp" %>
				</div>
				<div class="mypage_testing_Form_right fl">
					<div class="mypage_testing_Form_right_content1 pd15">
						<div class="mypage_testing_Form_right_root">
							<span><a href="<%= request.getContextPath() %>/mypage.me">Home</a></span>
							<span> > </span>
							<span>나의창작</span>
						</div>
						<div class="mypage_testing_Form_right_title"><h3>심사중인 프로젝트</h3></div>
						<div class="mypage_testing_Form_right_list brlg br5 pd15">
						<% if(list.size() == 0){ %>
							심사중인 창작 프로젝트가 없습니다.
						<% }else{ %>
							<% for(Project p : list){ %>
								<div onclick=location.href="<%= contextPath %>/detail.pr?pno=<%= p.getProjectNo() %>" class="mypage_ongoing_Form_right_list_project prHoverContainer fl brlg br5">
									<div class="mypage_ongoing_project_img prHover">
										<img src="<%= p.getProjectTitleImg() %>" width=200 height=150>
									</div>
									<div class="mypage_ongoing_project_title"><%= p.getProjectTitle() %></div>
									<div class="mypage_ongoing_project_info">
										<div class="mypage_ongoing_project_funding fl"><span class="percentage" style="color: red;">심사중</span></div>
										<div class="mypage_ongoing_project_dday fl">
										</div>
									</div>
								</div>
							<% } %>
						<% } %>
						</div>
					</div>
					<div class="mypage_testing_Form_right_content2 pd15">
						<div class="mypage_testing_Form_right_title2">
						</div>
						<div class="mypage_testing_Form_right_blank"></div>
					</div>
				</div>
			</div>
		<div class="blank_bottom"><%-- 여백 --%></div>
	</div>
		
	<%@ include file="../common/footer.jsp" %>
	
	<script src="resources/js/member/memberTestingProject.js"></script>
</body>
</html>