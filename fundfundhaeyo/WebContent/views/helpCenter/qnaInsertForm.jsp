<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뻔뻔해요</title>
<link rel="stylesheet" href="resources/css/helpCenter/qnaInsertForm.css">
</head>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<body>
	<%@ include file="../common/header.jsp" %>
	
	<form id="enroll-form" action="<%= contextPath %>/insertQna.hp" method="post" enctype="multipart/form-data">
	<div class="qna_insert_form_outer font_outer">
		<div class="blank_top"><%-- 여백 --%></div>
		
		<div class="qna_insert_form_main">
			<div class="qna_insert_form_top font_outer">
				<div class="qna_insert_form_top_row1">
					<h1 class="qna_insert_form_top_row1_title">고객지원</h1>
				</div>
				<div class="qna_insert_form_top_row2">
					<div class="qna_insert_form_top_row2_bottom"></div>
				</div>
			</div>
			<div class="qna_insert_form_navi">
				<div class="btn-a fl"><a href="<%= contextPath %>/announcement.hp?cpage=1">공지사항</a></div>
				<div class="btn-b fl"><a href="<%= contextPath %>/faq.hp">FAQ</a></div>
				<div class="btn-c fl"><a href="<%= contextPath %>/qna.hp?cpage=1" style="color: skyblue;">Q&A</a></div>
				<div class="btn-d fl"><a href="<%= contextPath %>/guide.hp">펀딩 가이드</a></div>
			</div>
			<div class="qna_insert_form_select"><%-- 여백 --%></div>
			<div class="qna_insert_form_content">
				<div class="qna_insert_form_content_inside shadow brlg br5">
					<br>
					<div style="height: 29px; text-align: center;">Q&A 글쓰기</div>
					<div class="qna_insert_form_content_title">
						<div class="qna_title_area_title centerXY fl">제목</div>
						<div class="qna_title_area_input fl"><input type="text" name="title" required></div>
					</div>
					<div class="qna_insert_form_content_middle">
						<div class="qna_middle_area_title centerXY fl">내용</div>
						<div class="qna_middle_area_input fl"><textarea rows="7" cols="55" name="content" style="resize: none;" required></textarea></div>
					</div>
					<div class="qna_insert_form_content_bottom">
						<div class="qna_bottom_area_title centerXY fl">첨부파일</div>
						<div class="qna_bottom_area_title fl"><input type="file" name="upfile"></div>
					</div>
					<input type="hidden" name="userNo" value="<%= loginUser.getUserNo() %>">
					<br><br><br><br>
					
					<div class="qna_insert_form_content_btn centerXY">
						<div class="qna_insert_form_content_btn1 fl"><button type="submit">작성하기</button></div>
						<div class="qna_insert_form_content_btn2 fl"><button type="reset">취소</button></div>
					</div>
				</div>
			</div>
			
			<div class="qna_insert_form_bottom">
			</div>
	    </div>
	    
	    <div class="blank_bottom"><%-- 여백 --%></div>
    </div>
   	</form>
    
	<%@ include file="../common/footer.jsp" %>
	
	<script src="resources/js/helpCenter/qnaInsertForm.js" rel="javascript"></script>
</body>
</html>