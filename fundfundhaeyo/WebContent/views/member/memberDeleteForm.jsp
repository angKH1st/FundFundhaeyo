<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뻔뻔해요</title>
<link rel="stylesheet" href="resources/css/member/memberDeleteForm.css">
</head>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<body>
	<%@ include file="../common/header.jsp" %>
	
	<div class="mypage_delete_form_outer font_outer">
		<div class="blank_top"><%-- 여백 --%></div>
		
			<div class="mypage_delete_form_main shadow brlg br5">
				<div class="mypage_delete_form_left fl">
					<%@ include file="../common/memberMypageSidebar.jsp" %>
				</div>
				<div class="mypage_delete_form_right fl">
					<div class="mypage_delete_form_right_root pd15">
						<span><a href="<%= request.getContextPath() %>/mypage.me">Home</a></span>
						<span> > </span>
						<span>회원정보</span>
					</div>
					<div class="mypage_delete_form_right_title pd15"><h3>회원탈퇴</h3></div>
					<div class="mypage_delete_form_right_deleteForm" align="center">
						<br><br><br>
						<div class="mypage_delete_form_right_outline brlg br5">
							<div class="delete-input-container">
								<span class="delete-input-title">탈퇴 전 비밀번호 확인</span>
								<br><br>
			                    <div class="delete-input-wrap input-id">
			                        <i class="fas fa-key"></i>
			                        <input placeholder="비밀번호" type="password" name="userPwd" required>
			                    </div>
			                    <div class="delete-input-wrap input-password">
			                        <i class="fas fa-key"></i>
			                        <input placeholder="비밀번호 확인" type="password" name="userPwdCheck" required>
			                    </div>
			                </div>
			                <div class="delete-btn-wrap">
			                	<input type="hidden" name="userId" value="<%= loginUser.getUserId() %>">
			                	<br><br>
			                    <button class="delete-btn" type="submit">확인</button>
			                    <a href="<%= contextPath %>/moveToSearchId.me">아이디/비밀번호 찾기</a>
			                    <br><br>
			                </div>
		                </div>
					</div>
				</div>
			</div>
		<div class="blank_bottom"><%-- 여백 --%></div>
	</div>
		
	<%@ include file="../common/footer.jsp" %>
	
	<script src="resources/js/member/memberDeleteForm.js"></script>
</body>
</html>