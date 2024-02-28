<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String searchId = (String)request.getAttribute("searchId");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뻔뻔해요</title>
<link rel="stylesheet" href="resources/css/admin/member/adminMemberUpdateForm.css">
</head>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<body>
	<%@ include file="../common/adminHeader.jsp" %>
	
    <div class="adm-content">
	    <div class="adm-content-top">
	    	<div class="adm-content-top-title fl"><h1>회원정보수정</h1></div>
	    	<div class="adm-content-top-blank fl"></div>
	    	<div class="adm-content-top-root fl">
	    		<div class="adm-content-top-root-first fl"><a href="<%= contextPath %>">Home</a></div>
	    		<div class="adm-content-top-root-second fl">/</div>
	    		<div class="adm-content-top-root-third fl">Member</div>
	    	</div>
	    </div>
	    <div class="adm-content-center">
	    	<div class="adm-content-center-top">
	    		top : TBU
	    	</div>
	    	<div class="adm-content-center-main">
	    		<div class="adm-content-center-main-header">회원정보수정</div>
	    		<div class="adm-content-center-main-body pd15">
					<div class="adm-content-center-main-body-left pd15 fl">
						<div class="adm-content-left-profile1">
							<div class="adm-content-left-profile1-header adm-content-center-main-body-header">프로필 사진</div>
							<div class="adm-content-left-profile1-body pd15">
								<div class="adm-content-left-profile1-body-photo">
									프사 넣기
								</div>
							</div>
						</div>
						<div class="adm-content-left-profile2">
							<div class="adm-content-left-profile2-header adm-content-center-main-body-header">상태</div>
							<div class="adm-content-left-profile2-body">
								<div class="adm-content-left-profile2-body-grade">
									<div class="adm-content-left-profile2-body-grade-row1">
										<div class="adm-content-left-profile2-body-grade-row1-col1 fl">후원횟수</div>
										<div class="adm-content-left-profile2-body-grade-row1-col2 fl">내용 A</div>
									</div>
									<div class="adm-content-left-profile2-body-grade-row2">
										<div class="adm-content-left-profile2-body-grade-row2-col1 fl">창작횟수</div>
										<div class="adm-content-left-profile2-body-grade-row2-col2 fl">내용 B</div>
									</div>
									<div class="adm-content-left-profile2-body-grade-row3">
										<div class="adm-content-left-profile2-body-grade-row3-col1 fl">회원등급</div>
										<div class="adm-content-left-profile2-body-grade-row3-col2 fl">내용 C</div>
									</div>
									<div class="adm-content-left-profile2-body-grade-row4">
										<div class="adm-content-left-profile2-body-grade-row4-col1 fl">회원상태</div>
										<div class="adm-content-left-profile2-body-grade-row4-col2 fl"></div>
									</div>
								</div>
							</div>
						</div>
					</div>	    		
					<div class="adm-content-center-main-body-right pd15 fl">
						<div class="adm-content-right-profile1">
							<div class="adm-content-right-profile1-header adm-content-center-main-body-header">인적사항</div>
							<div class="adm-content-right-profile1-body pd15">
								<div class="adm-content-right-profile1-body-info">
									<div class="adm-content-right-profile1-body-info-col1 pd15 fl">
										<div class="adm-info-col1-row1">
											<div class="adm-info-userNo-title fl">회원번호</div>
											<div class="adm-info-userNo-input fl"></div>
										</div>
										<div class="adm-info-col1-row2">
											<div class="adm-info-userId-title fl">아이디</div>
											<div class="adm-info-userId-input fl"></div>
										</div>
										<div class="adm-info-col1-row3">
											<div class="adm-info-userPwd-title fl">비밀번호</div>
											<div class="adm-info-userPwd-input fl"></div>
										</div>
										<div class="adm-info-col1-row4">
											<div class="adm-info-userName-title fl">이름</div>
											<div class="adm-info-userName-input fl"></div>
										</div>
										<div class="adm-info-col1-row5">
											<div class="adm-info-userSsn-title fl">주민등록번호</div>
											<div class="adm-info-userSsn-input fl"></div>
										</div>
									</div>
									<div class="adm-content-right-profile1-body-info-col2 pd15 fl">
										<div class="adm-info-col2-row1">
											<div class="adm-info-userNickname-title fl">닉네임</div>
											<div class="adm-info-userNickname-input fl"></div>
										</div>
										<div class="adm-info-col2-row2">
											<div class="adm-info-userPhone-title fl">휴대폰</div>
											<div class="adm-info-userPhone-input fl"></div>
										</div>
										<div class="adm-info-col2-row3">
											<div class="adm-info-userEmail-title fl">이메일</div>
											<div class="adm-info-userEmail-input fl"></div>
										</div>
										<div class="adm-info-col2-row4">
											<div class="adm-info-userAddress-title fl">주소</div>
											<div class="adm-info-userAddress-input fl"></div>
										</div>
										<div class="adm-info-col2-row5">
											<div class="adm-info-userMarketing-title fl">마케팅동의</div>
											<div class="adm-info-userMarketing-input fl"></div>
										</div>
									</div>
									<div class="adm-content-right-profile1-body-info-col3 pd15 fl">
										<div class="adm-info-col3-row1">
											<div class="adm-info-col3-row1-searchId-title fl">수정할 회원의 ID 입력</div>
											<% if(searchId != null) { %>
											<div class="adm-info-col3-row1-searchId-input fl"><input type="text" id="searchId" value="<%= searchId %>"></div>
											<script>var autoSearch = true;</script>
											<% }else{ %>
											<div class="adm-info-col3-row1-searchId-input fl"><input type="text" id="searchId"></div>
											<script>var autoSearch = false;</script>
											<% } %>
											<div class="adm-info-col3-row1-searchId-btn fl"><a onclick="searchId();" ><i class="fa-solid fa-magnifying-glass fa-xl" style="width: 100%; height: 100%; line-height: 110%;"></i></a></div>
										</div>
										<div class="adm-info-col3-row2 pd15">
											<div class="adm-info-userProfile-title">소개말</div>
											<div class="adm-info-userProfile-input"></div>
										</div>
										<div class="adm-info-col3-row3 pd15">
											<div class="adm-info-userEnrollDate-title fl">회원가입일</div>
											<div class="adm-info-userEnrollDate-input fl"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="adm-content-right-profile2">
							<div class="adm-content-right-profile2-header adm-content-center-main-body-header">신고 관련?</div>
							<div class="adm-content-right-profile2-body pd15"></div>
						</div>
						<div class="adm-content-right-profile3">
							<button type="button" class="adm-ban-btn" onclick="banAllow('N');">차단</button>
							<button type="button" class="adm-allow-btn" onclick="banAllow('Y');">차단해제</button>
						</div>
					</div>	    		
	    		</div>
		    </div>
		</div>
	</div>
	
	<%@ include file="../common/adminSidebar.jsp" %>
	
	<%@ include file="../common/adminFooter.jsp" %>
	
	<script type="text/javascript" src="resources/js/admin/member/adminMemberUpdateForm.js"></script>
</body>
</html>