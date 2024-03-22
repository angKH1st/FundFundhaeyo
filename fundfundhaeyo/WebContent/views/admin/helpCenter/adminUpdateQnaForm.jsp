<%@page import="com.kh.semi1st.helpCenter.model.vo.Reply"%>
<%@page import="com.kh.semi1st.helpCenter.model.vo.Attachment"%>
<%@page import="com.kh.semi1st.helpCenter.model.vo.QNA"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	QNA q = null;
	Attachment at = null;
	Reply r = null;
	if((QNA)request.getAttribute("q") != null){
		q = (QNA)request.getAttribute("q");
	}
	if((Attachment)request.getAttribute("at") != null){
		at = (Attachment)request.getAttribute("at");
	}
	if((Reply)request.getAttribute("r") != null){
		r = (Reply)request.getAttribute("r");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뻔뻔해요</title>
<link rel="stylesheet" href="resources/css/admin/helpCenter/adminUpdateQnaForm.css">
</head>
<link rel="icon" sizes="32x32" type="image/png" href="resources/image/main.ico">
<body>
	<%@ include file="../common/adminHeader.jsp" %>
	
	<form action="admUpdateQna.hp" method="get">
    <div class="adm-content font_outer">
	    <div class="adm-content-top">
	    	<div class="adm-content-top-title fl"><h1>Q&A답변</h1></div>
	    	<div class="adm-content-top-blank fl"></div>
	    	<div class="adm-content-top-root fl">
	    		<div class="adm-content-top-root-first fl"><a href="<%= contextPath %>">Home</a></div>
	    		<div class="adm-content-top-root-second fl">/</div>
	    		<div class="adm-content-top-root-third fl">HelpCenter</div>
	    	</div>
	    </div>
	    <div class="adm-content-center">
	    	<div class="adm-content-center-top">
	    		Q&A 답변을 등록, 수정합니다.
	    	</div>
	    	<div class="adm-content-center-main">
	    		<div class="adm-content-center-main-header">Q&A답변</div>
	    		<div class="adm-content-center-main-body">
	    			<div class="adm-content-center-main-body fl">
	    				<div class="adm-content-center-main-body-top">
	    					<div class="adm-content-center-main-body-top-search fl">답변을 등록,수정할 Q&A의 번호를 입력</div>
	    					<div class="adm-content-center-main-body-top-search-input fl"><input type="number" id="search" name="search"></div>
	    					<div class="adm-content-center-main-body-top-search-btn fl" onclick="searchQna();"><i class="fa-solid fa-magnifying-glass fa-xl hoverA3" style="width: 100%; height: 100%;"></i></div>
	    				</div>
	    				<div class="adm-content-center-main-body-content">
		    				<div class="adm-content-center-main-body-inside brlg br5">
			    				<div class="adm-content-center-main-body-row0 centerXY">Q&A상세</div>
				    			<div class="adm-content-center-main-body-blank"></div>
				    			<div class="adm-content-center-main-body-row1">
				    				<div class="adm-announcement-title fl centerXY">제목</div>
				    				<% if(q != null){ %>
				    				<div class="adm-announcement-title-input fl"><input type="text" name="title" value="<%= q.getQnaTitle() %>" readonly></div>
				    				<% }else { %>
				    				<div class="adm-announcement-title-input fl"><input type="text" name="title" readonly></div>
				    				<% } %>
				    				<div class="adm-announcement-title fl centerXY">작성자</div>
				    				<% if(q != null){ %>
				    				<div class="adm-announcement-title-input fl"><input type="text" name="writer" value="<%= q.getQnaWriter() %>" readonly></div>
				    				<% }else { %>
				    				<div class="adm-announcement-title-input fl"><input type="text" name="writer" readonly></div>
				    				<% } %>
				    			</div>
				    			<div class="adm-content-center-main-body-rowFile">
				    				<div class="adm-announcement-title fl centerXY">첨부파일</div>
				    				<% if(q != null && at != null){ %>
				    				<div class="adm-announcement-title-input fl">
				    					<a download="<%= at.getAttachmentOriginName() %>" href="<%= contextPath %>/<%= at.getAttachmentPath() + at.getAttachmentUpdateName() %>"><%= at.getAttachmentOriginName() %></a>
				    				</div>
				    				<% }else { %>
				    				<div class="adm-announcement-title-input fl" style="padding-top: 14px;">첨부파일이 없습니다.</div>
				    				<% } %>
				    			</div>
				    			<div class="adm-content-center-main-body-row2">
				    				<div class="adm-announcement-content fl centerXY">내용</div>
				    				<% if(q != null){ %>
				    				<div class="adm-announcement-content-input fl"><textarea name="content" readonly><%= q.getQnaContent() %></textarea></div>
				    				<% }else { %>
				    				<div class="adm-announcement-content-input fl"><textarea name="content" readonly></textarea></div>
				    				<% } %>
				    			</div>
				    			<div class="adm-content-center-main-body-rowAnswer centerXY">
				    				<div class="adm-answer-title fl centerXY">답변</div>
				    				<div class="adm-answer-input fl">
				    					<% if(r != null){ %>
				    					<input type="text" name="answer" value="<%= r.getReplyContent() %>" required>
				    					<input type="hidden" name="type" value="update">
				    					<% }else{ %>
				    					<input type="text" name="answer" required>
				    					<input type="hidden" name="type" value="insert">
				    					<% } %>
			    					</div>
				    			</div>
				    			<div class="adm-content-center-main-body-row3 centerXY">
				    				<input type="hidden" name="actionType" id="actionType" value="">
				    				<% if(q != null){ %>
				    				<input type="hidden" id="qnaAnswerStatus" value="<%= q.getQnaAnswerStatus() %>">
				    				<% } %>
				    					<button type="button" onclick="moveToQNA();">목록으로</button>
				    				<% if(q != null){ %>
					    				<input type="hidden" name="qNo" id="qNo" value="<%= q.getQnaNo() %>">
					    				<button type="submit" id="submitBtn" disabled>제출</button>
				    					<button type="button" id="deleteBtn">게시글 삭제</button>
				    					<button type="button" id="deleteAnswerBtn" disabled>답변 삭제</button>
					    				<button type="reset" id="resetBtn" disabled>초기화</button>
				    				<% } %>
				    			</div>
			    			</div>
		    			</div>
	    			</div>
	    		</div>
		    </div>
		</div>
	</div>
	</form>
	
	<%@ include file="../common/adminSidebar.jsp" %>
	
	<%@ include file="../common/adminFooter.jsp" %>
	
	<script type="text/javascript" src="resources/js/admin/helpCenter/adminUpdateQnaForm.js"></script>
</body>
</html>