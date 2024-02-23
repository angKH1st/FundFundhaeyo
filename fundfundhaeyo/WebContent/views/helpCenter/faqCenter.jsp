<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뻔뻔해요</title>
<link rel="stylesheet" href="resources/css/faqCenter.css">
<script src="resources/js/faqCenter.js" rel="javascript"></script>
</head>
<body>
	<%@ include file="../common/header.jsp" %>
	
	<div class="faq_center_outer">
		<div class="blank_top"><%-- 여백 --%></div>
		
		<div class="faq_center_main">
		
			<div class="faq_center_main_top font_outer">
				<div class="faq_center_main_top_row1">
					<h1 class="faq_center_main_top_row1_title">고객지원</h1>
				</div>
				<div class="faq_center_main_top_row2">
					<div class="faq_center_main_top_row2_bottom"></div>
				</div>
			</div>
			<div class="faq_center_main_navi">
				<div class="btn-a fl"><a href="<%= contextPath %>/announcement.hp?cpage=1">공지사항</a></div>
				<div class="btn-b fl"><a style="color: skyblue;">FAQ</a></div>
				<div class="btn-c fl"><a href="<%= contextPath %>/qna.hp?cpage=1">Q&A</a></div>
				<div class="btn-d fl"><a href="<%= contextPath %>/guide.hp">펀딩 가이드</a></div>
			</div>
			<div class="faq_center_main_select">
				여긴 어떻게 하지?
			</div>
			<div class="faq_center_main_content">
			</div>
			
	    </div>
	    
	    <div class="blank_bottom"><%-- 여백 --%></div>
    </div>
    
	<%@ include file="../common/footer.jsp" %>
</body>
</html>