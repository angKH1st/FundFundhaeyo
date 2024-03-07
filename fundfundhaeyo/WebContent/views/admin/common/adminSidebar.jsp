<%@page import="com.kh.semi1st.member.model.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뻔뻔해요</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link rel="stylesheet" href="resources/css/admin/common/adminSidebar.css">
<script src="resources/js/admin/common/adminSidebar.js" rel="javascript"></script>
</head>
<body>
	<div class="adm-sidebar">
		<div class="adm-sidebar-admin">
			<div class="adm-sidebar-admin-symbol fl">F</div>
			<div class="adm-sidebar-admin-logo fl"><h3><a href="<%= request.getContextPath() %>" class="hoverA"><img src="resources/image/logo2.png" width="130px"></a></h3></div>
		</div>
		<div class="adm-sidebar-user">
			<div class="adm-sidebar-user-profile fl"></div>
			<div class="adm-sidebar-user-nickname fl"><h4><%= ((Member)session.getAttribute("loginUser")).getUserId() %></h4></div>
		</div>
		<div class="adm-sidebar-list listHover">
			<ul>
		        <li>
		            <a class="adm-sidebar-main-menu"><i class="thumbI fa-regular fa-user fa-2xl"></i> 회원 관리 <i id="tog" class="fas fa-angle-up"></i></a>
		            <ul class="hidden">
		                <li><a href="admSelect.me"><i class="thumbI fa-regular fa-user fa-2xl"></i> 회원정보조회 </a></li>
		                <li><a href="admMoveToUpdate.me"><i class="thumbI fa-regular fa-user fa-2xl"></i> 회원정보수정 </a></li>
		                <li><a href="#"><i class="thumbI fa-regular fa-user fa-2xl"></i> 등급별 리워드 </a></li>
		            </ul>
		        </li>
		        <li>
		            <a class="adm-sidebar-main-menu"><i class="thumbI fa-brands fa-product-hunt fa-2xl"></i> 프로젝트 관리 <i id="tog" class="fas fa-angle-up"></i></a>
		            <ul class="hidden">
		                <li><a href="admSelect.pr"><i class="thumbI fa-brands fa-product-hunt fa-2xl"></i>프로젝트 조회</a></li>
		                <li><a href="admMoveToUpdateList.pr"><i class="thumbI fa-brands fa-product-hunt fa-2xl"></i>프로젝트 심사 조회</a></li>
		                <li><a href="admMoveToUpdateForm.pr?searchNo=0"><i class="thumbI fa-brands fa-product-hunt fa-2xl"></i>프로젝트 심사</a></li>
		                <li><a href="#"><i class="thumbI fa-solid fa-credit-card fa-2xl"></i> 펀딩금 집행</a></li>
		                <li><a href="#"><i class="thumbI fa-brands fa-usps fa-2xl"></i> 송장등록</a></li>
		            </ul>
		        </li>
		        <li>
		            <a class="adm-sidebar-main-menu"><i class="thumbI fa-solid fa-person-military-pointing fa-2xl"></i> 고객지원 관리 <i id="tog" class="fas fa-angle-up"></i></a>
		            <ul class="hidden">
		                <li><a href="admAnnouncement.hp"><i class="thumbI fa-solid fa-microphone fa-2xl"></i> 공지사항</a></li>
		                <li><a href="admFaq.hp"><i class="thumbI fa-solid fa-circle-question fa-2xl"></i> FAQ</a></li>
		                <li><a href="admQna.hp"><i class="thumbI fa-solid fa-comments fa-2xl"></i> Q&A</a></li>
		            </ul>
		        </li>
		        <li>
		            <a class="adm-sidebar-main-menu"><i class="thumbI fa-solid fa-coins fa-2xl"></i> 수익 관리</a>
		        </li>
		    </ul>
		</div>
	</div>
</body>
</html>