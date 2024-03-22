<%@page import="com.kh.semi1st.member.model.vo.Attachment"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	Attachment at = (Attachment) request.getAttribute("at");
	// 첨부파일이 없을 경우 null
	// 첨부파일이 있을 경우 파일번호, 원본명, 수정명, 저장경로
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뻔뻔해요</title>
<link rel="stylesheet" href="resources/css/member/memberUpdateForm.css">
</head>
<link rel="icon" sizes="32x32" type="image/png" href="resources/image/main.ico">
<body>
	<%@ include file="../common/header.jsp"%>

	<%
	int userNo = loginUser.getUserNo();
	String userId = loginUser.getUserId();
	String userName = loginUser.getUserName();
	String userSsn = loginUser.getUserSsn();
	String userNickname = loginUser.getUserNickname();
	String userPhone = loginUser.getUserPhone();
	String userEmail = loginUser.getUserEmail();
	String userAddress = loginUser.getUserAddress();
	String userMarketing = (loginUser.getUserMarketing() == null) ? "" : loginUser.getUserMarketing();
	String userProfile = (loginUser.getUserProfile() == null) ? "" : loginUser.getUserProfile();

	String userImg = loginUser.getUserImg();
	%>

	<form class="mypage_update_Form_rifht_out form" action="<%=contextPath%>/update.me" method="post" enctype="multipart/form-data">
		<div class="mypage_update_Form_outer font_outer">
			<div class="blank_top"><%-- 여백 --%></div>

			<div class="mypage_update_Form_main shadow brlg br5">
				<div class="mypage_update_Form_left fl">
					<%@ include file="../common/memberMypageSidebar.jsp"%>
				</div>

				<input type="hidden" name="userNo" value="<%=userNo%>">

				<div class="mypage_update_Form_right fl">
					<div class="mypage_update_Form_right_content1 pd15">
						<div class="mypage_update_Form_right_root">
							<span><a href="<%=request.getContextPath()%>/mypage.me">Home</a></span>
							<span> > </span> <span>회원 정보</span>
						</div>
						<div class="mypage_update_Form_right_title">
							<h3>회원정보수정</h3>
						</div>
						<div class="mypage_update_Form_right_info pd15 brlg br5">
							<div class="mypage_update_picture fl">
								<div class="mypage_update_picture_outline brlg br5">
									<div class="mypage_update_picture_org">
										<div id="file-area" style="display:none;"><input type="file" name="file" id="file" onchange="loadImg(this);"></div>
										<input type="hidden" name="attachmentOriginNo" value="<%=at.getAttachmentNo()%>"><img id="profileImg" class="circleImg" src="<%=contextPath%>/<%=userImg%>" width="150" height="150" onclick="uploadMemberProfile();">
									</div>
									<div class="mypage_update_picture_upload">프로필 사진</div>
								</div>
							</div>
							<div class="mypage_update_etc fl">
								<table class="mypage_update_etc_table">
									<tr>
										<td><br></td>
									</tr>
									<tr>
										<td width=110>아이디</td>
										<td width=150><input type="text" class="bgsb br5" name="userId" maxlength="12" value="<%=userId%>" readonly></td>
										<td width=90>전화번호</td>
										<td><input type="text" id="phoneInput" class="bgsb br5" name="userPhone" placeholder="- 포함해서 입력" maxlength="13" value="<%=userPhone%>"></td>
										<td width=60><button class="phoneBtn br5 blueBtnSmall" type="button">변경</button></td>
									</tr>
									<tr>
										<td><br></td>
									</tr>
									<tr>
										<td>이름</td>
										<td><input type="text" class="bgsb br5" name="userName" maxlength="10" value="<%=userName%>" readonly></td>
										<td>이메일</td>
										<td><input type="email" id="emailInput" class="bgsb br5" name="userEmail" value="<%=userEmail%>"></td>
										<td width=50><button class="emailBtn br5 blueBtnSmall" type="button">변경</button></td>
									</tr>
									<tr>
										<td><br></td>
									</tr>
									<tr>
										<td>주민등록번호</td>
										<td><input type="text" class="bgsb br5" name="userSsn" maxlength="14" value="<%=userSsn%>" readonly></td>
										<td>주소</td>
										<td><input type="text" id="addressInput" class="bgsb br5" name="userAddress" value="<%=userAddress%>"></td>
										<td width=50><button class="addressBtn br5 blueBtnSmall" type="button">변경</button></td>
									</tr>
									<tr>
										<td><br></td>
									</tr>
									<tr>
										<td>닉네임</td>
										<td><input type="text" class="bgsb br5" name="userNickname" maxlength="10" value="<%=userNickname%>"></td>
										<td>마케팅동의</td>
										<td><input type="text" id="marketingInput" class="bgsb br5" name="userMarketing" maxlength="1" value="<%=userMarketing%>"></td>
										<td width=50><button class="marketingBtn br5 blueBtnSmall" type="button">변경</button></td>
									</tr>
									<tr>
										<td><br></td>
									</tr>
									<tr>
										<td>소개말</td>
										<td colspan=3><input type="text" id="profileInput" class="bgsb br5" name="userProfile" maxlength="30" value="<%=userProfile%>"></td>
										<td width=50><button class="profileBtn br5 blueBtnSmall" type="button">변경</button></td>
									</tr>
								</table>
							</div>
						</div>
					</div>
					<div class="mypage_update_Form_right_content2 pd15">
						<div class="mypage_update_Form_right_title2"><%-- 여백 --%></div>
						<div class="mypage_update_Form_right_btn">
							<button type="submit" class="mypage_update_Form_right_submitBtn blueBtn br5">변경</button>
							<button type="button" class="mypage_update_Form_right_pwdBtn grayBtn br5" data-toggle="modal" data-target="#updatePwdModal">비밀번호변경</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="blank_bottom"><%-- 여백 --%></div>
	</form>
	
	<%-- 비밀번호 변경용 Modal --%>
	<div class="modal fade font_outer" id="updatePwdModal" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<%-- Modal Header --%>
				<div class="modal-header">
					<h4 class="modal-title">비밀번호 변경</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<%-- Modal body --%>
				<div class="modal-body" align="center">
					<form action="<%= contextPath %>/updatePwd.me" method="post">
						<input type="hidden" name="userId" value="<%=userId%>">
							<div class="update-input-wrap input-id">
		                        <i class="fas fa-key"></i>
		                        <input type="password" name="userPwd" placeholder="현재 비밀번호" required>
	                    	</div>
	                    	<div class="update-input-wrap input-id">
		                        <i class="fas fa-key"></i>
		                        <input type="password" name="updatePwd" placeholder="변경할 비밀번호" required>
	                    	</div>
	                    	<div class="update-input-wrap input-id">
		                        <i class="fas fa-key"></i>
		                        <input type="password" name="checkPwd" placeholder="변경할 비밀번호 확인" required>
	                    	</div>
						<br><br>
						<button type="submit" class="update-btn" onclick="return validatePwd();">비밀번호 변경</button>
						<br><br>
					</form>
				</div>
			</div>
		</div>
	</div>

	<%@ include file="../common/footer.jsp"%>

	<script src="resources/js/member/memberUpdateForm.js"></script>
</body>
</html>