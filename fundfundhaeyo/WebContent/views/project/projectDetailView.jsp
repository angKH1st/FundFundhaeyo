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
	Member sellerCount = (Member)request.getAttribute("sellerCount");
	Member seller = (Member)request.getAttribute("seller");
	
	String ln = (String)request.getAttribute("ln");
	String pn = (String)request.getAttribute("pn");
	
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
			<div class="project_detail_top">
				<div class="project_detail_top_left fl">
					<div class="slider">
					    <div class="slide-holder">
					    	<img class="slide br10" src="<%= contextPath %>/<%= list.get(0).getAttachmentPath() + list.get(0).getAttachmentUpdateName() %>">
					        <% for(int i = 1; i < list.size(); i++){ %>
					        	<img class="slide br10" src="<%= contextPath %>/<%= list.get(i).getAttachmentPath() + list.get(i).getAttachmentUpdateName() %>">
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
						<div class="project_detail_top_category_col1 fl"><span><a class="ca" href="<%= contextPath %>/category.pr?cno=<%= p.getProjectCategoryNo() %>"><%= p.getProjectCategoryName() %></a></span></div>
						<div class="project_detail_top_category_col2 fl"><span><%= p.getProjectTag() %></span></div>
					</div>
					<div class="project_detail_top_title">
						<div class="project_detail_top_title_col1 fl"><h3><%= p.getProjectOverview() %></h3></div>
						<div class="project_detail_top_title_col2 fl"><%-- 여백 --%></div>
						<div class="project_detail_top_title_col3 fl"></div>
					</div>
					<div class="project_detail_top_overview">
						<div class="project_detail_top_overview_row1">
							<div class="project_detail_top_overview_row1_title">모인금액</div>
							<div class="project_detail_top_overview_row1_content">
								<div class="project_detail_top_overview_row1_content_col1 fl"><span class="fundingNow"><%= nf.format(p.getProjectSellerFunding()) %></span>원</div>
								<div class="project_detail_top_overview_row1_content_col2 fl"><span style="font-size: 15px;" class="percentage"><%= p.getProjectFunding() %>% 달성</span></div>
							</div>
						</div>
						<div class="project_detail_top_overview_row2">
							<div class="project_detail_top_overview_row2_col2">
								<div class="project_detail_top_overview_row2_col2_title fl">후원자</div>
								<div class="project_detail_top_overview_row2_col2_content fl"><div class="fundingDday fl"><%= buyer %></div><div class="nText fl">명</div></div>
							</div>
							<div class="project_detail_top_overview_row2_col1">
								<div class="project_detail_top_overview_row2_col1_title fl">남은시간</div>
								<div class="project_detail_top_overview_row2_col1_content fl">
									<% if((long)(ChronoUnit.DAYS.between(now, ((Date)p.getProjectEnd()).toLocalDate())) < 0) { %>
									<div class="fundingDday">해당 프로젝트는 종료되었습니다.</div>
									<% }else { %>
									<div class="fundingDday fl"><%= (long)(ChronoUnit.DAYS.between(now, ((Date)p.getProjectEnd()).toLocalDate())) %></div><div class="nText fl">일</div>
									<% } %>
								</div>
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
									<td><%= df.format(p.getProjectPaymentBuyer()) %> 까지 결제 진행</td>
								</tr>
							</table>
						</div>
						<div class="project_detail_top_info_row2">
							<% if(loginUser != null) { %>
							<div class="project_detail_top_info_row2_btn1 br5 brlg fl">
								<div class="project_detail_top_info_row2_btn1_icon likesContainer">
	                        		<span class="likes" style="position: absolute; bottom: -6px; right: 15px; z-index: 10;" data-projectNo="<%= p.getProjectNo() %>"><i class="fa-solid fa-heart fa-lg"></i></span>
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
							<div class="project_detail_top_info_row2_btn2 br5 brlg fl share" data-projectNo="<%= p.getProjectNo() %>" onclick="sharePage();">
								<div class="project_detail_top_info_row2_btn2_icon"><i class="fa-solid fa-share-nodes"></i></div>
								<div class="project_detail_top_info_row2_btn2_num shareCnt"></div>
							</div>
							<div class="project_detail_top_info_row2_btn4 br5 brlg fl clap" data-projectNo="<%= p.getProjectNo() %>" onclick="clapPage();">
								<div class="project_detail_top_info_row2_btn4_icon"><i class="fa-solid fa-hands-clapping fa-sm"></i></div>
								<div class="project_detail_top_info_row2_btn4_num clapCnt"></div>
							</div>
							<% if(loginUser != null) { %>
								<% if(loginUser.getUserNo() != Integer.parseInt(p.getProjectSeller())){ %>
								<div class="project_detail_top_info_row2_btn3 br5 brlg fl"><a style="color: white;" href="<%= contextPath %>/moveToOrderForm.pr?pno=<%= p.getProjectNo() %>">프로젝트 후원하기</a></div>
								<% } %>
							<% }else { %>
								<div class="project_detail_top_info_row2_btn3 br5 brlg fl" onclick="alertToLogin();">프로젝트 후원하기</div>
							<% } %>
							<div class="project_detail_top_info_row2_blank fl">
								<% if((long)(ChronoUnit.DAYS.between(now, ((Date)p.getProjectEnd()).toLocalDate())) >= 0){ %>
								<span class="blueBtn" style="padding: 3px;">D - <%= (long)(ChronoUnit.DAYS.between(now, ((Date)p.getProjectEnd()).toLocalDate())) %></span>
								<% } %>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="project_detail_blank"><div><%-- 여백 --%></div></div>
			<div class="project_detail_content">
				<div class="project_detail_content_col1 fl">
					<div class="project_detail_content_col1_row1">
						<div class="project_detail_content_project_title">상세설명</div>
						<div class="project_detail_content_project_content brlg br5"><%= p.getProjectTitle() %></div>
					</div>
					<div class="project_detail_content_col1_row2"><%-- 여백 --%></div>
					<div class="project_detail_content_col1_row3">
						<div class="project_detail_content_project_seller_title">창작자 정보</div>
						<div class="project_detail_content_project_seller_content brlg br5">
							<div class="project_seller_info_row1">
								<div class="project_seller_info_row1_img fl centerXY"><img width=50 height=50 src="<%= contextPath %>/<%= seller.getUserImg() %>"></div>
								<div class="project_seller_info_row1_text fl">
									<div class="project_seller_info_row1_text_name"><%= seller.getUserName() %></div>
									<div class="project_seller_info_row1_text_profile">"<%= seller.getUserProfile() %>"</div>
								</div>
							</div>
							<div class="project_seller_info_row2">
								<div class="project_seller_info_count1 centerXY fl">창작 횟수</div>
								<div class="project_seller_info_count2 centerXY fl"><%= sellerCount.getSellerCount() %> 건</div>
							</div>
						</div>
					</div>
					<div class="project_detail_content_col1_row4"><%-- 여백 --%></div>
					<div class="project_detail_content_col1_row5">
						<div class="project_option_title">🎁 펀딩 옵션 🎁</div>
						<div class="project_option_content brlg br5 pd15">
							<div class="project_option_content_row1">
								<div class="project_option_content-row1_col1 centerXY fl">옵션 1. <%= nf.format((int)(p.getProjectPrice() * 0.1)) %> 원</div>
								<div class="project_option_content-row1_col2 centerXY fl">상품 1개</div>
							</div>
							<div class="project_option_content_row2">
								<div class="project_option_content-row2_col1 centerXY fl">옵션 2. <%= nf.format((int)(p.getProjectPrice() * 0.5)) %> 원</div>
								<div class="project_option_content-row2_col2 centerXY fl">상품 3개</div>
							</div>
							<div class="project_option_content_row3">
								<div class="project_option_content-row2_col1 centerXY fl">옵션 3. <%= nf.format(p.getProjectPrice()) %> 원</div>
								<div class="project_option_content-row2_col2 centerXY fl">상품 5개 + 선물 포장</div>
							</div>
						</div>
					</div>
				</div>
				<div class="project_detail_content_col2 fl"><%-- 여백 --%></div>
				<div class="project_detail_content_col3 brlg br5 fl">
					<div class="project_detail_chat_top">공개채팅</div>
					<% if(loginUser != null){ %>
					<input type="hidden" id="loginUserName" value="<%= loginUser.getUserName() %>">
					<% } %>
					<div class="project_detail_chat_middle">
					</div>
					<div class="project_detail_chat_bottom pd15">
						<div class="project_detail_chat_bottom_col1 fl"><i class="fa-solid fa-message fa-lg"></i></div>
						<div class="project_detail_chat_bottom_col2 fl">
							<% if((long)(ChronoUnit.DAYS.between(now, ((Date)p.getProjectEnd()).toLocalDate())) >= 0){ %>
							<input type="text" class="brlg br10" id="chatInput" name="chatInput" maxlength=53 placeholder="메세지를 입력하세요.">
							<% }else { %>
							<input type="text" class="brlg br10" id="chatInput" name="chatInput" value="해당 프로젝트는 종료되었습니다." readonly>
							<% } %>
							<input type="hidden" id="projectNo" value="<%= p.getProjectNo() %>">
						</div>
						<% if(loginUser != null){ %>
							<% if((long)(ChronoUnit.DAYS.between(now, ((Date)p.getProjectEnd()).toLocalDate())) >= 0){ %>
							<div class="project_detail_chat_bottom_col3 fl"><button type="button" onclick="insertChat();">전송</button></div>
							<% }else { %>
							<div class="project_detail_chat_bottom_col3 fl"><button type="button" disabled>전송</button></div>
							<% } %>
						<% }else { %>
						<div class="project_detail_chat_bottom_col3 fl"><button type="button" onclick="alertToLogin();">전송</button></div>
						<% } %>
					</div>
				</div>
			</div>
	    </div>
	    <div class="blank_bottom"><%-- 여백 --%></div>
    </div>
	
	<script src="resources/memberProjectSidebar.js"></script>
	
	<%@ include file="../common/footer.jsp" %>
	
	<script src="resources/js/project/projectDetailView.js"></script>
</body>
</html>