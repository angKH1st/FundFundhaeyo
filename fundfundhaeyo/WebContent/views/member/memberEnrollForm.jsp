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
<link rel="stylesheet" href="resources/css/memberEnrollForm.css">
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
							<div class="enroll_input_frame_row1_col2 fl">유효성 검사</div>
						</div>
						<div class="enroll_input_frame_row2"><input type="text" name="userId" required></div>
					</div>
				
					<div class="enroll_input_frame">
						<div class="enroll_input_frame_row1">
							<div class="enroll_input_frame_row1_col1 fl"><b>비밀번호 *</b></div>
							<div class="enroll_input_frame_row1_col2 fl">유효성 검사</div>
						</div>
						<div class="enroll_input_frame_row2"><input type="password" name="userPwd" required></div>
					</div>
					
					<div class="enroll_input_frame">
						<div class="enroll_input_frame_row1">
							<div class="enroll_input_frame_row1_col1 fl"><b>비밀번호 확인 *</b></div>
							<div class="enroll_input_frame_row1_col2 fl">유효성 검사</div>
						</div>
						<div class="enroll_input_frame_row2"><input type="password" required></div>
					</div>
					
					<div class="enroll_input_frame">
						<div class="enroll_input_frame_row1">
							<div class="enroll_input_frame_row1_col1 fl"><b>이름 *</b></div>
							<div class="enroll_input_frame_row1_col2 fl">유효성 검사</div>
						</div>
						<div class="enroll_input_frame_row2"><input type="text" name="userName" required></div>
					</div>
					
					<div class="enroll_input_frame">
						<div class="enroll_input_frame_row1">
							<div class="enroll_input_frame_row1_col1 fl"><b>주민등록번호 *</b></div>
							<div class="enroll_input_frame_row1_col2 fl">유효성 검사</div>
						</div>
						<div class="enroll_input_frame_row2"><input type="text" name="userSsn" required></div>
					</div>
					
					<div class="enroll_input_frame">
						<div class="enroll_input_frame_row1">
							<div class="enroll_input_frame_row1_col1 fl"><b>닉네임 *</b></div>
							<div class="enroll_input_frame_row1_col2 fl">유효성 검사</div>
						</div>
						<div class="enroll_input_frame_row2"><input type="text" name="nickname" required></div>
					</div>
					
					<div class="enroll_input_frame">
						<div class="enroll_input_frame_row1">
							<div class="enroll_input_frame_row1_col1 fl"><b>전화번호 *</b></div>
							<div class="enroll_input_frame_row1_col2 fl">유효성 검사</div>
						</div>
						<div class="enroll_input_frame_row2"><input type="text" name="phone" required></div>
					</div>
					
					<div class="enroll_input_frame">
						<div class="enroll_input_frame_row1">
							<div class="enroll_input_frame_row1_col1 fl"><b>이메일 *</b></div>
							<div class="enroll_input_frame_row1_col2 fl">유효성 검사</div>
						</div>
						<div class="enroll_input_frame_row2 enroll_input_frame_row2_email">
							<div class="enroll_input_email_header fl"><input type="text" name="emailHead" required style="height: 35px;"></div>
							<div class="enroll_input_email_body fl">@</div>
							<div class="enroll_input_email_footer fl"><input type="text" name="emailBody" class="domain-txt" style="height: 35px;"></div>
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
							<div class="enroll_input_frame_row1_col2 fl">유효성 검사</div>
						</div>
						<div class="enroll_input_frame_row2"><input type="text" name="address" required></div>
					</div>
					
					<br><br>
					
					<div align="center" class="enroll_form_submit_btn">
						<button type="button" class="enroll_form_submit_btn1 fl" style="margin-right: 16px;" onclick="location.href='<%= contextPath %>'">가입취소</button>
		        		<button type="submit" class="enroll_form_submit_btn2 fl">가입하기</button>
					</div>
					
				</form>
			</div>
	    </div>
	    <div class="blank_bottom"><%-- 여백 --%></div>
    </div>
    
    <script>
		 // 도메인 직접 입력 or domain option 선택
	    const domainListEl = document.querySelector('.domain-list')
	    const domainInputEl = document.querySelector('.domain-txt')
	    // select 옵션 변경 시
	    domainListEl.addEventListener('change', (event) => {
	      // option에 있는 도메인 선택 시
	      if(event.target.value !== "type") {
	        // 선택한 도메인을 input에 입력하고 readOnly
	        domainInputEl.value = event.target.value
	        domainInputEl.readOnly = true
	      } else { // 직접 입력 시
	        // input 내용 초기화 & 입력 가능하도록 변경
	        domainInputEl.value = ""
	        domainInputEl.readOnly = false
	      }
	    })
    </script>
    
	<%@ include file="../common/footer.jsp" %>
</body>
</html>