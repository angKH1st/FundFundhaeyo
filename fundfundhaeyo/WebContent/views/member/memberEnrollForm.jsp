<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			<div class="enroll_form_outer">
				<h3>회원가입</h3>
				<p>회원이 되어 다양한 펀딩에 참여해 보세요!</p>
				
				<br>
				
				<form id="enroll-form" action="<%= contextPath %>/insert.me" method="post">
					<div class="enroll_input_frame">
						<div class="enroll_input_frame_row1">
							<div class="enroll_input_frame_row1_col1 fl">아이디 *</div>
							<div class="enroll_input_frame_row1_col2 fl">유효성 검사</div>
						</div>
						<div class="enroll_input_frame_row2"><input type="text" name="userId" required></div>
					</div>
				
					<div class="enroll_input_frame">
						<div class="enroll_input_frame_row1">
							<div class="enroll_input_frame_row1_col1 fl">비밀번호 *</div>
							<div class="enroll_input_frame_row1_col2 fl">유효성 검사</div>
						</div>
						<div class="enroll_input_frame_row2"><input type="password" name="userPwd" required></div>
					</div>
					
					<div class="enroll_input_frame">
						<div class="enroll_input_frame_row1">
							<div class="enroll_input_frame_row1_col1 fl">비밀번호 확인 *</div>
							<div class="enroll_input_frame_row1_col2 fl">유효성 검사</div>
						</div>
						<div class="enroll_input_frame_row2"><input type="password" required></div>
					</div>
					
					<div class="enroll_input_frame">
						<div class="enroll_input_frame_row1">
							<div class="enroll_input_frame_row1_col1 fl">이름 *</div>
							<div class="enroll_input_frame_row1_col2 fl">유효성 검사</div>
						</div>
						<div class="enroll_input_frame_row2"><input type="text" required></div>
					</div>
					
					<div class="enroll_input_frame">
						<div class="enroll_input_frame_row1">
							<div class="enroll_input_frame_row1_col1 fl">주민등록번호 *</div>
							<div class="enroll_input_frame_row1_col2 fl">유효성 검사</div>
						</div>
						<div class="enroll_input_frame_row2"><input type="text" required></div>
					</div>
					
					<div class="enroll_input_frame">
						<div class="enroll_input_frame_row1">
							<div class="enroll_input_frame_row1_col1 fl">닉네임 *</div>
							<div class="enroll_input_frame_row1_col2 fl">유효성 검사</div>
						</div>
						<div class="enroll_input_frame_row2"><input type="text" required></div>
					</div>
					
					<div class="enroll_input_frame">
						<div class="enroll_input_frame_row1">
							<div class="enroll_input_frame_row1_col1 fl">전화번호 *</div>
							<div class="enroll_input_frame_row1_col2 fl">유효성 검사</div>
						</div>
						<div class="enroll_input_frame_row2"><input type="text" required></div>
					</div>
					
					<div class="enroll_input_frame">
						<div class="enroll_input_frame_row1">
							<div class="enroll_input_frame_row1_col1 fl">이메일 *</div>
							<div class="enroll_input_frame_row1_col2 fl">유효성 검사</div>
						</div>
						<div class="enroll_input_frame_row2 enroll_input_frame_row2_email">
							<div class="enroll_input_email_header fl"><input type="text" required></div>
							<div class="enroll_input_email_body fl">@</div>
							<div class="enroll_input_email_footer fl"><input type="text" class="domain-txt"></div>
							<div class="enroll_input_email_footer_select fl">
								<select class="box domain-list domain__list">
								  <option value="type">직접 입력</option>
								  <option value="google.com">google.com</option>
								  <option value="naver.com">naver.com</option>
								  <option value="daum.net">daum.net</option>
								</select> 
							</div>
						</div>
					</div>
					
					<div class="enroll_input_frame">
						<div class="enroll_input_frame_row1">
							<div class="enroll_input_frame_row1_col1 fl">주소 *</div>
							<div class="enroll_input_frame_row1_col2 fl">유효성 검사</div>
						</div>
						<div class="enroll_input_frame_row2"><input type="text" required></div>
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
	        // 선택한 도메인을 input에 입력하고 disabled
	        domainInputEl.value = event.target.value
	        domainInputEl.disabled = true
	      } else { // 직접 입력 시
	        // input 내용 초기화 & 입력 가능하도록 변경
	        domainInputEl.value = ""
	        domainInputEl.disabled = false
	      }
	    })
    </script>
    
	<%@ include file="../common/footer.jsp" %>
</body>
</html>