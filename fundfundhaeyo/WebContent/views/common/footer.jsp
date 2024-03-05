<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뻔뻔해요</title>
<link rel="stylesheet" href="resources/css/footer.css">
</head>
<body>
	<div class="footer_outer" style="border-bottom: 1px solid lightgray;">
        <%-- 전체 레이아웃 --%>
        <div class="ffh_wrap">
			<div class="ffh_footer">
		        <div class="ffh_footer_top fl" style="margin-top: 10px">
		            <div class="ffh_footer_top_left fl font_outer">
		                <div class="ffh_footer_top_left1 fl">
		                    <a onclick="moveToCompanyIntroduction();">뻔뻔해요</a>
		                </div>
		                <div class="ffh_footer_top_left2 fl">
		                    <%-- 이용약관 모달 --%>
		                    <button id="btn-open-modal1" class="btn-open-modal">이용약관</button>
		                </div>
		                <div class="ffh_footer_top_left3 fl">
		                    <%-- 개인정보처리방침 모달 --%>
		                    <button id="btn-open-modal2" class="btn-open-modal">개인정보처리방침</button>
		                </div>
		                <div class="ffh_footer_top_left4 fl">
		                    <%-- 프로젝트 등록 심사 기준 모달 --%>
		                    <button id="btn-open-modal3" class="btn-open-modal">프로젝트 등록 심사 기준</button>
		                </div>
		                <div class="ffh_footer_top_left5 fl">
		                	<a onclick="moveToHelpCenter();">고객지원</a>
		                </div>
		            </div>
		            <div class="ffh_footer_top_middle fl">
		            <%-- 여백(추후 공유 링크) --%>
		            </div>
		            <div class="ffh_footer_top_right fl">
		            <%-- 여백 --%>
		            </div>
		        </div>
		        <div class="ffh_footer_middle fl">
		        	<div class="ffh_footer_middle_row1 font_sejong_outer">
		        		<div class="ffh_footer_middle_row1_col1 fl">
			            	<br><br><br><br><br><br><br><br>
						</div>
						<div class="ffh_footer_middle_row1_col2 fl">
							<br><br>TBU<br><br><br><br><br><br>
						</div>
		        	</div>
		        	<div class="ffh_footer_middle_row2 font_outer"><p>뻔뻔해요는 프로젝트의 당사자가 아니며, 직접적인 통신판매를 진행하지 않습니다. 프로젝트의 완수 및 선물제공의 책임은 해당 프로젝트의 창작자에게 있으며, 프로젝트와 관련하여 후원자와 발생하는 법적 분쟁에 대한 책임은 해당 창작자가 부담합니다.</p></div>
		        	<div class="ffh_footer_middle_row3 font_outer"><p style="text-align: center;">Copyright © 2024 FundFundhaeyo Institute All Right Reserved</p></div>
		        </div>
		    </div>
	    </div>
    </div>
    
    <script>
    	<%-- 뻔뻔해요 소개 페이지 이동 --%>
      	function moveToCompanyIntroduction(){
      		location.href = "<%= request.getContextPath() %>/introduction.cp";
      	}
      	
      	<%-- 고객센터 페이지 이동 --%>
      	function moveToHelpCenter(){
      		location.href = "<%= request.getContextPath() %>/announcement.hp?cpage=1";
      	}
    </script>
    <%-- ============================ 푸터바 모달 시작 ============================ --%>

    <%-- 푸터바 모달1 : 이용약관 --%>
    <div id="modal1" class="modal">
        <div class="modal_body">
            <h2 class="modal_title">이용약관</h2>
            <span class="close-btn" onclick="closeModal('#modal1')">×</span>
            <p align="left">
                시행일 : 2024.03.15 <br>
                <ol align="left">
                    <li>
                        <h6>총칙</h6>
                    </li>
                    <li>
                        <h6>서비스의 이용</h6>
                    </li>
                    <li>
                        <h6>회원정보의 보호 및 관리</h6>
                    </li>
                    <li>
                        <h6>기타</h6>
                    </li>
                </ol>
                
                <hr>
                <h3 align="left">1. 총칙</h3> <br><br>
                <h5 align="left">제 1조 목적</h5>
                <p align="left">
                이 총칙은 회사의 조직, 운영, 인사 관리, 업무 처리 등에 관한 기본 원칙을 정함으로써 <br> 회사의 지속적인 발전과 직원들의 복지 증진을 목적으로 합니다.
                </p>
                <h5 align="left">제 2조 용어 정의</h5>
                <p align="left">
                본 약관에서 사용하는 용어의 정의는 다음과 같습니다. <br><br>
                (1) 회사 : 뻔뻔해요를 지칭하며 온라인 홈페이지를 통하여 제공되는 서비스를 관리하는 주체입니다.<br>
                (2) 회원 : 회사가 제공하는 서비스들을 이용가능한 자격을 가진 주체입니다.<br>
                (3) 창작자 : 개인의 아이디어를 통해 회사의 규정에 따라 프로젝트를 만들어 후원받는 회원입니다.<br>
                (4) 후원자 : 개인이 관심가는 프로젝트에 자금을 후원하고 그에 따라 리워드를 받는 회원입니다.<br>
                (6) 프로젝트 : 창작자의 아이디어에 대한 목적이나 계획과 같은 자세한 설명이 있고, 이를 통해 후원자에게 후원을 받을 수 있는 서비스 객체입니다.<br>
                (7) 펀딩 : 창작자가 만든 프로젝트에 기금을 후원받는 것을 의미합니다.<br><br><br>
                </p>    

                <h3 align="left">2. 서비스 이용</h3> <br><br>
                <h5 align="left">제 3조 서비스의 제공</h5>
                <p align="left">
                회사는 다음과 같은 서비스를 제공합니다. <br>
                </p>
                <ul align="left">
                    <li>프로젝트 생성 및 후원 시스템 제공</li>
                    <li>기금 모집 및 전달, 중개서비스</li>
                    <li>광고 서비스</li>
                </ul> <br>

                <h3 align="left">3. 회원정보의 보호 및 관리</h3> <br><br>
                <h5 align="left">제 4조 개인정보보호 및 의무</h5>
                <ul align="left">
                    <li>개인정보 수집 및 이용 동의: 회원정보를 수집할 때는 해당 정보의 수집 목적과 이용 방법을 명확히 알려주고, 회원들로부터 동의를 받아야 합니다. 이는 개인정보보호법 등 관련 법령에서 규정하는 내용입니다.</li><br>
                    <li>보안 조치: 회원정보를 안전하게 보호하기 위해 보안 시스템을 구축하고 유지해야 합니다. 이는 데이터 암호화, 접근 제어, 네트워크 보안 등 다양한 보안 조치를 포함합니다.</li><br>
                    <li>접근 제한: 회원정보에 접근할 수 있는 권한을 제한하고, 필요한 경우 접근 로그를 기록하여 누가 언제 해당 정보에 접근했는지 추적할 수 있도록 해야 합니다.</li><br>
                    <li>개인정보 침해 대응: 개인정보가 침해되거나 유출된 경우에는 즉시 대응 조치를 취해야 합니다. 이는 회원들에게 공지하고 관련 당국에 신고하는 등의 조치를 포함합니다.</li>
                </ul> <br>

                <h3 align="left">4. 기타</h3> <br><br>
                <h5 align="left">제 5조 회사의 의무</h5>
                <ul align="left">
                    <li>법적 의무: 회사는 관련 법규와 규정을 준수해야 합니다. 이는 국가의 법률, 세금법, 노동법, 소비자 보호법 등 다양한 법적 규정을 포함합니다. 회사는 이러한 법적 의무를 준수하고, 법적 요구를 충족 <br> 시켜야 합니다.</li> <br>
                    <li>고객 서비스 의무: 회사는 고객에게 제품이나 서비스를 제공함으로써 고객에 대한  의무를 가집니다. 이는 고객의 요구를 듣고 이에 대한 적절한 대응을 해야 하며, 제품 또는 서비스의 품질을 유지하고 <br> 개선해야 합니다.</li> <br>
                    <li>직원 관리 및 복지 의무: 회사는 직원들의 권리를 보호하고 그들의 복지를 증진시키는 의무를 가집니다. 이는 적절한 임금을 지급하고 안전한 작업 환경을 제공하는 것부터 시작하여, 직원들의 교육 <br> 과 훈련, 직업 발전 기회를 제공하는 것까지 포함됩니다.</li> <br>
                    <li>사회적 책임: 회사는 사회적 책임을 갖습니다. 이는 환경 보호, 지역 사회 발전, 사회적 기여 등 다양한 방식으로 나타날 수 있습니다. 회사는 사회적 책임을 이행하기 위해 사회 활동에 참여하고, 지속 <br> 가능한 경영과 사회적 가치 창출을 추구해야 합니다.</li> <br>
                    <li>정보 공개 의무: 회사는 투자자, 고객, 규제 기관 등과의 관계에서 정보를 적시에 공개하고 투명하게 의사 소통해야 합니다. 이는 재무 보고서, 사업 계획서, 제품 정보 등 다양한 정보를 포함합니다.</li> <br>
                    <li>품질 보증 의무: 회사는 제품 <br> 이나 서비스의 품질을 보장해야 합니다. 이는 고객에게 효과적인 제품이나 서비스를 제공하고, 만족스러운 사용자 경험을 제공하는 것을 의미합니다.</li>
                </ul> <br>

                <h5 align="left">제 6조 회원의 의무</h5>
                <ul align="left">
                    <li>규칙 및 정책 준수: 회원은 해당 조직이나 시스템의 규칙과 정책을 준수해야 합니다. 이는 서비스 이용 방법, 행동 강령, 커뮤니티 가이드라인 등을 포함합니다.</li> <br>
                    <li>정보 제공 및 업데이트: 회원은 필요한 경우 자신의 정보를 정확하게 제공하고 업데이트해야 합니다. 특히, 연락처 정보나 계정 관련 정보가 변경될 경우 이를 즉시 업데이트해야 합니다.</li> <br>
                    <li>비밀번호 보호 및 계정 안전: 회원은 자신의 계정을 안전하게 보호해야 합니다. 이는 안전한 비밀번호를 설정하고 비밀번호를 절대 타인에게 노출하지 않아야 한다는 것을 의미합니다.</li> <br>
                    <li>사용자 콘텐츠의 적법한 이용: 회원이 시스템에 업로드하거나 게시한 콘텐츠는 저작권 등 관련 법률을 준수해야 합니다. 불법적인 콘텐츠의 게시는 금지되며, 타인의 권리를 침해해서도 안 됩니다.</li> <br>
                    <li>존중과 예의: 회원은 다른 회원들을 존중하고 상호 예의를 지켜야 합니다. 혐오표현, 욕설, 모욕적인 언어를 사용하는 것은 금지되며, 다른 회원들의 권리와 의견을 존중해야 합니다.</li> <br>
                    <li>서비스 이용의 적법성: 회원은 서비스를 적법하게 이용해야 합니다. 이는 서비스를 악용하거나 다른 회원들에게 피해를 주는 행위를 하지 않아야 한다는 것을 의미합니다.</li> <br>
                    <li>지적재산권 보호: 회원은 타인의 지적재산권을 존중하고 보호해야 합니다. 불법적인 소프트웨어 사용, 저작권 침해, 상표권 침해 등은 금지되며, 회원은 이를 준수해야 합니다.</li>
                </ul>

</p>
            <button class="close-btn-bottom" onclick="closeModal('#modal1')">닫기</button>
        </div>
    </div>

    <%-- 푸터바 모달2 : 개인정보처리방침 --%>
    <div id="modal2" class="modal">
        <div class="modal_body">
            <h2>개인정보처리방침</h2>
            <span class="close-btn" onclick="closeModal('#modal2')">×</span>
            <p>2222222222222222dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd </p>
            <button class="close-btn-bottom" onclick="closeModal('#modal2')">닫기</button>
        </div>
    </div>

    <%-- 푸터바 모달3 : 프로젝트 등록 심사 기준 --%>
    <div id="modal3" class="modal">
        <div class="modal_body">
            <h2>프로젝트 등록 심사 기준</h2>
            <span class="close-btn" onclick="closeModal('#modal3')">×</span>
            <p>3333333333333333333333dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd </p>
            <button class="close-btn-bottom" onclick="closeModal('#modal3')">닫기</button>
        </div>
    </div>

    <script>
        function openModal(modalId) {
            const modal = document.querySelector(modalId);
            modal.style.display = "flex";
        }
    
        function closeModal(modalId) {
            const modal = document.querySelector(modalId);
            modal.style.display = "none";
        }
    
        const btnOpenModal1 = document.querySelector('#btn-open-modal1');
        const btnOpenModal2 = document.querySelector('#btn-open-modal2');
        const btnOpenModal3 = document.querySelector('#btn-open-modal3');
    
        btnOpenModal1.addEventListener("click", () => openModal('#modal1'));
        btnOpenModal2.addEventListener("click", () => openModal('#modal2'));
        btnOpenModal3.addEventListener("click", () => openModal('#modal3'));
    </script>
    <%-- ============================ 푸터바 모달 끝 ============================ --%>
    
    <%-- top 버튼 --%>
    <button id="top-btn"> ▲ </button >
    <script>
        $(document).ready(function() { 
        	<%-- Top 버튼 특정 스크롤높이에서만 보이기 / 숨기기 --%>
            $(window).scroll(function(){
                if($(this).scrollTop() > 100){
                    $('#top-btn').fadeIn();
                }else{
                    $('#top-btn').fadeOut();
                }
            });

            <%-- Top 버튼 클릭시 페이지 상단으로 이동 --%>
            $('#top-btn').click(function(){
                $('html, body').animate({scrollTop : 0}, 800);
                return false;
            });
        })
    </script>
</body>
</html>