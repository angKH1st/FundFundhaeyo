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
		            <p class="p1 font_sejong_outer" style="font-size:13px;">
		            	회사명 : (주)KH세미프로젝트_뻔뻔해요 &nbsp;&nbsp;|&nbsp;&nbsp; 
		            	주소 : 서울특별시 강남구 테헤란로14길 6 남도빌딩 3F &nbsp;&nbsp;|&nbsp;&nbsp; 
		            	대표 : 김시연 &nbsp;&nbsp;|&nbsp;&nbsp; 
		            	사업자등록번호 : KH-SEMI-FFHY &nbsp;&nbsp;|&nbsp;&nbsp; 
		            	통신판매업 신고번호 : 2024-서울서초-뻔뻔하조 <br>
						대표번호 : 02-1234-FFHY &nbsp;&nbsp;|&nbsp;&nbsp;
						메일주소 : khproject1st@gmail.com <br>
					</p>
		            <p class="p2 font_outer" style="font-size:15px; margin: 10px 0;">뻔뻔해요는 프로젝트의 당사자가 아니며, 직접적인 통신판매를 진행하지 않습니다. 프로젝트의 완수 및 선물제공의 책임은 해당 프로젝트의 창작자에게 있으며, 프로젝트와 관련하여 후원자와 발생하는 법적 분쟁에 대한 책임은 해당 창작자가 부담합니다.</p>
		            <p class="p3 font_outer" style="font-size:13px; margin: 10px 0; text-align: center;">Copyright © 2024 FundFundhaeyo Institute All Right Reserved</p>
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
      		location.href = "<%= request.getContextPath() %>/announcement.hp";
      	}
    </script>
    <%-- ============================ 푸터바 모달 시작 ============================ --%>

    <%-- 푸터바 모달1 : 이용약관 --%>
    <div id="modal1" class="modal">
        <div class="modal_body">
            <h2 class="modal_title">이용약관</h2>
            <span class="close-btn" onclick="closeModal('#modal1')">×</span>
            <p>dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd </p>
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