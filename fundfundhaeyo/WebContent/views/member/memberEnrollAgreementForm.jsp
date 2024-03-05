<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뻔뻔해요</title>
<link rel="stylesheet" href="resources/css/member/memberEnrollAgreementForm.css">
</head>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<body>
	<%@ include file="../common/header.jsp" %>
	
	<div class="member_enroll_agreement_form_outer">
		<div class="blank_top"><%-- 여백 --%></div>
		
		<div class="member_enroll_agreement_form_main">
		    <form id="agreementForm" action="<%= contextPath %>/moveToEnroll.me" method="post" class="signup-form">
		
				<div class="enroll_agreement_form_outer shadow">
					<div class="enroll_agreement_form_row1"><h6>약관 동의</h6></div>
					<div class="enroll_agreement_form_row2">
						<div class="enroll_agreement_form_row2_col1 fl"><p style= "margin-top: 15px;">회원가입 약관에 모두 동의합니다</p></div>
						<div class="enroll_agreement_form_row2_col2 fl">
							<input type="checkbox" id="checkbox">
							<label for="checkbox"></label>
						</div>
					</div>
					<div class="enroll_agreement_form_row3">
						<div class="enroll_agreement_form_row3_row1">
							<div class="enroll_agreement_form_row3_row1_col1 fl"><p style= "margin-top: 15px;">이용약관 동의 <span class="required">(필수)</span></p></div>
							<div class="enroll_agreement_form_row3_row1_col2 fl">
								<input type="checkbox" id="checkbox1">
								<label for="checkbox1"></label>
							</div>
						</div>
						<div class="enroll_agreement_form_row3_row2">
							제1조(목적) 이 약관은 업체 회사(전자상거래 사업자)가 운영하는 업체 사이버 몰(이하 “몰”이라 한다)에서 제공하는 인터넷 관련 서비스(이하 “서비스”라 한다)를 이용함에 있어 사이버 몰과 이용자의 권리․의무 및 책임사항을 규정함을 목적으로 합니다.<br>
							  ※「PC통신, 무선 등을 이용하는 전자상거래에 대해서도 그 성질에 반하지 않는 한 이 약관을 준용합니다.」<br><br>
							  
							제2조(정의) <br>
							  ① “몰”이란 업체 회사가 재화 또는 용역(이하 “재화 등”이라 함)을 이용자에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 재화 등을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 사이버몰을 운영하는 사업자의 의미로도 사용합니다.<br>
							  ② “이용자”란 “몰”에 접속하여 이 약관에 따라 “몰”이 제공하는 서비스를 받는 회원 및 비회원을 말합니다.<br>
							  ③ ‘회원’이라 함은 “몰”에 회원등록을 한 자로서, 계속적으로 “몰”이 제공하는 서비스를 이용할 수 있는 자를 말합니다.<br>
							  ④ ‘비회원’이라 함은 회원에 가입하지 않고 “몰”이 제공하는 서비스를 이용하는 자를 말합니다.<br><br>
							 
							제3조 (약관 등의 명시와 설명 및 개정) <br>
							  ① “몰”은 이 약관의 내용과 상호 및 대표자 성명, 영업소 소재지 주소(소비자의 불만을 처리할 수 있는 곳의 주소를 포함), 전화번호․모사전송번호․전자우편주소, 사업자등록번호, 통신판매업 신고번호, 개인정보관리책임자 등을 이용자가 쉽게 알 수 있도록 00 사이버몰의 초기 서비스화면(전면)에 게시합니다. 다만, 약관의 내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있습니다.<br>
							  ② “몰은 이용자가 약관에 동의하기에 앞서 약관에 정하여져 있는 내용 중 청약철회․배송책임․환불조건 등과 같은 중요한 내용을 이용자가 이해할 수 있도록 별도의 연결화면 또는 팝업화면<br>
						</div>
					</div>
					<div class="enroll_agreement_form_row4">
						<div class="enroll_agreement_form_row4_row1">
							<div class="enroll_agreement_form_row4_row1_col1 fl"><p style= "margin-top: 15px;">개인정보 수집 및 이용 동의 <span class="required">(필수)</span></p></div>
							<div class="enroll_agreement_form_row4_row1_col2 fl">
								<input type="checkbox" id="checkbox2">
								<label for="checkbox2"></label>
							</div>
						</div>
						<div class="enroll_agreement_form_row4_row2">
							제1조(목적) 이 약관은 업체 회사(전자상거래 사업자)가 운영하는 업체 사이버 몰(이하 “몰”이라 한다)에서 제공하는 인터넷 관련 서비스(이하 “서비스”라 한다)를 이용함에 있어 사이버 몰과 이용자의 권리․의무 및 책임사항을 규정함을 목적으로 합니다.<br>
							  ※「PC통신, 무선 등을 이용하는 전자상거래에 대해서도 그 성질에 반하지 않는 한 이 약관을 준용합니다.」<br><br>
							  
							제2조(정의) <br>
							  ① “몰”이란 업체 회사가 재화 또는 용역(이하 “재화 등”이라 함)을 이용자에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 재화 등을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 사이버몰을 운영하는 사업자의 의미로도 사용합니다.<br>
							  ② “이용자”란 “몰”에 접속하여 이 약관에 따라 “몰”이 제공하는 서비스를 받는 회원 및 비회원을 말합니다.<br>
							  ③ ‘회원’이라 함은 “몰”에 회원등록을 한 자로서, 계속적으로 “몰”이 제공하는 서비스를 이용할 수 있는 자를 말합니다.<br>
							  ④ ‘비회원’이라 함은 회원에 가입하지 않고 “몰”이 제공하는 서비스를 이용하는 자를 말합니다.<br><br>
							 
							제3조 (약관 등의 명시와 설명 및 개정) <br>
							  ① “몰”은 이 약관의 내용과 상호 및 대표자 성명, 영업소 소재지 주소(소비자의 불만을 처리할 수 있는 곳의 주소를 포함), 전화번호․모사전송번호․전자우편주소, 사업자등록번호, 통신판매업 신고번호, 개인정보관리책임자 등을 이용자가 쉽게 알 수 있도록 00 사이버몰의 초기 서비스화면(전면)에 게시합니다. 다만, 약관의 내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있습니다.<br>
							  ② “몰은 이용자가 약관에 동의하기에 앞서 약관에 정하여져 있는 내용 중 청약철회․배송책임․환불조건 등과 같은 중요한 내용을 이용자가 이해할 수 있도록 별도의 연결화면 또는 팝업화면<br>
						</div>
					</div>
					<div class="enroll_agreement_form_row5">
						<div class="enroll_agreement_form_row5_row1">
							<div class="enroll_agreement_form_row5_row1_col1 fl"><p style= "margin-top: 15px;">마케팅 동의 (선택)</p></div>
							<div class="enroll_agreement_form_row5_row1_col2 fl">
								<input type="checkbox" id="checkbox3">
								<label for="checkbox3"></label>
							</div>
						</div>
						<div class="enroll_agreement_form_row5_row2">
							제1조(목적) 이 약관은 업체 회사(전자상거래 사업자)가 운영하는 업체 사이버 몰(이하 “몰”이라 한다)에서 제공하는 인터넷 관련 서비스(이하 “서비스”라 한다)를 이용함에 있어 사이버 몰과 이용자의 권리․의무 및 책임사항을 규정함을 목적으로 합니다.<br>
							  ※「PC통신, 무선 등을 이용하는 전자상거래에 대해서도 그 성질에 반하지 않는 한 이 약관을 준용합니다.」<br><br>
							  
							제2조(정의) <br>
							  ① “몰”이란 업체 회사가 재화 또는 용역(이하 “재화 등”이라 함)을 이용자에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 재화 등을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 사이버몰을 운영하는 사업자의 의미로도 사용합니다.<br>
							  ② “이용자”란 “몰”에 접속하여 이 약관에 따라 “몰”이 제공하는 서비스를 받는 회원 및 비회원을 말합니다.<br>
							  ③ ‘회원’이라 함은 “몰”에 회원등록을 한 자로서, 계속적으로 “몰”이 제공하는 서비스를 이용할 수 있는 자를 말합니다.<br>
							  ④ ‘비회원’이라 함은 회원에 가입하지 않고 “몰”이 제공하는 서비스를 이용하는 자를 말합니다.<br><br>
							 
							제3조 (약관 등의 명시와 설명 및 개정) <br>
							  ① “몰”은 이 약관의 내용과 상호 및 대표자 성명, 영업소 소재지 주소(소비자의 불만을 처리할 수 있는 곳의 주소를 포함), 전화번호․모사전송번호․전자우편주소, 사업자등록번호, 통신판매업 신고번호, 개인정보관리책임자 등을 이용자가 쉽게 알 수 있도록 00 사이버몰의 초기 서비스화면(전면)에 게시합니다. 다만, 약관의 내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있습니다.<br>
							  ② “몰은 이용자가 약관에 동의하기에 앞서 약관에 정하여져 있는 내용 중 청약철회․배송책임․환불조건 등과 같은 중요한 내용을 이용자가 이해할 수 있도록 별도의 연결화면 또는 팝업화면<br>
						</div>
					</div>
					<div class="enroll_agreement_form_row6">
						<div class="enroll_agreement_form_row6_row1"><%-- 여백 --%></div>
						<div class="enroll_agreement_form_row6_row2">
							<button type="button" class="enroll_agreement_form_row6_row2_btn1 brlg shadow fl" style="margin-right: 16px;" onclick="history.back();">이전</button>
			        		<button type="submit" class="enroll_agreement_form_row6_row2_btn2 brlg shadow next-button fl">다음</button>
						</div>
					</div>
				</div>
				
		    </form>
	    </div>
	    
	    <div class="blank_bottom"><%-- 여백 --%></div>
    </div>
    
	<%@ include file="../common/footer.jsp" %>
	
	<script src="resources/js/member/memberEnrollAgreementForm.js"></script>
</body>
</html>