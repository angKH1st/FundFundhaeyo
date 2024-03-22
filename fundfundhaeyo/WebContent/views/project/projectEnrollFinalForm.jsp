<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int pjCategory = (int)request.getAttribute("pjCategory");
	String pjTitle = (String)request.getAttribute("pjTitle");
	String pjOverview = (String)request.getAttribute("pjOverview");
	String pjTag = (String)request.getAttribute("pjTag");
	String pjPrice = (String)request.getAttribute("pjPrice");
	String pjContent = (String)request.getAttribute("pjContent");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뻔뻔해요</title>
<link rel="stylesheet" href="resources/css/project/projectEnrollFinalForm.css">
</head>
<link rel="icon" sizes="32x32" type="image/png" href="resources/image/main.ico">
<body>
	<%@ include file="../common/header.jsp" %>
	
	<form action="enroll.pr" method="post" enctype="multipart/form-data">
	<input type="hidden" name="pjCategory" value="<%= pjCategory %>">
	<input type="hidden" name="pjTitle" value="<%= pjTitle %>">
	<input type="hidden" name="pjOverview" value="<%= pjOverview %>">
	<input type="hidden" name="pjTag" value="<%= pjTag %>">
	<input type="hidden" name="pjPrice" value="<%= pjPrice %>">
	<input type="hidden" name="pjContent" value="<%= pjContent %>">
	
	<div class="project_enroll_final_form_outer font-outer">
		<div class="blank_top"><%-- 여백 --%></div>
		<div class="project_enroll_final_form_main shadow pd15">
			<div class="project_enroll_final_form_main_title">
				<div class="project_enroll_final_form_main_title_col1 fl">프로젝트 등록하기</div>
				<div class="project_enroll_final_form_main_title_col2 fl"><%-- 여백 --%></div>
				<div class="project_enroll_final_form_main_title_col3 fl"><a class="greenBtn" href="<%= contextPath %>/guide.hp">등록 가이드</a></div>
			</div>
			<div class="project_enroll_final_form_main_top">
				<div class="project_enroll_final_form_main_top_left fl brlg br5 pd15">
					<div class="project_enroll_final_form_row1">
						<div class="project_enroll_final_form_row1_col1 fl">프로젝트 시작일</div>
						<div class="project_enroll_final_form_row1_col2 fl"><button id="open-datepicker" style="font-size: 12px; color: skyblue;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;시작일을 선택해주세요. →</button></div>
						<div class="project_enroll_final_form_row1_col3 fl"><input class="blueBtn" type="text" id="datepicker" name="pjStart" value="시작일 선택" required readonly style="font-size: 12px;"></div>
					</div>
					<br>
					<div class="project_enroll_final_form_row2">
						<div class="project_enroll_final_form_row2_col1 fl projectDetails">프로젝트 기간</div>
						<div class="project_enroll_final_form_row2_col2 fl"><span class="project_enroll_anno anno2"></span></div>
						<div class="project_enroll_final_form_row2_col3 fl"><input class="pjPeriod" type="text" readonly></div>
					</div>
					<br>
					<div class="project_enroll_final_form_row3">
						<div class="project_enroll_final_form_row3_col1 fl projectDetails">프로젝트 종료일</div>
						<div class="project_enroll_final_form_row3_col2 fl"><span class="project_enroll_anno anno3"></span></div>
						<div class="project_enroll_final_form_row3_col3 fl"><input class="pjEnd" type="text" name="pjEnd" readonly></div>
					</div>
					<br>
					<div class="project_enroll_final_form_row4">
						<div class="project_enroll_final_form_row4_col1 fl projectDetails">후원자 결제 종료</div>
						<div class="project_enroll_final_form_row4_col2 fl"><span class="project_enroll_anno anno4"></span></div>
						<div class="project_enroll_final_form_row4_col3 fl"><input class="pjBuyerPayment" type="text" name="pjPaymentBuyer" readonly></div>
					</div>
					<br>
					<div class="project_enroll_final_form_row5">
						<div class="project_enroll_final_form_row5_col1 fl projectDetails">창작자 정산일</div>
						<div class="project_enroll_final_form_row5_col2 fl"><span class="project_enroll_anno anno5"></span></div>
						<div class="project_enroll_final_form_row5_col3 fl"><input class="pjSellerPayment" type="text" name="pjPaymentSeller" readonly></div>
					</div>
					
					<br>
					
					<div class="project_enroll_final_form_row6 projectDetails">
						펀딩 일정 : 설정한 일시가 되면 펀딩이 자동 시작됩니다. 
					</div>
					
					<hr class="projectDetails">
					
					<br>
					
					<div class="projectDetails" style="text-align: center;"><span>🎁 옵션 안내 🎁</span></div>
					
					<br>
					
					<div class="project_option projectDetails brlg br5">
						<table>
							<thead>
								<tr style="background-color: lightskyblue;">
									<td width=500 align=center>옵션 기준</td>
									<td width=1000 align=center>옵션 내용</td>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>옵션1. 펀딩금액의 10%</td>
									<td align=right><span>상품 1개</span></td>
								</tr>
								<tr>
									<td>옵션2. 펀딩금액의 50%</td>
									<td align=right><span>상품 3개</span></td>
								</tr>
								<tr>
									<td>옵션3. 펀딩금액의 100%</td>
									<td align=right><span>상품 5개 + 선물 포장</span></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="project_enroll_final_form_main_top_blank fl"></div>
				<div class="project_enroll_final_form_main_top_right fl brlg br5 pd15">
					<table align="center">
						<tr><td colspan=3>대표이미지</td></tr>
		                <tr>
		                    <td width=180><img class="brlg br10" id="titleImg" width="180" height="120" onclick="chooseFile(1);"></td>
		                    <td width=180></td>
		                    <td width=180></td>
		                </tr>
		                <tr><td colspan=3><span class="percentage">대표이미지는 필수 요소입니다.</span></td></tr>
		                <tr><td colspan=3><br></td></tr>
		                <tr><td colspan=3><br></td></tr>
		                <tr><td colspan=3>상세이미지</td></tr>
		                <tr>
		                    <td><img class="brlg br10" id="contentImg1" width="180" height="120" onclick="chooseFile(2);"></td>
		                    <td><img class="brlg br10" id="contentImg2" width="180" height="120" onclick="chooseFile(3);"></td>
		                    <td><img class="brlg br10" id="contentImg3" width="180" height="120" onclick="chooseFile(4);"></td>
		                </tr>
		                <tr><td colspan=3><span class="percentage">상세이미지는 최대 3장까지 등록 가능합니다.</span></td></tr>
		            </table>
		            
		            <div id="file-area" style="display:none">
		                <input type="file" name="file1" id="file1" onchange="loadImg(this, 1);" required>
		                <input type="file" name="file2" id="file2" onchange="loadImg(this, 2);">
		                <input type="file" name="file3" id="file3" onchange="loadImg(this, 3);">
		                <input type="file" name="file4" id="file4" onchange="loadImg(this, 4);">
		            </div>
				</div>
			</div>
			<div class="project_enroll_final_form_main_blank"><%-- 여백 --%></div>
			<div class="project_enroll_final_form_main_bottom">
				<button type="button" class="project_enroll_final_form_btn1 brlg shadow fl" style="margin-right: 16px; background-color: #f3f3f3;" onclick="location.href='<%= contextPath %>'">취소</button>
        		<button type="submit" class="project_enroll_final_form_btn2 brlg shadow fl" onclick="location.href='<%= contextPath %>/moveToEnrollFinal.pr'" disabled>다음</button>
			</div>
	    </div>
	    <div class="blank_bottom"><%-- 여백 --%></div>
    </div>
    
    </form>
	
	<%@ include file="../common/footer.jsp" %>
	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
	<script src="resources/js/project/projectEnrollFinalForm.js"></script>
</body>
</html>