<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뻔뻔해요</title>
<link rel="stylesheet" href="resources/css/member/memberEnrollAgreementForm.css">
</head>
<link rel="icon" sizes="32x32" type="image/png" href="resources/image/main.ico">
<body>
	<%@ include file="../common/header.jsp" %>
	
	<div class="member_enroll_agreement_form_outer">
		<div class="blank_top"><%-- 여백 --%></div>

		<div class="member_enroll_agreement_form_main">
			<form id="agreementForm" action="<%= contextPath %>/moveToEnroll.me"
				method="post" class="signup-form">

				<div class="enroll_agreement_form_outer shadow">
					<div class="enroll_agreement_form_row1">
						<h6>약관 동의</h6>
					</div>
					<div class="enroll_agreement_form_row2">
						<div class="enroll_agreement_form_row2_col1 fl">
							<p style="margin-top: 15px;">회원가입 약관에 모두 동의합니다</p>
						</div>
						<div class="enroll_agreement_form_row2_col2 fl">
							<input type="checkbox" id="checkbox"> <label
								for="checkbox"></label>
						</div>
					</div>
					<div class="enroll_agreement_form_row3">
						<div class="enroll_agreement_form_row3_row1">
							<div class="enroll_agreement_form_row3_row1_col1 fl">
								<p style="margin-top: 15px;">
									이용약관 동의 <span class="required">(필수)</span>
								</p>
							</div>
							<div class="enroll_agreement_form_row3_row1_col2 fl">
								<input type="checkbox" id="checkbox1"> <label
									for="checkbox1"></label>
							</div>
						</div>
						<div class="enroll_agreement_form_row3_row2">
							<div style="font-size: 10px">
								제 1 조 목적<br> 본 약관은 주식회사 뻔뻔해요(이하 “회사”)에서 운영하는 투자형 및 리워드형 펀딩과
								MOAH 모바일 어플리케이션을 통하여 제공하는 인터넷 관련 제반서비스(이사 “서비스”)의 이용과 관련하여 회사와
								회원과의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다. <br>
								<br> 제 2 조 용어의 정의<br> 본 약관에서 사용하는 용어의 정의는 다음과 같습니다. <br>
								서비스 : 회원이본 약관에 따라 이용할 수 있는 회사가 제공하는 모든 서비스를 의미합니다.<br> 회원 :
								본 약관에 따라 회사와 서비스 이용계약을 체결하고 홈페이지를 통하여 서비스를 이용할 수 있는 자격을 부여 받은 자를
								말합니다.<br> 아이디(ID) : 회원의 식별과 서비스 이용을 위하여 회원이 정하고 회사가 승인하는
								문자와 숫자의 조합을 의미합니다.<br> 비밀번호 : 회원이 부여 받은 아이디와 일치되는 회원임을 확인하고
								비밀보호를 위해 회원 자신이 정한 문자 또는 숫자의 조합을 의미합니다.<br> 게시물 : 회원이 서비스를
								이용함에 있어 홈페이지의 게시판에 게재한 부호ㆍ문자ㆍ음성ㆍ음향ㆍ화상ㆍ동영상 등의 정보 형태의 글, 사진, 동영상 및
								각종 파일과 링크 등을 의미합니다.<br> 이 약관에 사용하는 용어의 정의는 각 항에서 정의하는 것을
								제외하고는 관계법령 및 일반적인 상관관계에 의합니다.<br> <br>
								<br> 제 3 조 서비스의 제공<br> 1. 회사는 투자형 펀딩 서비스 (FUNDFUND
								투자), 리워드형 펀딩 서비스 (FUNDFUND 리워드)와 MOAH 모바일 어플리케이션 서비스를 제공하고 있으며,
								위의 모든서비스의 회원을 통합하여 운영 및 관리하고 있습니다 이에 MOAH 모바일 어플리케이션 서비스에 가입하여
								회원이 되는 경우, 회사의 그 외 다른 서비스 또한 이용 가능합니다. <br> 본 약관에 따라 회원이 된
								자는 다음 각 호의 서비스를 이용할 수 있습니다.<br> 투자형 펀딩 서비스 (FUNDFUND 투자)<br>
								리워드형 펀딩 서비스 (FUNDFUND 리워드)<br> MOAH 모바일 어플리케이션 서비스<br>
								위 각 호 서비스 제공을 위해 필요하거나 이에 부수되는 서비스 회원은 제2항 각 호 서비스와 관련된 개별 서비스를
								이용하기 위하여 개별 약관에 따른 추가적인 약정을 회사와 체결하여야 합니다. 이 경우 각 개별 서비스의 구체적인
								내용은 각 서비스별 개별약관에서 정한 바에 따릅니다. 서비스는 연중무휴, 1일 24시간 제공함을 원칙으로 합니다.
								다만, 회사는 서비스를 일정범위로 분할하여 각 범위 별로 이용가능시간을 별도로 지정할 수 있으며 이러한 경우에는 그
								내용을 사전에 공지합니다. 회사는 컴퓨터 등 정보통신설비의 보수점검, 교체 및 고장, 통신두절 또는 운영상 상당한
								이유가 있는 경우 서비스의 제공을 일시적으로 중단할 수 있으며, 이 경우 회사는 회원에게 통지합니다. 다만, 회사가
								사전에 통지할 수 없는 부득이한 사유가 있는 경우 사후에 통지할 수 있습니다. 회사는 서비스의 제공에 필요한 경우
								정기점검을 실시할 수 있으며, 정기점검시간은 서비스제공화면에 공지한 바에 따릅니다. <br> <br>

								제 4 조 서비스의 변경<br> 회사는 상당한 이유가 있는 경우에 운영상, 기술상의 필요에 따라 제공하고
								있는 전부 또는 일부 서비스를 변경할 수 있습니다.<br> 서비스의 내용, 이용방법, 이용시간에 대하여
								변경이 있는 경우에는 변경사유, 변경될 서비스의 내용 및 제공일자 등이 그 변경 전에 해당 서비스 초기화면에
								게시됩니다.<br> 회사는 무료로 제공되는 서비스의 일부 또는 전부를 회사의 정책 및 운영의 필요상 수정,
								중단, 변경할 수 있으며, 이에 대하여 관계법령에 특별한 규정이 없는 한 회원에게 별도의 보상을 하지 않습니다. <br>
								<br> 제 5 조 이용계약의 체결<br> 회사가 본 약관에 따라 제공하는 서비스를 이용하기
								위하여 회원은 회사와 서비스이용계약(이하 “이용계약”)을 체결하여 회원가입에 따른 회원의 자격을 부여 받아야
								합니다.<br> 서비스를 이용하고자 하는 자(이하 "이용신청자")가 본 약관의 내용에 대하여 동의를 한
								다음 회사가 제공하는 양식에 따라 정보 입력을 하고 회원가입신청을 하면 서비스에 대한 이용신청(이하 “이용신청”)이
								있는 것으로 보며, 이용신청에 대하여 회사가 승낙함으로써 이용계약이 체결됩니다. 제2항의 회원가입신청 절차의 방법과
								내용은 회원이 개인(자연인)인 경우와 법인, 조합인 등 경우에 따라 다를 수 있습니다. 회사는 관계 법령에 따라
								이용신청자가 제1항에 따라 입력한 정보에 대한 사실 확인을 위하여 필요한 경우 이용신청자에게 증빙 자료의 제출을
								요청할 수 있으며, 이용신청자는 이에 따라 증빙자료를 제출하여야 합니다. 회사는 다음 각 호에 해당하는 이용신청에
								대하여는 승낙을 하지 않을 수 있습니다.<br> 이용신청자가 이전에 본 약관에 의하여 회원자격을 상실한
								적이 있는 경우(회사의 회원 재가입 승낙을 얻은 경우 제외)<br> 이용신청자가 본 약관에 의하여 이전에
								회사로부터 서비스 이용제한 조치를 받은 상태에서 이용계약을 해지하고 다시 이용신청을 한 경우<br>
								제2항의 이용신청 시 실명이 아니거나 타인의 명의를 이용하여 이용신청을 한 경우<br> 제2항의 이용신청
								시 필요한 정보를 입력하지 않거나 허위의 정보를 기재한 경우<br> 제4항에 따라 요청 받은 사실확인을
								위한 증빙자료를 제출하지 않은 경우<br> 14세 미만 아동이 법정대리인의 동의를 얻지 아니한 경우<br>
								사회의 안녕과 질서, 미풍양속을 저해할 우려가 있는 경우<br> 타인의 서비스 이용을 방해하거나 그 정보를
								도용하는 등 전자상거래 질서를 위협할 우려가 있는 경우<br> 위법 또는 부당한 목적으로 이용신청을 한
								경우<br> 본 약관을 위반하며 신청하는 경우<br> 회사는 다음 각 호의 경우에 승낙을 유보할
								수 있습니다. 제공하는 서비스 관련 설비의 용량이 부족한 등 여유가 없는 경우<br> 기타 서비스 제공을
								위한 재정적, 기술적 문제가 있다고 판단되는 경우<br> 회사는 본 약관 및 개별약관에서 정한 바에 따라
								회원 별 서비스의 이용시간, 이용횟수, 메뉴 등을 세분하여 달리 적용할 수 있습니다. <br>
								<br> 제 6 조 서비스 이용료<br> 회사는 제 3 조에 따른 서비스를 이용하는 회원에 대하여
								서비스 별 개별약관에서 정하는 수수료를 징수할 수 있으며, 서비스 이용을 위한 접속통신망의 이용료는 회원이 직접
								납부하여야 합니다. 회원이 타 유료서비스에 접속하여 서비스를 이용하는 경우에 부과되는 일체의 요금은 회원이 해당
								서비스 업체에 지불하여야 합니다. <br>
								<br> 제 7 조 회원의 이용계약 해지 등<br> 회원은 서비스 중단을 원할 경우 회사가
								제공하는 양식에 따라 회원탈퇴신청을 하면 이용계약 해지의 의사표시를 한 것으로 보며, 회사에 해지의 의사표시가
								도달한 때에 이용계약의 해지 효력이 발생합니다. 해지 효력이 발생한 때로부터 회원은 회원의 자격을 상실하며, 회사가
								제공하는 모든 서비스를 이용할 수 없게 됩니다.<br> 제1항에도 불구하고 회원이 서비스 별 개별 약관에
								따라 회사의 개별 서비스를 이용하고 있는 경우에는 회원탈퇴신청이 제한될 수 있습니다.<br> 제2항에도
								불구하고 이용계약의 해지 효력이 발생할 당시 당해 회원이 회사가 제공하는 서비스를 통해 진행 중인 거래 또는 절차가
								있다면 당해 서비스에 관한 개별약관 또는 회사의 안내에 따라 정산 절차를 거쳐야 합니다. 회원이 제1항과 제2항에
								따라 이용계약을 해지하여 회원자격을 상실하게 될 경우, 당해 회원은 본 약관에 따라 다시 회원가입을 신청하는 데
								있어 제한을 받을 수 있습니다.<br> 회원이 제1항과 제2항에 따라 이용계약을 해지할 경우, 관계법령 및
								개인정보취급방침에 따라 회사가 회원정보를 보유하는 경우를 제외하고는 회원의 모든 데이터는 소멸됩니다. 다만, 이
								경우에도 타인에 의해 담기, 스크랩 등이 되어 재 게시되거나, 공용게시판에 등록된 게시물 등은 삭제되지 않을 수
								있습니다. <br>
								<br> 제 8 조 회사의 이용계약의 제한, 해지 등<br> 회사는 회원에게 다음 각 호의 해지
								사유가 있는 경우 5일 이상으로 정한 기간 내에 그 해지 사유의 시정을 요구하고, 이와 같이 정한 기간 내에 회원이
								이를 시정하지 아니하면 회사는 이용계약을 해지할 수 있습니다. 제5조 제5항 각 호 에서 정한 승낙거부사유가 있음이
								밝혀진 경우<br> 회원이 공공질서 및 미풍양속에 위배되는 거래행위를 하거나 시도한 경우<br>
								회원이 본 약관의 의무를 위반하거나 서비스의 정상적인 운영을 방해한 경우<br> 주민등록법을 위반한
								명의도용 및 결제도용, 저작권법 및 컴퓨터프로그램보호법을 위반한 불법프로그램의 제공 및 운영방해, 정보통신망
								이용촉진 및 정보보호 등에 관한 법률(이하 "정보통신망법")을 위반한 불법통신 및 해킹, 악성프로그램의 배포,
								접속권한 초과행위 등 관계법령을 위반한 경우 제3자의 결제수단이나 개인정보를 도용한 경우<br> 회사와
								기타 제3자의 저작권 등 지적재산권에 대한 침해행위를 한 경우<br> 회사 및 기타 제3자의 권리나 명예,
								신용, 기타 정당한 이익을 침해하는 행위를 한 경우<br> 외설 또는 폭력적인 메시지, 화상, 음성, 기타
								공서양속 에 반하는 정보를 홈페이지에공개 또는 게시하는 행위<br> 회사의 동의 없이 영리를 목적으로
								서비스를 이용한 경우<br> 기타 위법하거나 부당한 목적으로 서비스를 이용한 경우<br> 제17조
								제5항 단서의 경우에 해당하는 경우<br> 본 약관에 위반하는 행위를 한 경우<br> 제1항의
								경우에도 불구하고 회사는 제1항 각 호의 사유가 시정이 가능하다고 인정되는 경우 회원에게 그 사유를 통지를 하고
								일정한 기간 동안 회원에게 경고, 일시 정지, 영구이용정지 등으로 서비스의 이용을 단계적으로 제한할 수 있습니다.
								다만, 개별 서비스의 이용제한에 관한 조건 및 세부내용은 각 서비스의 개별약관 또는 회사가 미리 고지한 정책에서
								정하는 바에 의합니다. 제1항에 따라 이용계약이 해지된 경우 해지되기 전까지 회원이 서비스 이용을 통해 획득한 혜택
								등도 모두 소멸되며, 회사는 이에 대해 별도로 보상하지 않습니다. 본 조에 따라 서비스 이용을 제한하거나 이용계약을
								해지하는 경우에는 회사는 제12조에 따라 통지합니다. 회원이 제1항과 제2항에 따라 이용계약을 해지하여 회원자격을
								상실하게 될 경우, 당해 회원은 본 약관에 따라 다시 회원가입을 신청하는 데 있어 제한을 받을 수 있습니다. 회원은
								제1항과 제2항에 따른 이용해지 또는 이용제한 등에 대하여 회사가 제공하는 양식과 절차에 따라 이의신청을 할 수
								있습니다. 이 경우 이의신청이 정당하다고 회사가 인정하는 경우 회사는 서비스의 이용을 재개합니다. <br>
								<br> 제 9 조 회원정보의 수집과 보호 <br> 회사는 서비스 제공을 위하여 이용계약의 체결
								시 필요한 정보(이하 “회원정보”)를 수집할 수 있으며, 그 외에도 수집목적 또는 이용목적을 밝혀 회원으로부터
								정보를 수집할 수 있습니다. 이 경우 회사는 회원으로부터 정보수집에 대한 동의를 받으며, 회원은 정보제공에 동의를
								한 이후에도 회사가 제공하는 양식에 따라 그 동의를 철회할 수 있습니다. 회원의 개인정보의 수집, 보호 및 사용에
								대해서는 관계법령 및 회사의 개인정보취급방침이 적용됩니다. 다만, 회사의 홈페이지 이외의 링크된 사이트에서는 회사의
								개인정보취급방침이 적용되지 않습니다. 관계 법령에 따라 회원정보의 이용과 제3자에 대한 정보 제공을 허용하고 있는
								경우를 제외하고 회사는 제1항에 따라 회원으로부터 동의를 받은 목적 외에 회원의 동의 없이 다른 제3자에게
								회원정보를 제공하지 않습니다. 회사는 정보통신망법 등 관계 법령이 정하는 바에 따라 회원의 개인정보를 보호하기 위해
								노력합니다.<br> 회사의 개인정보취급 관리책임자 및 연락처는 아래와 같습니다.<br> <br>
								<br> E-mail: info@yFUNDFUND.com <br> 전화: 010 - 1111 -
								2222 <br> Fax: 02)6666-2565 <br>
								<br> 제 10 조 회원의 회원정보 관리에 대한 의무<br> 회원의 아이디와 비밀번호를 포함한
								회원정보에 관한 관리책임은 회원에게 있습니다.<br> 회사는 회원의 아이디가 개인정보 유출의 우려가
								있거나, 반사회적 또는 미풍양속에 어긋나거나 회사 및 회사의 운영자로 오인할 우려가 있는 경우, 해당 아이디의
								이용을 제한할 수 있습니다. 회원은 주민등록번호, 동일숫자, 연속숫자 등의 비밀번호를 사용하지 말아야 하며 타인이
								쉽게 추측할 수 있는 비밀번호 사용을 자제하여 관리에 유의하여야 합니다. 회원은 아이디, 비밀번호 등을 포함한
								회원정보를 타인에게 누설하여서는 아니 되며, 만약 누설하였을 경우 지체 없이 회사에게 이러한 사실을 [서면 또는
								전자우편]의 방법으로 통지하여 알려야 합니다. 회원은 회원정보를 제3자가 양도, 대여, 이용하도록 하여서는 아니
								됩니다.<br> 회원은 제3자에 의해 회원정보가 도용되거나 사용되고 있음을 인지한 경우에는 이를 즉시
								회사에 제4항과 같은 방법으로 통지하고 회사의 안내에 따라야 합니다. 제4항과 제6항의 경우에 해당 회원이 회사에
								그 사실을 통지하지 않거나, 통지한 경우에도 회사의 안내에 따르지 않아 발생한 불이익에 대하여 회사는 책임을 지지
								않습니다. <br>
								<br> 제 11 조 회원정보의 변경<br> 회원은 서비스 내 “회원정보” 화면을 통하여 회원의
								정보를 열람하고 수정할 수 있습니다. 다만, 서비스의 제공 및 관리를 위해 필요한 실명, 주민등록번호, 아이디 등은
								수정이 불가능할 수 있습니다. 회원은 회원가입신청 시 입력한 사항이 변경되었을 경우 온라인으로 수정을 하거나
								전자우편 기타 방법으로 회사에 대하여 그 변경사항을 알려야 하며, 이와 같이 변경사항을 회사에 알리지 않아 발생한
								불이익에 대하여 회사는 책임지지 않습니다. <br>
								<br> 제 12 조 회원에 대한 통지<br> 회사가 회원에 대한 통지를 하는 경우 본 약관에
								별도 규정이 없는 한 서비스 내 전자우편주소, 전자쪽지 등으로 할 수 있습니다.<br> 회사는 회원 전체에
								대한 통지의 경우 7일 이상 회사의 게시판에 게시함으로써 제1항의 통지에 갈음할 수 있습니다. <br>
								<br> 제 13 조 정보의 제공 및 광고의 게재<br> 회사는 회원이 서비스 이용 중 필요하다고
								인정되는 다양한 정보를 공지사항이나 전자우편 등의 방법으로 회원에게 제공할 수 있습니다. 다만, 회원은 관계법령에
								따른 거래 관련 정보 및 고객문의 등에 대한 답변 등을 제외하고는 언제든지 전자우편의 수신에 대하여 거절할 수
								있습니다. 제1항의 정보를 전화 및 모사전송기기에 의하여 전송하려고 하는 경우에는 회원의 사전 동의를 받아서
								전송합니다. 다만, 회원의 거래관련 정보 및 고객문의 등에 대하여 회사가 회신을 하는 경우에는 제외됩니다.<br>
								회사는 서비스화면, 홈페이지, 전자우편 등에 회사 또는 제휴업체의 광고를 게재할 수 있습니다. 다만, 회원은 광고가
								게재된 전자우편의 수신에 대하여 거절할 수 있습니다. <br>
								<br> 제 14 조 게시물의 관리 등<br> 회원이 홈페이지 내에 게시한 게시물의 저작권은 해당
								게시물의 저작자에게 귀속됩니다. 다만 회사와의 별도 계약이나 협의에 따라 게시물의 제작 행위 주체자에게 저작권이
								귀속 될 수 있습니다.<br> 회원이 홈페이지 내에 게시하는 게시물은 검색결과 내지 서비스 및 관련
								프로모션 등에 의해 노출될 수 있으며, 해당 노출을 위해 필요한 범위 내에서는 일부 수정, 복제, 편집되어 게시될
								수 있습니다. 이 경우 회사는 저작권법 규정을 준수하며, 회원은 회사의 고객센터 또는 서비스 내 관리기능을 통해
								해당 게시물에 대해 삭제, 검색결과 제외, 비공개 등의 조치를 회사가 정한 절차에 따라 요구할 수 있습니다. 회사는
								제2항 이외의 방법으로 회원의 게시물을 이용하고자 하는 경우에는 회원의 동의를 받습니다. 회원의 게시물이
								정보통신망법 및 저작권법 등 관계법령에 위반되는 내용을 포함하거나 권리침해가 인정될 만한 사유가 있거나 기타 회사
								정책 및 관련법에 위반되는 경우에 회사는 삭제, 비공개 등의 조치를 취할 수 있습니다. <br>
								<br> 제 15 조 권리의 귀속<br> 서비스에 대한 저작권 및 지적재산권은 회사에 귀속됩니다.
								다만, 회원의 게시물 및 제휴계약에 따라 제공된 저작물 등은 제외됩니다.<br> 회사는 서비스와 관련하여
								회원에게 본 약관에 따라 "아이디", “콘텐츠” 등을 포함한 서비스를 이용할 수 있는 이용권한만을 부여하며, 회원은
								이를 양도, 판매, 담보제공 등의 처분행위를 할 수 없습니다. <br>
								<br> 제 16 조 책임제한<br> 개별약관에서 개별 서비스에 관한 회사의 책임범위를 별도로
								정한 경우 그에 따릅니다.<br> 회사는 천재지변 또는 이에 준하는 불가항력, 정보통신설비상의 문제(보수,
								점검, 교체, 고장, 통신두절 등)으로 인하여 서비스를 원활하게 제공할 수 없는 경우에는 서비스 제공에 관한 책임이
								면제됩니다. 회사는 제3자 또는 회원의 고의 또는 과실로 인한 서비스 이용의 장애에 대하여는 책임을 지지 않습니다.
								회사는 회원이 홈페이지에 게재한 정보, 자료, 사실에 대하여 신뢰도, 정확성 등을 보증하지 않으며, 회사의 고의
								또는 과실이 없는 한 회원이 이를 신뢰함에 따라 입은 손해에 대하여 책임을 지지 않습니다. 회사는 회원 간 또는
								회원과 제3자 상호간에 서비스를 매개로 하여 개별적으로 거래 등을 한 경우에는 책임을 지지 않습니다. 회사는 무료로
								제공되는 서비스 이용과 관련하여 관계법령에 특별한 규정이 없는 한 책임을 지지 않습니다. 회사는 독자적으로 운영되는
								회사의 서비스 화면과 링크 등으로 연결된 사이트를 운영하는 법인(이하 “피연결회사”) 또는 홈페이지에 게재되어
								있거나 회사의 제휴업체와 회원과 사이에 이루어진 교신, 거래 및 이로 인해 발생한 손해, 손실 등에 대하여 책임을
								지지 않습니다. 회사는 피연결회사가 온라인 또는 오프라인을 통해 제공하는 정보나 서비스에 대하여는 일체의 책임을
								지지 않습니다. <br>
								<br> 제 17 조 약관의 게시와 개정<br> 회사는 본 약관의 내용을 회원이 쉽게 알 수
								있도록 서비스 초기 화면에 게시합니다.<br> 회사는 약관의 규제에 관한 법률, 정보통신망법 등 관계법령을
								위반하지 않는 범위에서 본 약관을 개정할 수 있습니다. 회사가 약관을 개정할 경우에는 적용일자를 명시하여 제1항의
								방법에 따라 그 개정약관을 [7]일 이상 공지합니다. 다만, 회원에게 불리한 내용으로 약관의 개정이 있는 경우에는
								공지 외에 일정기간 서비스 내 전자우편, 전자쪽지, 로그인시 동의창 등의 전자적 수단을 통해 따로 명확히 통지하도록
								합니다. 회사가 제3항에 따라 개정약관을 공지 또는 통지하면서 회원에게 [5]일 기간 내에 의사표시를 하지 않으면
								의사표시가 표명된 것으로 본다는 뜻을 명확하게 공지 또는 통지하였음에도 회원이 명시적으로 거부의 의사표시를 하지
								아니한 경우 회원이 개정약관에 동의한 것으로 봅니다. 회원이 개정약관의 적용에 동의하지 않는 경우 회사는 개정약관의
								내용을 적용하지 않으며, 이 경우 회원은 제7조에서 정한 바에 따라 이용계약을 해지할 수 있습니다. 다만, 기존
								약관을 적용할 수 없는 특별한 사정이 있는 경우에는 회사가 동의하지 않은 회원과의 이용계약을 해지할 수 있습니다.
								<br>
								<br> 제 18 조 약관의 효력 및 해석<br> 회사는 회사가 제공하는 개별 서비스에 대해서는
								별도의 이용약관 및 운영정책, 세부지침(이하 "개별약관 등")을 둘 수 있으며, 해당 내용이 본 약관과 상충할
								경우에는 "개별약관 등"이 우선하여 적용됩니다. 본 약관에서 정하지 아니한 사항이나 해석에 대해서는 "개별약관 등"
								및 관계법령 또는 상 관례에 따릅니다. <br>
								<br> 제 19 조 준거법 및 재판관할<br> 회사와 회원 간 제기된 소송은 대한민국법을
								준거법으로 합니다. 회사와 회원 간 발생한 분쟁에 관한 소송은 민사소송법에 따른 전속적 합의관할에 따라 대한민국
								서울중앙지방법원을 전속적 관할법원으로 합니다.<br>
							</div>
						</div>
					</div>
					<div class="enroll_agreement_form_row4">
						<div class="enroll_agreement_form_row4_row1">
							<div class="enroll_agreement_form_row4_row1_col1 fl">
								<p style="margin-top: 15px;">
									개인정보 수집 및 이용 동의 <span class="required">(필수)</span>
								</p>
							</div>
							<div class="enroll_agreement_form_row4_row1_col2 fl">
								<input type="checkbox" id="checkbox2"> <label
									for="checkbox2"></label>
							</div>
						</div>
						<div class="enroll_agreement_form_row4_row2">
							<div>
								본 개인정보 처리방침은 주식회사 뻔뻔해요(이하 “뻔뻔해요”라고 합니다)에서 제공하는 모든 서비스 이용에 적용됩니다.
								<br> 뻔뻔해요는 귀하의 개인정보보호를 매우 중요시하며, 개인정보보호법, 정보통신망이용 촉진 및
								정보보호등에 관한 법률 또는 관련법령, 규정을 준수하고 있습니다.<br> '개인정보 처리방침'이란 이용자의
								소중한 개인정보를 보호함으로써 이용자가 안심하고 서비스를 이용할 수 있도록 회사가 준수해야 할 지침을 의미합니다.'<br>
								<br>
								<br> <b>1. 개인정보 수집 이용 보유</b> 뻔뻔해요는 다음과 같이 개인정보를 수집, 이용하고
								있습니다. 개인정보가 필요한 시점에 최소한의 정보만을 수집하며, 고지한 범위 내에서만 사용합니다. 또한 사전 동의
								없이 고지한 범위를 초과하여 이용하거나 외부에 공개하지 않습니다. <br> 1-1. 개인정보 수집 방법
								필수정보: 회원가입 및 서비스 이용 시 이용자의 개인정보 수집 동의 후 직접 입력 <br> 추가정보:
								프로젝트 진행 및 참여, 설문조사 참여 시 이용자의 개인정보 수집 동의 후 직접 입력 <br> 선택정보:
								마케팅 및 분석, 프로모션 진행 시 이용자의 개인정보 수집 동의 후 직접 입력 <br> 1-2. 개인정보
								이용 파기 개인정보는 수집 및 이용 목적이 달성되거나 회원 탈퇴 시 지체없이 파기하고, 이용자에게 개인정보관기간에
								대해 별도 동의를 얻은 경우 해당 동의 내용에 따릅니다. <br> 1-3. 법령에 의하여 수집·이용항목되는
								회원 정보 <br>
								<br> <b>2. 개인정보 제3자 제공</b> 뻔뻔해요는 이용자의 동의가 있거나 관련 법령의 규정에 의한
								경우, 또는 뻔뻔해요가 이용자에게 제공하는 서비스 및 상품의 공급을 위하여 필요한 경우를 제외하고는 본 개인정보
								처리방침에서 고지한 범위를 넘어 이용자의 개인정보를 이용하거나 타인 또는 타기업·기관에 제공하지 않습니다. <br>
								이용자의 개인정보를 제 3자에게 제공하거나 공유하는 경우에는 사전에 이용자에게 제공받거나 공유 받는 자가 누구이며
								주된 사업이 무엇인지, 제공 또는 공유되는 개인정보항목이 무엇인지, 개인정보를 제공하거나 공유하는 목적이 무엇인지
								등에 대해 개인정보처리방침 및 홈페이지 등을 통해 고지한 후 동의를 구합니다. <br> 이용자는 뻔뻔해요가
								사용자의 개인정보를 이용하거나 제3자에게 제공·공유한 내역을 요구할 권리가 있으며, 필요 시에 뻔뻔해요의
								개인정보관리책임자에게 전화, 팩스, 이메일 등을 통하여 자료를 요구할 수 있습니다. <br> 다만, 다음의
								경우에는 관련 법령의 규정에 의하여 이용자의 동의없이 개인정보를 제공할 수도 있으니 이점 양지해 주시기 바랍니다.
								<br>
								<br> 2-1. 통계작성 · 학술연구 또는 시장조사를 위하여 필요한 경우로써 특정 개인을 알아볼 수 없는
								형태로 가공하여 제공하는 경우 <br> 2-2. 금융실명거래 및 비밀보장에 관한 법률, 신용정보의 이용 및
								보호에 관한 법률, 전기통신사업법, 지방세법, 소비자보호법, 한국은행법, 형사소송법 등 법률에 특별한 규정이 있는
								경우 <br> 2-3. 정부기관(준정부기관 포함)이나 법원의 명령에 의하여 개인정보를 제공하는 경우 <br>
								2-4. 프로젝트 진행 및 리워드 제공을 위해 필요한 행위를 하는 데에 있어 프로젝트 진행자, 참여자에게 개인정보를
								제공하는 경우 <br>
								<br> <b>3. 수집한 개인정보 취급 위탁</b><br> 뻔뻔해요는 서비스 향상 및 원활한
								계약사항의 이행 등을 위하여 개인정보 처리업무를 외부에 일부 위탁하고 있습니다. <br> 뻔뻔해요는
								이용자의 개인정보를 외부에 위탁하는 경우에 사전에 이용자에게 위탁 받는 자, 목적, 위탁되는 개인정보항목 등에 대해
								개인정보 처리방침에 고지한 후 이에 대한 동의를 구합니다. <br>
								<br> <b>4. 장기 미이용 개인정보 분리 보관</b><br> 뻔뻔해요는
								관련법령(정보통신망이용촉진및정보보호등에관한법률 제29조 및 동법 시행령 제16조)에 의거하여 장기 미이용 회원을
								휴면회원으로 계정 전환하고, 개인정보를 암호화하여 분리 보관합니다. 뻔뻔해요는, 서비스를 1년 이상 이용하지 않아
								휴면 상태로 전환된 회원을 휴면회원으로 정의하고 있습니다. <br> 4-1. 휴면 상태 전환 안내 시기 및
								방법<br> 휴면 상태 전환 30일 전까지 휴면 예정 회원에게 휴면 전환 예정일, 별도 분리 보관되는 사실
								및 개인정보 항목이 이메일을 통해 사전 안내됩니다. <br> 해당 통지 수단에 대한 정보가 부재 또는
								오류인 경우에는 홈페이지 공지사항 게시로 대체됩니다. 사전에 안내·예고한 휴면 상태 전환 일자가 도래할 시엔 해당
								사실이 메일을 통해 휴면 회원에게 안내됩니다.<br> 단, 휴면 상태 전환 예정 회원이 사전 고지된 휴면
								전환 예정일 이전에 뻔뻔해요에 로그인 하시는 경우 휴면 상태로 전환되지 않고 기존과 동일하게 서비스를 이용하실 수
								있습니다.<br> 4-2. 휴면 회원 개인정보 보관 기간<br> 휴면 회원의 개인정보는 4년 간
								별도 분리 보관 후, 삭제됩니다. <br> 4-3. 휴면 회원의 계정 활성화 방법<br> 계정이
								휴면 상태로 이미 전환된 회원은 기존에 뻔뻔해요 사이트 상에서 사용했던 ID와 비밀번호로 로그인하여 서비스를
								재이용함으로써, 일반회원으로 전환될 수 있습니다. <br> 4-4. 휴면 상태 전환의 예외(권익보호의
								목적)<br> 가. 뻔뻔해요 사이트 내 본인의 투자예치금계좌(가상계좌)에 예치금이 남아있는 회원 <br>
								나. 뻔뻔해요 리워드 프로젝트에 참여하여 서비스를 제공받고 있는 회원 <br> 다. 뻔뻔해요 투자
								프로젝트에 참여하여 서비스를 제공받고 있는 회원 <br>
								<br> <b>5. 개인정보 파기</b> 5-1. 파기절차 <br> 수집∙이용목적이 달성된
								개인정보의 경우 별도의 DB에 옮겨져 내부 규정 및 관련 법령을 준수하여 안전하게 보관되며, 정해진 기간이
								종료되었을 때 지체 없이 파기됩니다. 이때 별도의 DB로 옮겨진 개인정보는 이용자가 동의한 목적 또는 법률에 정해진
								경우 외 다른 목적으로 이용되지 않습니다. <br> 5-2. 파기방법<br> 전자적 파일 형태의
								정보 : 기록을 재생할 수 없는 기술적 방법을 사용하여 파기<br> 종이에 출력된 개인정보 : 분쇄기로
								분쇄하거나 소각을 통하여 파기<br>
								<br> <b>6. 이용자의 권리</b><br> 뻔뻔해요 이용자 본인 및 법정대리인은 언제든지
								수집 정보에 대해 수정, 동의, 삭제, 열람 등을 요청할 수 있습니다. 다만 동의 철회, 삭제 시 서비스의 일부
								또는 전부 이용이 제한될 수 있습니다. <br> 6-1. 개인정보 열람<br> 뻔뻔해요에서
								처리하고 있는 이용자 본인의 개인정보에 대한 열람을 요구할 수 있습니다. 회원정보 및 프로젝트에 대한 정보는 서비스
								내 ‘마이페이지’ 메뉴에서 직접 확인하실 수 있으며, 서비스 이용 시 시스템을 통하여 자동으로 생성된 개인정보 등
								서비스 내에서 직접 확인하지 못하는 개인정보를 열람하고자 하는 경우에는 서면, 전화 또는 이메일로 연락하시면 특별한
								사유가 없는 한 지체없이 조치합니다.<br> 다만, 열람이 늦어지거나 불가능한 사유는 신속하게
								알려드리겠습니다.<br> 개인정보 제공 시 서비스 또는 보안상 중대한 문제가 발생할 가능성이 있는 경우<br>
								다른 사람의 생명∙신체를 해할 우려가 있거나 다른 사람의 재산과 그 밖의 이익을 부당하게 침해할 우려가 있는 경우<br>
								6-2. 개인정보 수정<br> 뻔뻔해요 서비스 내 ‘마이페이지’를 통한 직접 수정 또는 뻔뻔해요에 문의를
								통해 수정을 요청할 수 있고, 이 과정에서 수정을 위한 본인확인 등의 절차가 진행될 수 있습니다.<br>

								6-3. 개인정보 제공 동의 철회 및 삭제<br> 뻔뻔해요 서비스 내에서 이용자 본인이 직접
								회원탈퇴(마이페이지-설정-회원탈퇴)를 하거나 뻔뻔해요에 문의를 통해 수집된 정보에 대한 제공 동의를 철회하거나
								삭제를 요청할 수 있습니다. 다만, 이런 요청 시 서비스의 일부 또는 전체 이용이 제한될 수 있으며 다른 법령에
								따라 수집하는 정보의 경우에는 동의 철회, 삭제가 어려울 수 있습니다.<br> <b>7. 이용자의
									의무</b><br> 이용자 본인은 자신의 개인정보를 보호할 의무가 있습니다. 뻔뻔해요의 귀책사유 없이
								ID(이메일), 비밀번호, 접근매체 등의 양도∙대여∙분실이나 로그인 상태에서 이석 등 본인의 부주의, 또는
								관계법령에 의한 보안조치로 차단할 수 없는 방법이나 기술을 사용한 해킹 등 뻔뻔해요가 통제할 수 없는 인터넷상의
								문제 등으로 개인정보가 유출되어 발생한 문제에 대해서 뻔뻔해요는 책임을 지지 않습니다.<br>
								<br> <b>8. 쿠키의 운용 및 거부</b><br> 8-1. 쿠키(Cookie)의 정의<br>
								쿠키(Cookie)는 웹사이트를 운영하는데 이용되는 서버가 이용자의 컴퓨터로 전송하는 아주 작은 텍스트 파일로서
								이용자의 컴퓨터 하드디스크에 저장되고 있습니다. 따라서 이용자 스스로 쿠키의 설치 및 수집에 대해 자율적으로 선택할
								수 있으므로 수집을 거부할 수 있습니다. 다만, 쿠키의 저장을 거부할 경우 로그인이 필요한 일부 서비스 이용에
								제한이 생길 수 있습니다. <br> 8-2. 쿠키 설정 거부 방법<br> 각 브라우저의 버전별로
								설정 방법이 달라질 수 있으며 자세한 내용은 해당 브라우저의 도움말을 참고해주시기 바랍니다.<br>
								<br> <b>9. 링크 사이트에 대한 책임</b><br> 뻔뻔해요는 이용자에게 다른 회사의
								웹사이트 또는 자료에 대한 링크를 제공할 수 있습니다. 이 경우 뻔뻔해요는 외부 사이트 및 자료에 대한 아무런
								통제권이 없으므로 그로부터 제공받는 서비스나 자료의 유용성에 대해 책임질 수 없으며 보증할 수 없습니다. 뻔뻔해요
								서비스 내 링크를 클릭하여 타 사이트의 페이지로 옮겨갈 경우, 해당 사이트의 개인정보 처리방침은 뻔뻔해요와
								무관하므로 새로 방문한 사이트의 정책을 검토해 보시기 바랍니다.<br>
								<br> <b>10. 개인정보 처리를 위한 기술적, 관리적 대책</b><br> 10-1. 기술적
								대책<br> 시스템에 대한 접근 권한을 업무 수행에 필요한 최소 범위로 차등 부여하고 있습니다.<br>
								정보통신망을 통한 불법적인 접근 및 침해사고 방지를 위해 침입차단 및 침입탐지시스템을 운영하고 있으며 24시간
								365일 보안관제 하고 있습니다.<br> 시스템의 접속 기록의 보관 및 위/변조 방지를 위해 로그 관리
								시스템 운영 및 정기 백업을 실시하고 있습니다.<br> 개인정보처리시스템 또는 업무용 컴퓨터에 악성
								프로그램을 방지/치료할 수 있는 백신소프트웨어 등의 보안프로그램을 설치/운영하고 있습니다.<br>
								10-2. 관리적 대책<br> 개인정보의 안전한 처리를 위한 내부관리계획을 수립하고 있습니다.<br>
								정보를 직접 취급하는 임직원 및 수탁자 등에 대한 교육계획 수립 및 실시하고 있습니다.<br>
								내부관리계획에 따른 정기적인 자체 점검을 실시하고 있습니다.<br> 정보유출 등을 방지하기 위해 외부인의
								출입을 통제하는 출입통제 시스템 및 장비를 상시 운영하고 있습니다.<br>
								<br> <b>11. 개인정보 관리 책임자</b><br> 뻔뻔해요는 개인정보 처리에 관한 업무를
								총괄해서 책임지고, 개인정보 처리와 관련한 이용자의 불만 처리 및 피해 구제등을 위하여 아래와 같이 개인정보 관리
								책임자를 지정하고 있습니다. 또한 뻔뻔해요를 이용하시면서 발생한 모든 개인정보 보호 관련 문의, 불만 처리, 피해
								구제 등에 관한 사항을 개인정보 보호책임자 및 전화, 이메일로 문의하실 수 있으며, 문의에 대해 지체 없이 답변 및
								처리할 것입니다.<br> 11-1. 개인정보 침해에 대산 신고 또는 상담<br>
								<br> <b>12. 고지의 의무</b><br> 본 개인정보 처리방침은 시행일로부터 적용되며,
								법령 및 방침에 따른 변경내용의 추가, 삭제 및 정정이 있는 경우 변경사항의 시행일 7일 전부터 공지사항을 통하여
								고지합니다. <br> 그러나 개인정보의 수집 및 활용, 제3자 제공 등과 같이 이용자의 권리에 중요한 변경
								사유가 발생하는 경우 최소 30일 전에 공지합니다. <br> 또한 관련 법령이나 회사정책의 변경으로
								불가피하게 처리방침을 변경해야하는 경우, 웹사이트 공지사항을 통해 빠르게 알려드리고 있으니 참고해주시기 바랍니다.
							</div>
							<br>
						</div>
					</div>
					<div class="enroll_agreement_form_row5">
						<div class="enroll_agreement_form_row5_row1">
							<div class="enroll_agreement_form_row5_row1_col1 fl">
								<p style="margin-top: 15px;">마케팅 동의 (선택)</p>
							</div>
							<div class="enroll_agreement_form_row5_row1_col2 fl">
								<input type="checkbox" id="checkbox3"> <label
									for="checkbox3"></label>
							</div>
						</div>
						<div class="enroll_agreement_form_row5_row2">
							<div>
								펀딩 마케팅 동의 회원님의 개인 정보를 수집하여 펀딩과 관련된 다양한 서비스를 제공하고자 합니다.<br>
								이에 대한 동의를 받아 회원님의 정보를 마케팅 목적으로 활용할 것입니다. 아래는 이에 대한 내용입니다.<br>
								<br> 개인 정보 수집 및 이용 목적: 회원님의 개인 정보를 수집하는 목적은 다음과 같습니다.<br>
								<br> 회원 가입 및 관리<br> 펀딩 진행과 관련된 정보 제공<br> 이벤트 및
								프로모션 정보 제공<br> 펀딩 관련 마케팅 및 광고 전송<br>
								<br> 수집하는 개인 정보의 항목: 수집하는 개인 정보의 항목은 다음과 같습니다.<br>
								<br> 성명<br> 연락처 (이메일 주소, 전화번호 등)<br> 주소<br>
								기타 필요한 정보<br> 개인 정보 보유 및 이용 기간: 회원님의 개인 정보는 회원 탈퇴 시까지 보유되며,
								펀딩과 관련된 서비스 제공을 위해 사용됩니다.<br> 개인 정보 제공 동의: 본 동의를 통해 회원님은 개인
								정보 수집 및 마케팅 목적으로 활용에 동의하는 것으로 간주됩니다.<br> 본 동의는 회원님의 개인 정보
								보호를 위해 안전하게 보관되며, 언제든지 철회할 수 있습니다.<br> 위의 내용을 숙지하시고 동의하시는
								경우에만 펀딩에 참여하실 수 있습니다. 동의하시지 않는 경우에도 펀딩에 참여할 수 있으나, 일부 서비스 제공에
								제한이 있을 수 있습니다.<br>
							</div>
							<br>
						</div>
					</div>
					<div class="enroll_agreement_form_row6">
						<div class="enroll_agreement_form_row6_row1">
							<%-- 여백 --%>
						</div>
						<div class="enroll_agreement_form_row6_row2">
							<button type="button"
								class="enroll_agreement_form_row6_row2_btn1 brlg shadow fl"
								style="margin-right: 16px;" onclick="history.back();">이전</button>
							<button type="submit"
								class="enroll_agreement_form_row6_row2_btn2 brlg shadow next-button fl">다음</button>
						</div>
					</div>
				</div>

			</form>
		</div>

		<div class="blank_bottom">
			<%-- 여백 --%>
		</div>
	</div>
    
	<%@ include file="../common/footer.jsp" %>
	
	<script src="resources/js/member/memberEnrollAgreementForm.js"></script>
</body>
</html>