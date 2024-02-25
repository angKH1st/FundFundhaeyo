<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String marketing = (String) request.getAttribute("marketing");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뻔뻔해요</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link rel="stylesheet" href="resources/css/member/memberEnrollForm.css">
<script src="resources/js/member/memberEnrollForm.js"></script>
</head>
<body>
	<%@ include file="../common/header.jsp" %>
	
	<div class="member_enroll_form_outer">
		<div class="blank_top"><%-- 여백 --%></div>
		<div class="member_enroll_form_main">
			<div class="enroll_form_outer shadow">
				<h3>회원가입</h3>
				<p>회원이 되어 다양한 펀딩에 참여해 보세요!</p>
				
				<br>
				
				<form id="enroll-form" action="<%= contextPath %>/insert.me" method="post">
					<input type="hidden" name="marketing" value="<%= marketing %>">
				
					<div class="enroll_input_frame">
						<div class="enroll_input_frame_row1">
							<div class="enroll_input_frame_row1_col1 fl"><b>아이디 *</b></div>
							<div class="enroll_input_frame_row1_col2 fl idInspection allClearAlert"></div>
						</div>
						<div class="enroll_input_frame_row2"><input class=".allClearInput" type="text" name="userId" placeholder="아이디" required></div>
					</div>
				
					<div class="enroll_input_frame">
						<div class="enroll_input_frame_row1">
							<div class="enroll_input_frame_row1_col1 fl"><b>비밀번호 *</b></div>
							<div class="enroll_input_frame_row1_col2 fl pwdInspection allClearAlert"></div>
						</div>
						<div class="enroll_input_frame_row2"><input class=".allClearInput" type="password" name="userPwd" placeholder="비밀번호" required></div>
					</div>
					
					<div class="enroll_input_frame">
						<div class="enroll_input_frame_row1">
							<div class="enroll_input_frame_row1_col1 fl"><b>비밀번호 확인 *</b></div>
							<div class="enroll_input_frame_row1_col2 fl pwdConfirmInspection allClearAlert"></div>
						</div>
						<div class="enroll_input_frame_row2"><input class=".allClearInput" type="password" name="userPwdConfirm" placeholder="비밀번호 확인" required></div>
					</div>
					
					<div class="enroll_input_frame">
						<div class="enroll_input_frame_row1">
							<div class="enroll_input_frame_row1_col1 fl"><b>이름 *</b></div>
							<div class="enroll_input_frame_row1_col2 fl nameInspection allClearAlert"></div>
						</div>
						<div class="enroll_input_frame_row2"><input class=".allClearInput" type="text" name="userName" placeholder="이름" required></div>
					</div>
					
					<div class="enroll_input_frame">
						<div class="enroll_input_frame_row1">
							<div class="enroll_input_frame_row1_col1 fl"><b>주민등록번호 *</b></div>
							<div class="enroll_input_frame_row1_col2 fl ssnInspection allClearAlert"></div>
						</div>
						<div class="enroll_input_frame_row2"><input class=".allClearInput" type="text" name="userSsn" placeholder="주민등록번호 '-'포함" required></div>
					</div>
					
					<div class="enroll_input_frame">
						<div class="enroll_input_frame_row1">
							<div class="enroll_input_frame_row1_col1 fl"><b>닉네임 *</b></div>
							<div class="enroll_input_frame_row1_col2 fl nicknameInspection allClearAlert"></div>
						</div>
						<div class="enroll_input_frame_row2"><input class=".allClearInput" type="text" name="nickname" placeholder="닉네임" required></div>
					</div>
					
					<div class="enroll_input_frame">
						<div class="enroll_input_frame_row1">
							<div class="enroll_input_frame_row1_col1 fl"><b>전화번호 *</b></div>
							<div class="enroll_input_frame_row1_col2 fl phoneInspection allClearAlert"></div>
						</div>
						<div class="enroll_input_frame_row2"><input class=".allClearInput" type="text" name="phone" placeholder="전화번호 '-'포함" required></div>
					</div>
					
					<div class="enroll_input_frame">
						<div class="enroll_input_frame_row1">
							<div class="enroll_input_frame_row1_col1 fl"><b>이메일 *</b></div>
							<div class="enroll_input_frame_row1_col2 fl emailInspection allClearAlert"></div>
						</div>
						<div class="enroll_input_frame_row2 enroll_input_frame_row2_email">
							<div class="enroll_input_email_header fl emailHeader"><input class="allClearInput" type="text" name="emailHead" placeholder="이메일" required style="height: 35px;"></div>
							<div class="enroll_input_email_body fl">@</div>
							<div class="enroll_input_email_footer fl emailFooter"><input class="allClearInput" type="text" name="emailBody" class="domain-txt" style="height: 35px;"></div>
							<div class="enroll_input_email_footer_select fl">
								<select class="box domain-list domain__list" style="height: 35px; border: 0.5px solid lightgray; border-radius: 5px;">
								  <option value="type">직접 입력</option>
								  <option value="google.com">google.com</option>
								  <option value="naver.com">naver.com</option>
								  <option value="daum.net">daum.net</option>
								</select> 
							</div>
						</div>
					</div>
					
					<div class="enroll_input_frame" style="margin-top: 15px;">
						<div class="enroll_input_frame_row1">
							<div class="enroll_input_frame_row1_col1 fl"><b>주소 *</b></div>
							<div class="enroll_input_frame_row1_col2 fl addressInspection allClearAlert"></div>
						</div>
						<div class="enroll_input_frame_row2"><input class=".allClearInput" type="text" name="address" placeholder="주소" required></div>
					</div>
					
					<br><br>
					
					<div align="center" class="enroll_form_submit_btn">
						<button type="button" class="enroll_form_submit_btn1 fl" style="margin-right: 16px;" onclick="location.href='<%= contextPath %>'">가입취소</button>
		        		<button type="submit" class="enroll_form_submit_btn2 fl" disabled>가입하기</button>
					</div>
					
				</form>
			</div>
	    </div>
	    <div class="blank_bottom"><%-- 여백 --%></div>
    </div>
    
	<%@ include file="../common/footer.jsp" %>
</body>
</html>