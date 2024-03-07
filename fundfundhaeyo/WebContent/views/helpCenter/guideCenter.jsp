<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뻔뻔해요</title>
<link rel="stylesheet" href="resources/css/helpCenter/guideCenter.css">
<style>
	.guide{height: 700px; margin-top: 30px;}
	.pj{
		border: 1px solid  lightskyblue;
		width: 300px;
		height: 30px;
		line-height: 30px;
		cursor: pointer;
		border-radius: 10px;
	}
	.pj:hover{background-color: lightskyblue;}

	.content{
		border: 1px solid light skyblue;
		width: 300px;
		height: 100px;
		border-radius: 10px;
		margin-top: 5px;
		padding: 10px;
		box-sizing: border-box;
		display: none;
		margin-bottom: 90px;
		
	}
	.guide>*{margin-left: 400px;}

	div{border: 0;}
</style>
</head>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<body>
	<%@ include file="../common/header.jsp" %>
	
	<div class="guide_center_outer">
		<div class="blank_top"><%-- 여백 --%></div>
		
		<div class="guide_center_main">
		
			<div class="guide_center_main_top font_outer">
				<div class="guide_center_main_top_row1">
					<h1 class="guide_center_main_top_row1_title">고객지원</h1>
				</div>
				<div class="guide_center_main_top_row2">
					<div class="guide_center_main_top_row2_bottom"></div>
				</div>
			</div>
			<div class="guide_center_main_navi">
				<div class="btn-a fl"><a href="<%= contextPath %>/announcement.hp?cpage=1">공지사항</a></div>
				<div class="btn-b fl"><a href="<%= contextPath %>/faq.hp">FAQ</a></div>
				<div class="btn-c fl"><a href="<%= contextPath %>/qna.hp">Q&A</a></div>
				<div class="btn-d fl"><a style="color: skyblue;">펀딩 가이드</a></div>
			</div>
			<div class="guide_center_main_select"><%-- 여백 --%></div>
			<div class="guide_center_main_content">
				
				<h2 align="center">펀딩에 필요한 가이드</h2>
				<div class="guide">
				<h5 class="pj">1. 프로젝트 준비 ></h5>
				<p class="content">
					- 펀딩 목표 설정 <br>
					- 펀딩 예산 수립 <br>
					- 목표 금액 설정 <br>
					- 펀딩 리워드 계획 <br>
					- 펀딩 일정 계획 <br>
					- 정산 일정 계획
				</p>
				<h5 class="pj">2. 프로젝트 계획 수립 ></h5>
				<p class="content">
					- 프로젝트 목적 및 취지 <br>
					- 프로젝트 설명 <br>
					- 프로젝트 예산 <br>
					- 프로젝트 일정 <br>
					- 창작자 소개 <br>
					- 리워드 소개 <br>
					- 심사전 체크리스트 
				</p>
				<h5 class="pj">3. 홍보 ></h5>
				<p class="content">
					- 홍보 대상 설정 <br>
					- sns 활용 <br>
					- 이벤트 진행 <br>
					- 광고 활용 <br>
					- 오프라인 활용
				</p>
				<h5 class="pj">4. 소통 ></h5>
				<p class="content">
					- 소통 공간 마련 <br>
					- 커뮤니티, Qna 등 활용 <br>
					- 피드백을 통한 프로젝트 향상 <br>
				</p>
				<h5 class="pj">5. 전달 ></h5>
				<p class="content">
					- 배송가이드
				</p>
			</div>
			</div>
			
			<script>
				$(function(){
					$(".pj").click(function(){
						if($(this).next().css("display") == "none"){
							$(this).siblings(".content").slideUp();
							$(this).next().slideDown();
						}else{
							$(this).next().slideUp();
						}
					});
				});
			</script>
	    </div>
	    
	    <div class="blank_bottom"><%-- 여백 --%></div>
    </div>
    
	<%@ include file="../common/footer.jsp" %>
	
	<script src="resources/js/helpCenter/guideCenter.js" rel="javascript"></script>
</body>
</html>