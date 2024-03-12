<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뻔뻔해요</title>
<link rel="stylesheet" href="resources/css/project/projectSearch.css">
</head>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<body>
	<%@ include file="../common/header.jsp" %>
	
	<div class="project_search_outer font_outer">
		<div class="blank_top"><%-- 여백 --%></div>
		<div class="project_search_main">
				<div class="search_area" id="search_area">
					<img src="resources/image/icons8-search-50.png" style="height: 40px;">
					<input type="text" id="keyword" name="keyword" placeholder=" 검색어를 입력해주세요" style="font-size: 20px;">
				</div>
				 <div class="search_area_btn" id="search_area_btn">
					<button onclick="search_btn();" class="btn btn-primary">검색</button>			
				</div>
			<br><br><br>
	    </div>
	</div> 
	
	<%@ include file="../common/footer.jsp" %>
	
	<script src="resources/js/project/projectSearch.js"></script>
</body>
</html>