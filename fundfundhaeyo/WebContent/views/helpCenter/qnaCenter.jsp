<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뻔뻔해요</title>
<link rel="stylesheet" href="resources/css/helpCenter/qnaCenter.css">
</head>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<body>
	<%@ include file="../common/header.jsp" %>
	
	<div class="qna_center_outer">
		<div class="blank_top"><%-- 여백 --%></div>
		
		<div class="qna_center_main">
		
			<div class="qna_center_main_top font_outer">
				<div class="qna_center_main_top_row1">
					<h1 class="qna_center_main_top_row1_title">고객지원</h1>
				</div>
				<div class="qna_center_main_top_row2">
					<div class="qna_center_main_top_row2_bottom"></div>
				</div>
			</div>
			<div class="qna_center_main_navi">
				<div class="btn-a fl"><a href="<%= contextPath %>/announcement.hp?cpage=1">공지사항</a></div>
				<div class="btn-b fl"><a href="<%= contextPath %>/faq.hp">FAQ</a></div>
				<div class="btn-c fl"><a style="color: skyblue;">Q&A</a></div>
				<div class="btn-d fl"><a href="<%= contextPath %>/guide.hp">펀딩 가이드</a></div>
			</div>
			<div class="qna_center_main_select"><%-- 여백 --%></div>
			<div class="qna_center_main_content">
			</div>
			
	    </div>
	    
	    <div class="blank_bottom"><%-- 여백 --%></div>
    </div>
    
	<%@ include file="../common/footer.jsp" %>
	
	<script src="resources/js/helpCenter/qnaCenter.js" rel="javascript"></script>
</body>
</html>