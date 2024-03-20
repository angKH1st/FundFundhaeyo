<%@page import="java.util.ArrayList"%>
<%@page import="com.kh.semi1st.member.model.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Member loginUser = (Member)session.getAttribute("loginUser");
	String contextPath = request.getContextPath();
	
	String alertMsg = (String)session.getAttribute("alertMsg");
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<%-- jQuery library --%>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<%-- Popper JS --%>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <%-- Latest compiled JavaScript --%>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>뻔뻔해요</title>
    <%-- css --%>
    <link rel="stylesheet" href="resources/css/header.css">
    <%-- icon --%>
    <script src="https://kit.fontawesome.com/4dc2c036ac.js" crossorigin="anonymous"></script>
    <%-- Latest compiled and minified CSS --%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
</head>
<style>
	<%-- 경북대진리체 --%>
	@font-face {font-family: 'KNUTRUTHTTF';src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2312-1@1.1/KNUTRUTHTTF.woff2') format('woff2');font-weight: normal;font-style: normal;}
	.font_outer{font-family: KNUTRUTHTTF;font-weight: normal;font-style: normal;}
	<%-- 세종병원체 --%>
	@font-face {font-family: 'SejonghospitalBold';src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2312-1@1.1/SejonghospitalBold.woff2') format('woff2');font-weight: 400;font-style: normal;}
	.font_sejong_outer{font-family: SejonghospitalBold; font-weight: 400; font-style: normal;}	
</style>
<body>
	<% if(alertMsg != null) { %>
		<script>
			alert("<%= alertMsg %>");	
		</script>
		<% session.removeAttribute("alertMsg"); %>
	<% } %>
    <div class="header_outer font_outer">
        <%-- 전체 레이아웃 --%>
        <div class="ffh_wrap ffh_main">
            <%-- 헤드 --%>
            <div class="ffh_header" style="border-bottom: 1px solid lightgray;">
                <div class="ffh_header_center fl">
                    <div class="ffh_header_center2">
                        <div class="ffh_header_center_left fl">
                            <div class="ffh_header_center_left1 fl"><a href="<%= contextPath %>"><div class="bg_image"></div></a></div>
                            <div class="ffh_header_center_left2 fl"><a href="<%= contextPath %>" class="heada headtext texthover <%= "fund".equals(request.getAttribute("currentPage")) ? "active" : "" %>">홈<span class="bottom-bar"></span></a></div>
                            <div class="ffh_header_center_left3 fl"><a href="<%= contextPath %>/all.pr" class="heada headtext texthover <%= "all".equals(request.getAttribute("currentPage")) ? "active" : "" %>">전체<span class="bottom-bar"></span></a></div>
                            <div class="ffh_header_center_left4 fl">
                            	<a href="<%= contextPath %>/category.pr" class="heada headtext texthover <%= "category".equals(request.getAttribute("currentPage")) ? "active" : "" %>">카테고리<span class="bottom-bar"></span></a>
                            	<div class="dropdown-category" align=center>
                            		<table>
                            			<tr>
                            				<td width=200><a class="texthover" href="category.pr?cno=10">공통</a></td>
                            				<td width=200><a class="texthover" href="category.pr?cno=20">푸드</a></td>
                            				<td width=200><a class="texthover" href="category.pr?cno=30">보드게임</a></td>
                            				<td width=200><a class="texthover" href="category.pr?cno=40">캐릭터</a></td>
                            				<td width=200><a class="texthover" href="category.pr?cno=50">향수</a></td>
                            			</tr>
                            			<tr>
                            				<td width=200><a class="texthover" href="category.pr?cno=60">공연</a></td>
                            				<td width=200><a class="texthover" href="category.pr?cno=70">게임</a></td>
                            				<td width=200><a class="texthover" href="category.pr?cno=80">의류</a></td>
                            				<td width=200><a class="texthover" href="category.pr?cno=90">웹툰</a></td>
                            				<td width=200><a class="texthover" href="category.pr?cno=100">가전</a></td>
                            			</tr>
                            			<tr>
                            				<td width=200><a class="texthover" href="category.pr?cno=110">잡화</a></td>
                            				<td width=200><a class="texthover" href="category.pr?cno=120">사진</a></td>
                            				<td width=200><a class="texthover" href="category.pr?cno=130">반려동물</a></td>
                            				<td width=200><a class="texthover" href="category.pr?cno=140">주얼리</a></td>
                            				<td width=200><a class="texthover" href="category.pr?cno=150">음악</a></td>
                            			</tr>
                            			<tr>
                            				<td width=200><a class="texthover" href="category.pr?cno=160">스포츠</a></td>
                            				<td width=200><a class="texthover" href="category.pr?cno=170">패션</a></td>
                            				<td width=200><a class="texthover" href="category.pr?cno=180">키즈</a></td>
                            				<td width=200><a class="texthover" href="category.pr?cno=190">가구</a></td>
                            				<td width=200><a class="texthover" href="category.pr?cno=200">기타</a></td>
                            			</tr>
                            		</table>
							    </div>
                           	</div>
                            <div class="ffh_header_center_left5 fl"><a href="<%= contextPath %>/rank.pr" class="heada headtext texthover <%= "rank".equals(request.getAttribute("currentPage")) ? "active" : "" %>">인기<span class="bottom-bar"></span></a></div>
                            <div class="ffh_header_center_left6 fl"><a href="<%= contextPath %>/new.pr" class="heada headtext texthover <%= "new".equals(request.getAttribute("currentPage")) ? "active" : "" %>">신규<span class="bottom-bar"></span></a></div>
                            <div class="ffh_header_center_left7 fl"><a href="<%= contextPath %>/deadline.pr" class="heada headtext texthover <%= "deadline".equals(request.getAttribute("currentPage")) ? "active" : "" %>">마감임박<span class="bottom-bar"></span></a></div>
                            <div class="ffh_header_center_left8 fl"></div>
                        </div>
                        <div class="ffh_header_center_right fl">
                            <div class="ffh_header_center_right1 fl"><a href="<%= contextPath %>/moveToEnrollIntroduction.pr" class="heada headtext texthover">프로젝트 등록</a></div>
                            <div class="ffh_header_center_right2 fl"><a href="#" class="heada" onclick="moveToSearch();"><i class="fa-solid fa-magnifying-glass fa-xl" style="display: flex; justify-content: center; line-height: 150%;"></i></a></div>
                            <% if(loginUser == null) {%>
                            <%-- 로그인 전 --%>
                            <div class="ffh_header_center_right3 fl"><%-- 여백 --%></div>
                            <div class="ffh_header_center_right4 fl"><%-- 여백 --%></div>
                            <div class="ffh_header_center_right5 fl"><%-- 여백 --%></div>
                            <div class="ffh_header_center_right6 fl"><button class="btn" type=button onclick="moveToLogin();">로그인/회원가입</button></div>
                            <% }else { %>
                            <%-- 로그인 후 --%>
                            <div class="ffh_header_center_right3 fl"><a href="<%= contextPath %>/moveToLikes.me?cpage=1" class="heada"><i class="fa-solid fa-heart fa-xl" style="color: #ff0000; line-height: 150%;"></i></a></div>
                            <div class="ffh_header_center_right4 fl"><a href="<%= contextPath %>/memberNotices.no" class="heada"><i class="fa-regular fa-bell fa-xl" style="line-height: 150%;"></i></a></div>
                            <div class="ffh_header_center_right5 fl">
	                            <div class="dropdown">
								    <a class="heada dropdown-toggle" data-toggle="dropdown"><i class="fa-solid fa-user fa-lg" style="line-height: 190%;"></i></a>
								    <div class="dropdown-menu">
								        <a class="dropdown-item" href="<%= contextPath %>/mypage.me">마이페이지</a>
								        <a class="dropdown-item" href="<%= contextPath %>/logout.me">로그아웃</a>
								    </div>
								</div>
							</div>
                            <div class="ffh_header_center_right6 fl headtext" style="text-align:right"><%= loginUser.getUserNickname() %> 님💙
                            <% } %>
                        	</div>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
    </div>
    
    <script src="resources/js/header.js"></script>
</body>
</html>