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
	    		<div class="adm-content-center-count-col1 fl">
	    			<div class="adm-content-center-count-col1-inside brlg br5">
		    			<div class="adm-content-center-count-col1-title">
		    				<div class="aI fl"><i class="fa-solid fa-user fa-2xl fl"></i></div>
		    				<div class="aTitle fl">&nbsp; 전체 회원 수</div>
	    				</div>
		    			<div class="adm-content-center-count-col1-input"><%= mCount %></div>
	    			</div>
	    		</div>
	    		<div class="adm-content-center-count-col2 fl">
	    			<div class="adm-content-center-count-col2-inside brlg br5">
		    			<div class="adm-content-center-count-col2-title">
		    				<div class="aI fl"><i class="fa-solid fa-user fa-2xl fl"></i></div>
		    				<div class="aTitle fl">&nbsp; 전체 프로젝트</div>
	    				</div>
		    			<div class="adm-content-center-count-col2-input"><%= aCount %></div>
	    			</div>
	    		</div>
	    		<div class="adm-content-center-count-col3 fl">
	    			<div class="adm-content-center-count-col3-inside brlg br5">
		    			<div class="adm-content-center-count-col3-title">
		    				<div class="aI fl"><i class="fa-solid fa-user fa-2xl fl"></i></div>
		    				<div class="aTitle fl">&nbsp; 게시중인 프로젝트</div>
	    				</div>
		    			<div class="adm-content-center-count-col3-input"><%= pCount %></div>
	    			</div>
	    		</div>
	    		<div class="adm-content-center-count-col4 fl">
	    			<div class="adm-content-center-count-col4-inside brlg br5">
		    			<div class="adm-content-center-count-col4-title">
		    				<div class="aI fl"><i class="fa-solid fa-credit-card fa-2xl fl"></i></div>
		    				<div class="aTitle fl">&nbsp; 프로젝트 심사요청</div>
	    				</div>
		    			<div class="adm-content-center-count-col4-input"><%= nCount %></div>
	    			</div>
	    		</div>
	    		<div class="adm-content-center-count-col5 fl">
	    			<div class="adm-content-center-count-col5-inside brlg br5">
		    			<div class="adm-content-center-count-col5-title">
		    				<div class="aI fl"><i class="fa-solid fa-user fa-2xl fl"></i></div>
		    				<div class="aTitle fl">&nbsp; 펀딩금 누계</div>
	    				</div>
		    			<div class="adm-content-center-count-col5-input"><%= fMoney %></div>
	    			</div>
	    		</div>
	    	</div>
	    	<div class="adm-content-center-text">
	    		<div class="adm-content-center-text-cal">
	    			<div class="adm-content-center-text-cal-graph brlg br5 fl">
	    				<div id="chart_div"></div>
	    			</div>
	    			<div class="adm-content-center-text-cal-seller brlg br5 fl">
	    				<div class="adm-content-center-text-cal-best-title centerXY">best 창작왕</div>
	    				<div class="adm-content-center-text-cal-best-input pd15">
	    					<div class="adm-best-seller brlg br5">
	    						<div class="best-seller-person">
	    							
	    						</div>
	    					</div>
	    				</div>
	    			</div>
	    			<div class="adm-content-center-text-cal-buyer brlg br5 fl">
	    				<div class="adm-content-center-text-cal-best-title centerXY">best 후원왕</div>
	    				<div class="adm-content-center-text-cal-best-input pd15">
	    					<div class="adm-best-buyer brlg br5">
	    						
	    					</div>
	    				</div>
	    			</div>
	    		</div>
	    		<div class="adm-content-center-text-ord brlg br5">
	    			<div class="adm-content-center-text-ord-title centerXY">주문현황</div>
	    			<div class="adm-content-center-text-ord-input">d3</div>
	    		</div>
	    	</div>
	    </div>
	</div>
	
	<%@ include file="common/adminSidebar.jsp" %>
	
	<%@ include file="common/adminFooter.jsp" %>
	
	<script src="resources/js/admin/common/adminIndex.js"></script>
</body>
</html>