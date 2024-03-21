<%@page import="java.util.Locale"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="com.kh.semi1st.member.model.vo.Payment"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.kh.semi1st.common.model.vo.PageInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<Payment> list = (ArrayList<Payment>)request.getAttribute("list");
	// 공지 번호, 제목, 작성자, 조회수, 작성일

	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
	int boardLimit = pi.getBoardLimit();
	int listCount = pi.getListCount();

	// 원화 처리
	NumberFormat nf = NumberFormat.getInstance(Locale.KOREA);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뻔뻔해요</title>
<link rel="stylesheet" href="resources/css/admin/member/adminMemberPaymentList.css">
</head>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<body>
	<%@ include file="../common/adminHeader.jsp" %>
	
    <div class="adm-content font_outer">
	    <div class="adm-content-top">
	    	<div class="adm-content-top-title fl"><h1>결제내역조회</h1></div>
	    	<div class="adm-content-top-blank fl"></div>
	    	<div class="adm-content-top-root fl">
	    		<div class="adm-content-top-root-first fl"><a href="<%= contextPath %>">Home</a></div>
	    		<div class="adm-content-top-root-second fl">/</div>
	    		<div class="adm-content-top-root-third fl">Payment</div>
	    	</div>
	    </div>
	    <div class="adm-content-center">
	    	<div class="adm-content-center-top">
	    		모든 결제내역을 조회합니다.
	    	</div>
	    	<div class="adm-content-center-main">
	    		<div class="adm-content-center-main-header">결제내역</div>
	    		<br>
	    		<div class="adm-content-center-main-body">
	    			<div class="adm-content-center-main-body2">
	    				<table>
	    				<thead>
	    					<tr>
	    						<th style="width:40px;">#</th>
	    						<th style="width:300px;">결제번호</th>
	    						<th style="width:120px;">결제자</th>
	    						<th colspan=2 style="width:760px;">프로젝트</th>
	    						<th style="width:100px;">금액</th>
	    						<th style="width:150px;">결제수단</th>
	    						<th style="width:150px;">상태</th>
	    						<th style="width:150px;">결제일</th>
	    					</tr>
	    				</thead>
	    				<tbody>
	    				<% if(list.size() == 0){ %>
	    					<tr>
	    						<td colspan=8>조회된 결제내역이 없습니다.</td>
	    					</tr>
	    				<% }else{ %>
	    				<% } %>
	    					<% for(int i = 0; i < list.size(); i++){ %>
	    					<tr>
	    						<td class="center"><%= ((currentPage - 1) * boardLimit + i + 1)%></td>
	    						<td class="center"><%= list.get(i).getPaymentNo() %></td>
	    						<td class="center"><%= list.get(i).getPaymentUserNickname() %></td>
	    						<td style="padding-top: 7px;" class="right"><img class="circleImg" width=40 height=40 src="<%= list.get(i).getPaymentProjectImg() %>"></td>
	    						<td><%= list.get(i).getPaymentProjectName() %></td>
	    						<td class="right"><%= nf.format(list.get(i).getPaymentAmount()) %> 원</td>
	    						<% if(list.get(i).getPaymentMethod() == 1){ %>
	    						<td class="center">카카오페이</td>
	    						<% }else{ %>
	    						<td class="center">토스페이</td>
	    						<% } %>
	    						<% if(list.get(i).getPaymentStatus().equals("Y")){ %>
	    						<td class="center">결제완료</td>
	    						<% }else{ %>
	    						<td class="center">미결제</td>
	    						<% } %>
	    						<td class="center"><%= list.get(i).getPaymentDate() %></td>
	    					</tr>
	    					<% } %>
	    				</tbody>
	    			</table>
	    			</div>
	    			<div class="adm-content-center-main-body3">
	    				<div class="adm-content-center-main-body3-col1 fl">
	    					Showing
	    					<span class="adm-content-center-main-body3-col1-startPoint"><%= (currentPage - 1) * boardLimit + 1 %></span>
	    					 to 
	    					<span class="adm-content-center-main-body3-col1-endPoint"><%= (currentPage - 1) * boardLimit + 1 + list.size() - 1 %></span>
	    					 of 
	    					<span class="adm-content-center-main-body3-col1-totalPoint"><%= listCount %></span>
	    					entries
	    				</div>
	    				<div class="adm-content-center-main-body3-col2 fl"><%-- 여백 --%></div>
	    				<%-- 페이징바 --%>
	    				<div class="adm-content-center-main-body3-col3 fl">
	    				<% if(currentPage != 1){ %>
		            		<button type="button" onclick="location.href='admSelectPayment.me?cpage=<%= currentPage-1 %>'">←</button>
			        	<% }else{ %>
			        		<button type="button" onclick="location.href='admSelectPayment.me?cpage=<%= currentPage-1 %>'" disabled>←</button>
			        	<% } %>
			        	
			            <% for(int p = startPage; p <= endPage; p++){ %>
			            	<% if(p == currentPage){ %>
			            		<button type="button" disabled><%= p %></button>
			            	<% }else{ %>
			            		<button type="button" onclick="location.href='admSelectPayment.me?cpage=<%= p %>'"><%= p %></button>
			            	<% } %>
			            <% } %>
			            
			            <% if(currentPage != maxPage && maxPage != 0){ %>
			            	<button type="button" onclick="location.href='admSelectPayment.me?cpage=<%= currentPage+1 %>'">→</button>
			            <% }else{ %>
			            	<button type="button" onclick="location.href='admSelectPayment.me?cpage=<%= currentPage+1 %>'" disabled>→</button>
			            <% } %>
	    				</div>
	    			</div>
	    		</div>
		    </div>
		</div>
	</div>
	
	<%@ include file="../common/adminSidebar.jsp" %>
	
	<%@ include file="../common/adminFooter.jsp" %>
	
	<script type="text/javascript" src="resources/js/admin/member/adminMemberPaymentList.js"></script>
</body>
</html>