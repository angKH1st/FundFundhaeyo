<%@page import="com.kh.semi1st.member.model.vo.Seller"%>
<%@page import="java.util.Locale"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="java.sql.Date"%>
<%@page import="java.time.temporal.ChronoUnit"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.kh.semi1st.common.model.vo.PageInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<Seller> list = (ArrayList<Seller>)request.getAttribute("list");

	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
	int boardLimit = pi.getBoardLimit();
	
	//현재 날짜
	LocalDate now = LocalDate.now();
	
	// 원화 처리
	NumberFormat nf = NumberFormat.getInstance(Locale.KOREA);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뻔뻔해요</title>
<link rel="stylesheet" href="resources/css/member/memberFundingProjectList.css">
</head>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<body>
	<%@ include file="../common/header.jsp" %>
	
	<div class="mypage_funding_Form_outer font_outer">
		<div class="blank_top"><%-- 여백 --%></div>
		
			<div class="mypage_funding_Form_main shadow brlg br5">
				<div class="mypage_funding_Form_left fl">
					<%@ include file="../common/memberMypageSidebar.jsp" %>
				</div>
				<div class="mypage_funding_Form_right fl">
					<div class="mypage_funding_Form_right_content1 pd15">
						<div class="mypage_funding_Form_right_root">
							<span><a href="<%= request.getContextPath() %>/mypage.me">Home</a></span>
							<span> > </span>
							<span>나의 창작</span>
						</div>
						<div class="mypage_funding_Form_right_title"><h3>창작 수익</h3></div>
						<div class="mypage_funding_Form_right_list">
							<div class="mypage_funding_Form_right_list_inside brlg br5">
								<div class="funding_btn_area">
									<div class="funding_btn fl">
										dd
									</div> 
									<div class="funding_cnt fl">
									</div>
								</div>
								<div class="funding_funding_area">
								<% if(list.size() != 0){ %>
									<div class="funding_thing">
										<div class="funding_index_top centerXY fl">#</div>
										<div class="funding_category_top centerXY fl">카테고리</div>
										<div class="funding_tag_top centerXY fl">태그</div>
										<div class="funding_img_top centerXY fl">프로젝트</div>
										<div class="funding_project_top centerXY fl"></div>
										<div class="funding_amount_top centerXY fl">목표금액</div>
										<div class="funding_amount_top centerXY fl">달성금액</div>
										<div class="funding_percentage_top centerXY fl">달성률</div>
									</div>
									<% for(int i = 0; i < list.size(); i++){ %>
									<div class="funding_thing">
										<div class="funding_index centerXY fl"><%= (currentPage - 1) * boardLimit + i + 1 %></div>
										<div class="funding_category centerXY fl"><%= list.get(i).getPjCategoryName() %></div>
										<div class="funding_tag centerXY fl"><%= list.get(i).getProjectTag() %></div>
										<div class="funding_img centerXY fl"><img class="circleImg" width=35 height=35 src="<%= list.get(i).getProjectImg() %>"></div>
										<div class="funding_project leftXY fl"><%= list.get(i).getProjectTitle() %></div>
										<div class="funding_amount rightXY fl"><%= nf.format(list.get(i).getProjectPrice()) %> 원</div>
										<div class="funding_amount rightXY fl"><%= nf.format(list.get(i).getSellerFunding()) %> 원</div>
										<div class="funding_percentage rightXY fl"><%= list.get(i).getFunding() %> %</div>
									</div>
									<% } %>
								</div>
								<% }else { %>
								<div class="centerXY" style="padding-top: 270px;">창작한 프로젝트가 없습니다.</div>
								<% } %>
							</div>
							<div class="funding_bottom_area centerXY">
								<% if(currentPage != 1){ %>
				            		<button type="button" onclick="location.href='<%= contextPath %>/fundingProject.me?cpage=<%= currentPage-1 %>'">←</button>
					        	<% }else{ %>
					        		<button type="button" onclick="location.href='<%= contextPath %>/fundingProject.me?cpage=<%= currentPage-1 %>'" disabled>←</button>
					        	<% } %>
					        	
					            <% for(int p = startPage; p <= endPage; p++){ %>
					            	<% if(p == currentPage){ %>
					            		<button type="button" disabled><%= p %></button>
					            	<% }else{ %>
					            		<button type="button" onclick="location.href='<%= contextPath %>/fundingProject.me?cpage=<%= p %>'"><%= p %></button>
					            	<% } %>
					            <% } %>
					            
					            <% if(currentPage != maxPage && maxPage != 0){ %>
					            	<button type="button" onclick="location.href='<%= contextPath %>/fundingProject.me?cpage=<%= currentPage+1 %>'">→</button>
					            <% }else{ %>
					            	<button type="button" onclick="location.href='<%= contextPath %>/fundingProject.me?cpage=<%= currentPage+1 %>'" disabled>→</button>
					            <% } %>
							</div>
						</div>
					</div>
				</div>
			</div>
		<div class="blank_bottom"><%-- 여백 --%></div>
	</div>
		
	<%@ include file="../common/footer.jsp" %>
	
	<script src="resources/js/notice/memberMyNotices.js"></script>
</body>
</html>