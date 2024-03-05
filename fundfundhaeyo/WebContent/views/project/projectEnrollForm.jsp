<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뻔뻔해요</title>
<link rel="stylesheet" href="resources/css/project/projectEnrollForm.css">
</head>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<body>
	<%@ include file="../common/header.jsp" %>
	
	<div class="project_enroll_form_outer font-outer">
		<div class="blank_top"><%-- 여백 --%></div>
		<div class="project_enroll_form_main shadow pd15">
			<div class="project_enroll_form_main_title">
				<div class="project_enroll_form_main_title_col1 fl"><span>프로젝트 등록하기</span></div>
				<div class="project_enroll_form_main_title_col2 fl"><%-- 여백 --%></div>
				<div class="project_enroll_form_main_title_col3 fl"><a class="greenBtn" href="<%= contextPath %>/guide.hp">등록 가이드</a></div>
			</div>
			<div class="project_enroll_form_main_top">
				<div class="project_enroll_form_main_top_left fl brlg br5 pd15">
					<div class="project_enroll_left_form">
						<div class="project_enroll_left_form_row1">
							<div class="project_enroll_title fl">프로젝트 제목</div>
							<div class="project_enroll_inspection fl"></div>
						</div>
						<div class="project_enroll_left_form_row2 br5">
							<input type="text" placeholder="예시" name="pjTitle" required>
						</div>
					</div>
					<div class="project_enroll_left_form">
						<div class="project_enroll_left_form_row1">
							<div class="project_enroll_title fl">프로젝트 요약</div>
							<div class="project_enroll_inspection fl"></div>
						</div>
						<div class="project_enroll_left_form_row2 br5">
							<input type="text" placeholder="예시" name="pjOverview" required>
						</div>
					</div>
					<div class="project_enroll_left_form">
						<div class="project_enroll_left_form_row1">
							<div class="project_enroll_title fl">프로젝트 태그</div>
							<div class="project_enroll_inspection fl"></div>
						</div>
						<div class="project_enroll_left_form_row2 br5">
							<input type="text" placeholder="예시" name="pjTag" required>
						</div>
					</div>
					<div class="project_enroll_left_form">
						<div class="project_enroll_left_form_row1">
							<div class="project_enroll_title fl">프로젝트 카테고리</div>
							<div class="project_enroll_inspection fl"></div>
						</div>
						<div class="project_enroll_left_form_row2 br5">
							<input type="text" placeholder="예시" required>
						</div>
					</div>
					<div class="project_enroll_left_form">
						<div class="project_enroll_left_form_row1">
							<div class="project_enroll_title fl">프로젝트 내용</div>
							<div class="project_enroll_inspection fl"></div>
						</div>
						<div class="project_enroll_left_form_row2 br5">
							<textarea placeholder="예시" name="pjContent" required></textarea>
						</div>
					</div>
					<br><br>
					<div class="project_enroll_title fl" style="width: 49%; height: 7%; margin-right: 8px;">카테고리</div>
					<div class="project_enroll_title fl" style="width: 49%; height: 7%;">카테고리</div>
				</div>
				<div class="project_enroll_form_main_top_blank fl"></div>
				<div class="project_enroll_form_main_top_right fl brlg br5 pd15"></div>
			</div>
			<div class="project_enroll_form_main_blank"><%-- 여백 --%></div>
			<div class="project_enroll_form_main_bottom">
				<button type="button" class="project_enroll_form_btn1 brlg shadow fl" style="margin-right: 16px;" onclick="location.href='<%= contextPath %>'">취소</button>
        		<button type="button" class="project_enroll_form_btn2 brlg shadow fl" onclick="location.href='<%= contextPath %>/moveToEnrollFinal.pr'" disabled>다음</button>
			</div>
	    </div>
	    <div class="blank_bottom"><%-- 여백 --%></div>
    </div>
	
	<%@ include file="../common/footer.jsp" %>
	
	<script src="resources/js/project/projectEnrollForm.js"></script>
</body>
</html>