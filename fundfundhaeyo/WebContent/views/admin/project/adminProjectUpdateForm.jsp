<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int searchNo = (int)request.getAttribute("searchNo");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뻔뻔해요</title>
<link rel="stylesheet" href="resources/css/admin/project/adminProjectUpdateForm.css">
</head>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<body>
	<%@ include file="../common/adminHeader.jsp" %>
	
    <div class="adm-content font_outer">
	    <div class="adm-content-top">
	    	<div class="adm-content-top-title fl"><h1>프로젝트심사</h1></div>
	    	<div class="adm-content-top-blank fl"></div>
	    	<div class="adm-content-top-root fl">
	    		<div class="adm-content-top-root-first fl"><a href="<%= contextPath %>">Home</a></div>
	    		<div class="adm-content-top-root-second fl">/</div>
	    		<div class="adm-content-top-root-third fl">Project</div>
	    	</div>
	    </div>
	    <div class="adm-content-center">
	    	<div class="adm-content-center-top">
	    		심사 대상 프로젝트를 조회 및 심사합니다.
	    	</div>
	    	<div class="adm-content-center-main">
	    		<div class="adm-content-center-main-header">프로젝트심사</div>
	    		<div class="adm-content-center-main-body pd15">
	    			<div class="adm-content-center-main-body-left pd15 fl">
						<div class="adm-content-left-area1">
							<div class="adm-content-left-area1-header adm-content-center-main-body-header">사진</div>
							<div class="adm-content-left-area1-body pd15">
								<div class="adm-content-left-area1-body-photo">
									<div class="slider">
									    <div class="slide-holder"></div>
									    <button id="pjBtn" type="button" class="prev">&lt;</button>
									    <button id="pjBtn" type="button" class="next">&gt;</button>
									    <div class="dots"></div>
									</div>
								</div>
							</div>
						</div>
						<div class="adm-content-left-area2">
							<div class="adm-content-left-area2-header adm-content-center-main-body-header">창작자 정보</div>
							<div class="adm-content-left-area2-body">
								<div class="adm-content-left-area2-body-grade">
									<div class="adm-content-left-area2-body-grade-row1">
										<div class="adm-content-left-area2-body-grade-row1-col1 hoverA2-2 fl">후원횟수</div>
										<div class="adm-content-left-area2-body-grade-row1-col2 hoverA2-2 fl"></div>
									</div>
									<div class="adm-content-left-area2-body-grade-row2">
										<div class="adm-content-left-area2-body-grade-row2-col1 hoverA2-2 fl">창작횟수</div>
										<div class="adm-content-left-area2-body-grade-row2-col2 hoverA2-2 fl"></div>
									</div>
									<div class="adm-content-left-area2-body-grade-row3">
										<div class="adm-content-left-area2-body-grade-row3-col1 hoverA2-2 fl">창작자등급</div>
										<div class="adm-content-left-area2-body-grade-row3-col2 hoverA2-2 fl"></div>
									</div>
									<div class="adm-content-left-area2-body-grade-row4">
										<div class="adm-content-left-area2-body-grade-row4-col1 hoverA2-2 fl">심사상태</div>
										<div class="adm-content-left-area2-body-grade-row4-col2 hoverA2-2 fl"></div>
									</div>
								</div>
							</div>
						</div>
					</div>	    		
					<div class="adm-content-center-main-body-right pd15 fl">
						<div class="adm-content-right-area1">
							<div class="adm-content-right-area1-header adm-content-center-main-body-header">세부사항</div>
							<div class="adm-content-right-area1-body pd15">
								<div class="adm-content-right-area1-body-info">
									<div class="adm-content-right-area1-body-info-col1 pd15 fl">
										<div class="adm-info-col1-row1 brlg br5">
											<div class="adm-info-projectNo-title pd15 bglg fl">프로젝트번호</div>
											<div class="adm-info-projectNo-input pd15 fl"></div>
										</div>
										<div class="adm-info-col1-row2 brlg br5">
											<div class="adm-info-projectCategoryName-title pd15 bglg fl">카테고리</div>
											<div class="adm-info-projectCategoryName-input pd15 fl"></div>
										</div>
										<div class="adm-info-col1-row3 brlg br5">
											<div class="adm-info-projectOverview-title pd15 bglg fl">요약</div>
											<div class="adm-info-projectOverview-input pd15 fl"></div>
										</div>
										<div class="adm-info-col1-row4 brlg br5">
											<div class="adm-info-projectTitle-title pd15 bglg fl">제목</div>
											<div class="adm-info-projectTitle-input pd15 fl"></div>
										</div>
										<div class="adm-info-col1-row5 brlg br5">
											<div class="adm-info-projectTag-title pd15 bglg fl">태그</div>
											<div class="adm-info-projectTag-input pd15 fl"></div>
										</div>
									</div>
									<div class="adm-content-right-area1-body-info-col2 pd15 fl">
										<div class="adm-info-col2-row1 brlg br5">
											<div class="adm-info-projectPrice-title pd15 bglg fl">목표금액</div>
											<div class="adm-info-projectPrice-input pd15 fl"></div>
											<input type="hidden" class="projectPrice">
										</div>
										<div class="adm-info-col2-row2 brlg br5">
											<div class="adm-info-projectStart-title pd15 bglg fl">시작일</div>
											<div class="adm-info-projectStart-input pd15 fl"></div>
										</div>
										<div class="adm-info-col2-row3 brlg br5">
											<div class="adm-info-projectEnd-title pd15 bglg fl">종료일</div>
											<div class="adm-info-projectEnd-input pd15 fl"></div>
										</div>
										<div class="adm-info-col2-row4 brlg br5">
											<div class="adm-info-projectPaymentBuyer-title pd15 bglg fl">결제기한</div>
											<div class="adm-info-projectPaymentBuyer-input pd15 fl"></div>
										</div>
										<div class="adm-info-col2-row5 brlg br5">
											<div class="adm-info-projectPaymentSeller-title pd15 bglg fl">정산일</div>
											<div class="adm-info-projectPaymentSeller-input pd15 fl"></div>
										</div>
									</div>
									<div class="adm-content-right-area1-body-info-col3 pd15 fl">
										<div class="adm-info-col3-row1 br5 brlg">
											<div class="adm-info-col3-row1-searchNo-title fl">심사할 프로젝트의 번호</div>
											<% if(searchNo != 0) { %>
											<div class="adm-info-col3-row1-searchNo-input fl"><input class="brlg" type="text" id="searchNo" value="<%= searchNo %>"></div>
											<script>var autoSearch = true;</script>
											<% }else{ %>
											<div class="adm-info-col3-row1-searchNo-input fl"><input class="brlg" type="text" id="searchNo"></div>
											<script>var autoSearch = false;</script>
											<% } %>
											<div class="adm-info-col3-row1-searchNo-btn br5 brlg fl"><a onclick="searchNo();" ><i class="fa-solid fa-magnifying-glass fa-xl hoverA3" style="width: 100%; height: 100%; margin-left: 5px; line-height: 150%;"></i></a></div>
										</div>
										<div class="adm-info-col3-row2 brlg br5">
											<div class="adm-info-projectContent-title bglg">내용</div>
											<div class="adm-info-projectContent-input"></div>
										</div>
										<div class="adm-info-col3-row3 brlg br5">
											<div class="adm-info-projectSeller-title bglg fl">창작자</div>
											<div class="adm-info-projectSeller-input fl"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="adm-content-right-area2">
							<div class="adm-content-right-area2-header adm-content-center-main-body-header">심사내용</div>
							<div class="adm-content-right-area2-body pd15"><input class="reason" type="text" style="width: 100%; height: 100%;" required></div>
						</div>
						<div class="adm-content-right-area3">
							<button type="button" class="adm-ban-allow-reset br5 brlg" onclick="resetUpdate();">초기화</button>
							<button type="button" class="adm-allow-btn br5 brlg" disabled onclick="banAllow('W');">승인</button>
							<button type="button" class="adm-ban-btn br5 brlg" disabled onclick="banAllow('B');">반려</button>
						</div>
					</div>
	    		</div>
		    </div>
		</div>
	</div>
	
	<%@ include file="../common/adminSidebar.jsp" %>
	
	<%@ include file="../common/adminFooter.jsp" %>
	
	<script type="text/javascript" src="resources/js/admin/project/adminProjectUpdateForm.js"></script>
</body>
</html>