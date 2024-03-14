<%@page import="com.kh.semi1st.helpCenter.model.vo.Attachment"%>
<%@page import="com.kh.semi1st.helpCenter.model.vo.QNA"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	QNA q = (QNA)request.getAttribute("q");
	Attachment at = (Attachment)request.getAttribute("at");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뻔뻔해요</title>
<link rel="stylesheet" href="resources/css/helpCenter/qnaUpdateForm.css">
</head>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<body>
	<%@ include file="../common/header.jsp" %>
	
	<form id="enroll-form" action="<%= contextPath %>/updateQna.hp" method="post" enctype="multipart/form-data">
	<div class="qna_detail_outer font_outer">
		<div class="blank_top"><%-- 여백 --%></div>
		
		<div class="qna_detail_main">
		
			<div class="qna_detail_main_top font_outer">
				<div class="qna_detail_main_top_row1">
					<h1 class="qna_detail_main_top_row1_title">고객지원</h1>
				</div>
				<div class="qna_detail_main_top_row2">
					<div class="qna_detail_main_top_row2_bottom"></div>
				</div>
			</div>
			<div class="qna_detail_main_navi">
				<div class="btn-a fl"><a href="<%= contextPath %>/announcement.hp?cpage=1">공지사항</a></div>
				<div class="btn-b fl"><a href="<%= contextPath %>/faq.hp">FAQ</a></div>
				<div class="btn-c fl"><a href="<%= contextPath %>/qna.hp?cpage=1" style="color: skyblue;">Q&A</a></div>
				<div class="btn-d fl"><a href="<%= contextPath %>/guide.hp">펀딩 가이드</a></div>
			</div>
			<div class="qna_detail_main_select"><%-- 여백 --%></div>
			<div class="qna_detail_main_content">
				<div class="qna_detail_main_content_inside shadow brlg br5">
					<br>
					<div style="height: 29px; text-align: center;"></div>
					<div class="qna_detail_main_content_title">
						<div class="qna_detail_title_area_title centerXY fl">제목</div>
						<div class="qna_detail_title_area_input fl"><input type="text" name="title" value="<%= q.getQnaTitle() %>"></div>
						<div class="qna_detail_title_area_writer centerXY fl">작성자</div>
						<div class="qna_detail_title_area_writer_input fl"><span><%= q.getQnaWriter()%></span></div>
					</div>
					<div class="qna_detail_main_content_bottom">
						<div class="qna_detail_main_bottom_area_title centerXY fl">첨부파일</div>
						<div class="qna_detail_main_bottom_area_input fl">
							<% if(at == null){ %>
							<input type="file" name="upfile">
							<% }else{ %>
							<a download="<%= at.getAttachmentOriginName() %>" href="<%= contextPath %>/<%= at.getAttachmentPath() + at.getAttachmentUpdateName() %>"><%= at.getAttachmentOriginName() %></a>
							<input type="hidden" name="originFileNo" value="<%= at.getAttachmentNo() %>">
							<% } %>
						</div>
					</div>
					<div class="qna_detail_main_content_middle">
						<div class="qna_detail_middle_area_title centerXY fl">내용</div>
						<div class="qna_detail_middle_area_input fl"><textarea rows="7.5" cols="97" name="content" required><%= q.getQnaContent() %></textarea></div>
					</div>
					<div class="qna_detail_main_content_blank"></div>
					<div class="qna_detail_main_content_reply"></div>
					
					<br><br><br><br>
					
					<div class="qna_detail_main_content_btn centerXY">
						<input type="hidden" id="qNo" name="qNo" value="<%= q.getQnaNo() %>">
						<input type="hidden" id="userNo" name="userNo" value="<%= loginUser.getUserNo() %>">
						<div class="qna_detail_main_content_btn1 fl">
							<button type="button" onclick="back();">목록가기</button>
						</div>
						<% if(loginUser != null && loginUser.getUserNickname().equals(q.getQnaWriter())){ %>
						<div class="qna_detail_main_content_btn2 fl">
							<button type="submit">수정하기</button>
						</div>
						<div class="qna_detail_main_content_btn3 fl">
							<button type="reset">초기화</button>
						</div>
						<% } %>
					</div>
				</div>
			</div>
			
			<div class="qna_detail_main_bottom">
			</div>
			
	    </div>
	    
	    <div class="blank_bottom"><%-- 여백 --%></div>
    </div>
    </form>
    
	<%@ include file="../common/footer.jsp" %>
	
	<script src="resources/js/helpCenter/qnaUpdateForm.js" rel="javascript"></script>
</body>
</html>