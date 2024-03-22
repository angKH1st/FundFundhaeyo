<%@page import="com.kh.semi1st.project.model.vo.PjCategory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<PjCategory> list = (ArrayList<PjCategory>)request.getAttribute("categoryList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뻔뻔해요</title>
<link rel="stylesheet" href="resources/css/project/projectEnrollForm.css">
</head>
<link rel="icon" sizes="32x32" type="image/png" href="resources/image/main.ico">
<body>
	<%@ include file="../common/header.jsp" %>
	
	<form action="<%= contextPath %>/moveToEnrollFinal.pr" method="post">
	<div class="project_enroll_form_outer font-outer">
		<div class="blank_top"><%-- 여백 --%></div>
		<div class="project_enroll_form_main shadow pd15">
			<div class="project_enroll_form_main_title">
				<div class="project_enroll_form_main_title_col1 fl">프로젝트 등록하기</div>
				<div class="project_enroll_form_main_title_col2 fl"><%-- 여백 --%></div>
				<div class="project_enroll_form_main_title_col3 fl"><a class="greenBtn" href="<%= contextPath %>/guide.hp">등록 가이드</a></div>
			</div>
			<div class="project_enroll_form_main_top">
				<div class="project_enroll_form_main_top_left fl brlg br5 pd15">
					<div class="pjContainer">
						<div class="category">프로젝트 카테고리</div>
						<div class="select-box">
					    	<button type="button" class="select-button">카테고리를 선택해주세요</button>
					    	<ul class="select-list">
					    		<% for(PjCategory c : list){ %>
					    			<li><%= c.getPjCategoryName() %></li>
					    		<% } %>
					        </ul>
					        <input type="hidden" name="categoryName">
					    </div>
					</div>
					<div class="project_enroll_left_form">
						<div class="project_enroll_left_form_row1">
							<div class="project_enroll_title project_title fl">프로젝트 제목</div>
							<div class="project_enroll_inspection fl"></div>
						</div>
						<div class="project_enroll_left_form_row2 br5">
							<input type="text" placeholder="한글/숫자/특수문자 20자 이하 입력" name="pjTitle" required>
						</div>
					</div>
					<div class="project_enroll_left_form">
						<div class="project_enroll_left_form_row1">
							<div class="project_enroll_title project_overview fl">프로젝트 요약</div>
							<div class="project_enroll_inspection fl"></div>
						</div>
						<div class="project_enroll_left_form_row2 br5">
							<input type="text" placeholder="한글/숫자/특수문자 20자 이하 입력" name="pjOverview" required>
						</div>
					</div>
					<div class="project_enroll_left_form">
						<div class="project_enroll_left_form_row1">
							<div class="project_enroll_title project_tag fl">프로젝트 태그</div>
							<div class="project_enroll_inspection fl"></div>
						</div>
						<div class="project_enroll_left_form_row2 br5">
							<input type="text" placeholder="#으로 시작, 한글, 숫자, 특수문자 조합 15자 이하로 입력" name="pjTag" required>
						</div>
					</div>
					<div class="project_enroll_left_form">
						<div class="project_enroll_left_form_row1">
							<div class="project_enroll_title project_category_name fl">프로젝트 목표금액</div>
							<div class="project_enroll_inspection fl"></div>
						</div>
						<div class="project_enroll_left_form_row2 br5">
							<input type="number" id="pjPrice" placeholder="목표금액 범위는 100,000원 ~ 200,000,000원, 숫자만 입력" name="pjPrice" required>
						</div>
					</div>
					<div class="project_enroll_left_form">
						<div class="project_enroll_left_form_row1">
							<div class="project_enroll_title project_content fl">프로젝트 내용</div>
							<div class="project_enroll_inspection fl"></div>
						</div>
						<div class="project_enroll_left_form_row2 br5">
							<textarea class="brlg br5" placeholder="한글, 숫자, 특수문자 조합으로 100자 이하로 입력" name="pjContent" required></textarea>
						</div>
					</div>
				</div>
				<div class="project_enroll_form_main_top_blank fl"></div>
				<div class="project_enroll_form_main_top_right fl brlg br5 pd15">
					<div class="project_enroll_right_price brlg br5 pd15">
						<div class="project_enroll_right_price_form">
							<div class="project_enroll_right_price">
								<div class="project_enroll_price_top_row1">
									<div class="project_enroll_price_top_row1_col1 fl">목표금액</div>
									<div class="project_enroll_price_top_row1_col2 fl"><input placeholder="0 원" id="pjPriceCopy" readonly></div>
								</div>
								<div class="project_enroll_price_top_row2"><br><br><%-- 여백 --%></div>
							</div>
							<div class="project_enroll_price_bottom">
								<div class="project_enroll_price_bottom_col1 fl">목표 금액 달성 시 예상 수령액</div>
								<div class="project_enroll_price_bottom_col2 fl"><span>0</span> 원</div>
							</div>
						</div>
						<div class="project_enroll_right_tax_form">
							<div class="project_enroll_right_tax_row1">
							<br>
								<div class="project_enroll_right_tax_row1_col1 fl">총 수수료</div>
								<div class="project_enroll_right_tax_row1_col2 fl">0 원</div>
							</div>
							<div class="project_enroll_right_tax_row2">
								<div class="project_enroll_right_tax_row2_col1 fl">결제대행 수수료 (총 결제 성공 금액의 3% + VAT)</div>
								<div class="project_enroll_right_tax_row2_col2 fl">0 원</div>
							</div>
							<div class="project_enroll_right_tax_row3">
								<div class="project_enroll_right_tax_row3_col1 fl">기본 수수료 (총 결제 성공 금액의 5% + VAT)</div>
								<div class="project_enroll_right_tax_row3_col2 fl">0 원</div>
							</div>
						</div>
						<%-- test --%>
					</div>
					<div class="project_enroll_right_schedule_form"></div>
				</div>
			</div>
			<div class="project_enroll_form_main_blank"><%-- 여백 --%></div>
			<div class="project_enroll_form_main_bottom">
				<button type="button" class="project_enroll_form_btn1 brlg shadow fl" style="margin-right: 16px; background-color: #f3f3f3;" onclick="location.href='<%= contextPath %>'">취소</button>
        		<button type="submit" class="project_enroll_form_btn2 brlg shadow fl" disabled>다음</button>
			</div>
	    </div>
	    <div class="blank_bottom"><%-- 여백 --%></div>
    </div>
    </form>
	
	<%@ include file="../common/footer.jsp" %>
	
	<script src="resources/js/project/projectEnrollForm.js"></script>
</body>
</html>