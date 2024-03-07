<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Locale"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="java.sql.Date"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.time.temporal.ChronoUnit"%>
<%@page import="com.kh.semi1st.project.model.vo.Project"%>
<%@page import="com.kh.semi1st.member.model.vo.Attachment"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Project p = (Project)request.getAttribute("p");
	ArrayList<Attachment> list = (ArrayList<Attachment>)request.getAttribute("list");

	// 후원한 사람 수
	int buyer = (int)request.getAttribute("buyer");
	// 찜한 사람 수
	int liker = (int)request.getAttribute("liker");
	
	// 현재 날짜
	LocalDate now = LocalDate.now();
	
	// 원화 처리
	NumberFormat nf = NumberFormat.getInstance(Locale.KOREA);
	
	// 날짜 양식
	SimpleDateFormat df = new SimpleDateFormat("yyyy.MM.dd");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뻔뻔해요</title>
<link rel="stylesheet" href="resources/css/project/projectDetailView.css">
</head>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<body>
	<%@ include file="../common/header.jsp" %>
	
	<div class="project_detail_outer font_outer">
		<div class="blank_top"><%-- 여백 --%></div>
		<div class="project_detail_main">
			<div class="project_detail_top shadow">
				<div class="project_detail_top_left fl">
					<div class="slider">
					    <div class="slide-holder">
					    	<img class="slide" src="<%= contextPath %>/<%= list.get(0).getAttachmentPath() + list.get(0).getAttachmentUpdateName() %>">
					        <% for(int i = 1; i < list.size(); i++){ %>
					        	<img class="slide" src="<%= contextPath %>/<%= list.get(i).getAttachmentPath() + list.get(i).getAttachmentUpdateName() %>">
					        <% } %>
					    </div>
					    <button id="pjBtn" type="button" class="prev">&lt;</button>
					    <button id="pjBtn" type="button" class="next">&gt;</button>
					    <div class="dots">
					    	<% for(int i = 0; i < list.size(); i++){ %>
					        <span class="dot"></span>
					    	<% } %>
					    </div>
					</div>
				</div>
				<div class="project_detail_top_blank fl"><%-- 여백 --%></div>
				<div class="project_detail_top_right fl">
					<div class="project_detail_top_category">
						<div class="project_detail_top_category_col1 fl"><span><a href="<%= contextPath %>/category.pr?cno=<%= p.getProjectCategoryNo() %>"><%= p.getProjectCategoryName() %></a></span></div>
						<div class="project_detail_top_category_col2 fl"><%-- 여백 --%></div>
						<div class="project_detail_top_category_col3 fl"><span><%= p.getProjectTag() %></span></div>
					</div>
					<div class="project_detail_top_title">
						<div class="project_detail_top_title_col1 fl"><h2><%= p.getProjectTitle() %></h2></div>
						<div class="project_detail_top_title_col2 fl"><%-- 여백 --%></div>
						<div class="project_detail_top_title_col3 fl"></div>
					</div>
					<div class="project_detail_top_overview">
						<div class="project_detail_top_overview_row1">
							<div class="project_detail_top_overview_row1_col1 fl"><%= p.getProjectOverview() %></div>
						</div>
						<div class="project_detail_top_overview_row2">
							<div class="project_detail_top_overview_row2_title">모인금액</div>
							<div class="project_detail_top_overview_row2_content">
								<div class="project_detail_top_overview_row2_content_col1 fl"><span class="fundingNow"><%= nf.format(p.getProjectSellerFunding()) %></span>원</div>
								<div class="project_detail_top_overview_row2_content_col2 fl"></div>
								<div class="project_detail_top_overview_row2_content_col3 fl"><span style="font-size: 20px;" class="percentage"><%= p.getProjectFunding() %>%</span></div>
							</div>
						</div>
						<div class="project_detail_top_overview_row3">
							<div class="project_detail_top_overview_row3_col1 fl">
								<div class="project_detail_top_overview_row3_col1_title fl">남은시간</div>
								<div class="project_detail_top_overview_row3_col1_content fl"><span class="fundingDday"><%= (long)(ChronoUnit.DAYS.between(now, ((Date)p.getProjectEnd()).toLocalDate())) %></span>일</div>
							</div>
							<div class="project_detail_top_overview_row3_col2 fl">
								<div class="project_detail_top_overview_row3_col2_title fl">후원자</div>
								<div class="project_detail_top_overview_row3_col2_content fl"><span class="fundingDday"><%= buyer %></span>명</div>
							</div>
						</div>
					</div>
					<div class="project_detail_top_info">
						<div class="project_detail_top_info_row1">
							<table>
								<tr>
									<td width=80>목표 금액</td>
									<td width=400><%= nf.format(p.getProjectPrice()) %>원</td>
								</tr>
								<tr>
									<td>펀딩 기간</td>
									<td><%= df.format(p.getProjectStart()) %> ~ <%= df.format(p.getProjectEnd()) %></td>
								</tr>
								<tr>
									<td>결제</td>
									<td>목표금액 달성시 <%= df.format(p.getProjectPaymentBuyer()) %> 에 결제 진행</td>
								</tr>
							</table>
						</div>
						<div class="project_detail_top_info_row2">
							<% if(loginUser != null) { %>
							<div class="project_detail_top_info_row2_btn1 br5 brlg fl">
								<div class="project_detail_top_info_row2_btn1_icon likesContainer">
	                        		<span class="likes" style="position: absolute; bottom: -6px; right: 10px; z-index: 10;" data-projectNo="<%= p.getProjectNo() %>"><i class="fa-solid fa-heart fa-lg"></i></span>
								</div>
								<div class="project_detail_top_info_row2_btn1_num"><%= liker %></div>
							</div>
							<% }else{ %>
							<div class="project_detail_top_info_row2_btn1 br5 brlg fl" onclick="alertToLogin();">
								<div class="project_detail_top_info_row2_btn1_icon">
	                        		<span><i class="fa-solid fa-heart fa-lg"></i></span>
								</div>
								<div class="project_detail_top_info_row2_btn1_num"><%= liker %></div>
							</div>
							<% } %>
							<div class="project_detail_top_info_row2_btn2 br5 brlg fl">
								<div class="project_detail_top_info_row2_btn2_icon"><i class="fa-solid fa-share-nodes"></i></div>
								<div class="project_detail_top_info_row2_btn2_num">222</div>
							</div>
							<% if(loginUser != null) { %>
								<% if((loginUser.getUserName()).equals(p.getProjectSeller())){ %>
								<div class="project_detail_top_info_row2_btn3 br5 brlg fl"><a style="color: white;" href="<%= contextPath %>/moveToOrderForm.pr">이 프로젝트 후원하기</a></div>
								<% }else{ %>
								<div>dd</div>
								<% } %>
							<% }else { %>
								<div class="project_detail_top_info_row2_btn3 br5 brlg fl" onclick="alertToLogin();">이 프로젝트 후원하기</div>
							<% } %>
							<div class="project_detail_top_info_row2_blank fl"><span class="blueBtn" style="padding: 3px;">D - <%= (long)(ChronoUnit.DAYS.between(now, ((Date)p.getProjectEnd()).toLocalDate())) %></span></div>
						</div>
					</div>
				</div>
			</div>
			<div class="project_detail_blank"><%-- 여백 --%></div>
			<div class="project_detail_content">
				<div class="project_detail_content_col1 brlg br5 fl">dd</div>
				<div class="project_detail_content_col2 fl"><%-- 여백 --%></div>
				<div class="project_detail_content_col3 brlg br5 fl">dddd</div>
			</div>
	    </div>
	    <div class="blank_bottom"><%-- 여백 --%></div>
    </div>
	
	<%@ include file="../common/footer.jsp" %>
	
	<script src="resources/js/project/projectDetailView.js"></script>
</body>
</html>