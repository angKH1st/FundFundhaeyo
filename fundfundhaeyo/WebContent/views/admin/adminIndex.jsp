<%@page import="com.kh.semi1st.member.model.vo.Payment"%>
<%@page import="com.kh.semi1st.project.model.vo.PjCategory"%>
<%@page import="java.util.Locale"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int mCount = (int)request.getAttribute("mCount");
	int aCount = (int)request.getAttribute("aCount");
	int pCount = (int)request.getAttribute("pCount");
	int nCount = (int)request.getAttribute("nCount");
	int fMoney = (int)request.getAttribute("fMoney");
	
	ArrayList<Member> bList = (ArrayList<Member>)request.getAttribute("bList");
	ArrayList<Member> sList = (ArrayList<Member>)request.getAttribute("sList");
	ArrayList<PjCategory> ctList = (ArrayList<PjCategory>)request.getAttribute("ctList");
	ArrayList<Payment> payList = (ArrayList<Payment>)request.getAttribute("payList");
	
	// 원화 처리
	NumberFormat nf = NumberFormat.getInstance(Locale.KOREA);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뻔뻔해요</title>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<link rel="stylesheet" href="resources/css/admin/common/adminIndex.css">
</head>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<body>
	<%@ include file="common/adminHeader.jsp" %>
	
    <div class="adm-content font_outer">
	    <div class="adm-content-top">
	    	<div class="adm-content-top-title fl"><h1>Dashboard</h1></div>
	    	<div class="adm-content-top-blank fl"></div>
	    	<div class="adm-content-top-root fl">
	    		<div class="adm-content-top-root-first fl"></div>
	    		<div class="adm-content-top-root-second fl"></div>
	    		<div class="adm-content-top-root-third fl"></div>
	    	</div>
	    </div>
	    <div class="adm-content-center">
	    	<div class="adm-content-center-count">
	    		<div class="adm-content-center-count-col1 fl" onclick="moveAllMemberList();">
	    			<div class="adm-content-center-count-col1-inside br5">
		    			<div class="adm-content-center-count-col1-title">
		    				<div class="aI fl"><i class="fa-solid fa-user fa-2xl fl"></i></div>
		    				<div class="aTitle fl">&nbsp; 전체 회원 수</div>
	    				</div>
		    			<div class="adm-content-center-count-col1-input"><%= mCount %></div>
	    			</div>
	    		</div>
	    		<div class="adm-content-center-count-col2 fl" onclick="moveAllProjectList();">
	    			<div class="adm-content-center-count-col2-inside br5">
		    			<div class="adm-content-center-count-col2-title">
		    				<div class="aI fl"><i class="fa-solid fa-earth-americas fa-2xl fl"></i></div>
		    				<div class="aTitle fl">&nbsp; 전체 프로젝트</div>
	    				</div>
		    			<div class="adm-content-center-count-col2-input"><%= aCount %></div>
	    			</div>
	    		</div>
	    		<div class="adm-content-center-count-col3 fl" onclick="moveAllProjectList();">
	    			<div class="adm-content-center-count-col3-inside br5">
		    			<div class="adm-content-center-count-col3-title">
		    				<div class="aI fl"><i class="fa-solid fa-person-running fa-2xl fl"></i></div>
		    				<div class="aTitle fl">&nbsp; 게시중인 프로젝트</div>
	    				</div>
		    			<div class="adm-content-center-count-col3-input"><%= pCount %></div>
	    			</div>
	    		</div>
	    		<div class="adm-content-center-count-col4 fl" onclick="moveTestProjectList();">
	    			<div class="adm-content-center-count-col4-inside br5">
		    			<div class="adm-content-center-count-col4-title">
		    				<div class="aI fl"><i class="fa-solid fa-gavel fa-2xl fl"></i></div>
		    				<div class="aTitle fl">&nbsp; 프로젝트 심사요청</div>
	    				</div>
		    			<div class="adm-content-center-count-col4-input"><%= nCount %></div>
	    			</div>
	    		</div>
	    		<div class="adm-content-center-count-col5 fl">
	    			<div class="adm-content-center-count-col5-inside br5">
		    			<div class="adm-content-center-count-col5-title">
		    				<div class="aI fl"><i class="fa-solid fa-credit-card fa-2xl fl"></i></div>
		    				<div class="aTitle fl">&nbsp; 펀딩금 누계</div>
	    				</div>
		    			<div class="adm-content-center-count-col5-input"><%= nf.format(fMoney) %></div>
	    			</div>
	    		</div>
	    	</div>
	    	<div class="adm-content-center-text">
	    		<div class="adm-content-center-text-cal">
	    			<div class="adm-content-center-text-cal-graph brlg br5 fl">
	    				<input type="hidden" id="pjSize" value="<%= ctList.size() %>">
	    				<% for(int i = 0; i < ctList.size(); i++){ %>
	    					<input type="hidden" class="pjName" id="pjName<%= i %>" value="<%= ctList.get(i).getPjCategoryName() %>">
	    					<input type="hidden" class="pjFunding" id="pjFunding<%= i %>" value="<%= ctList.get(i).getPjFunding() %>">
	    				<% } %>
	    				<div id="chart_div"></div>
	    			</div>
	    			<div class="adm-content-center-text-cal-seller brlg br5 fl">
	    				<div class="adm-content-center-text-cal-best-title centerXY">best 창작왕</div>
	    				<div class="adm-content-center-text-cal-best-input pd15">
	    					<div class="adm-best-out brlg br5">
	    						<% for(Member s : sList){ %>
	    						<div class="adm-best-in">
	    							<div class="adm-best-crown centerXY fl"><i class="fa-solid fa-crown fa-xl"></i></div>
	    							<div class="adm-best-img centerXY fl"><img width=30 height=30 src="<%= s.getUserImg() %>"></div>
	    							<div class="adm-best-name fl"><%= s.getUserNickname() %></div>
	    							<div class="adm-best-count centerXY fl"><%= s.getSellerCount() %> 회 창작</div>
	    							<div class="adm-best-price centerXY fl"><%= nf.format(s.getSellerFunding()) %> 원 펀딩</div>
	    						</div>
	    						<% } %>
	    					</div>
	    				</div>
	    			</div>
	    			<div class="adm-content-center-text-cal-buyer brlg br5 fl">
	    				<div class="adm-content-center-text-cal-best-title centerXY">best 후원왕</div>
	    				<div class="adm-content-center-text-cal-best-input pd15">
	    					<div class="adm-best-buyer brlg br5">
	    						<% for(Member b : bList){ %>
	    						<div class="adm-best-in">
	    							<div class="adm-best-crown centerXY fl"><i class="fa-solid fa-crown fa-xl"></i></div>
	    							<div class="adm-best-img centerXY fl"><img width=30 height=30 src="<%= b.getUserImg() %>"></div>
	    							<div class="adm-best-name fl"><%= b.getUserNickname() %></div>
	    							<div class="adm-best-count centerXY fl"><%= b.getBuyerCount() %> 회 후원</div>
	    							<div class="adm-best-price centerXY fl"><%= nf.format(b.getBuyerFunding()) %> 원 펀딩</div>
	    						</div>
	    						<% } %>
	    					</div>
	    				</div>
	    			</div>
	    		</div>
	    		<div class="adm-content-center-text-ord brlg br5">
	    			<div class="adm-content-center-text-ord-title centerXY">주문현황</div>
	    			<div class="adm-content-center-text-ord-input pd15">
	    				<div class="adm-content-center-text-ord-input-outline brlg br5">
	    					<div class="order_form pd15 brBottom">
	    						<div class="order_no fl">주문번호</div>
	    						<div class="order_name fl">주문자</div>
	    						<div class="order_img fl"></div>
	    						<div class="order_project fl">프로젝트</div>
	    						<div class="order_price fl">금액</div>
	    						<div class="order_method fl">결제수단</div>
	    						<div class="order_status fl">상태</div>
	    						<div class="order_date fl">결제일</div>
	    					</div>
	    					<% for(Payment p : payList){ %>
	    					<%
	    					   String method = "";
	    					   String status = "";
	    					   if(p.getPaymentStatus().equals("Y")){
	    						   status = "결제완료";
	    					   }else{
	    						   status = "미결제";
	    					   }
	    					   if(p.getPaymentMethod() == 1){
	    						   method = "카카오페이";
	    					   }else if(p.getPaymentMethod() == 2){
	    						   method = "토스페이";
	    					   }
	    					%>
	    					<div class="order_form pd15">
	    						<div class="order_no fl"><%= p.getPaymentNo() %></div>
	    						<div class="order_name fl"><%= p.getPaymentUserNickname() %></div>
	    						<div class="order_img fl"><img class="circleImg" width=20 height=20 src="<%= p.getPaymentProjectImg() %>"></div>
	    						<div class="order_project fl"><%= p.getPaymentProjectName() %></div>
	    						<div class="order_price fl"><%= p.getPaymentAmount() %></div>
	    						<div class="order_method fl"><%= method %></div>
	    						<div class="order_status fl"><%= status %></div>
	    						<div class="order_date fl"><%= p.getPaymentDate() %></div>
	    					</div>
	    					<% } %>
	    				</div>
	    			</div>
	    		</div>
	    	</div>
	    </div>
	</div>
	
	<%@ include file="common/adminSidebar.jsp" %>
	
	<%@ include file="common/adminFooter.jsp" %>
	
	<script src="resources/js/admin/common/adminIndex.js"></script>
</body>
</html>