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
				<div class="search_area update-input-wrap input-id fl" id="search_area">
                    <input class="fl" type="text" id="keyword" name="keyword" placeholder="검색어를 입력해주세요" style="font-size: 20px;" required>
					<button class="fl" onclick="search_btn();"><i class="fas fa-search"></i></button>			
				</div>
			<br><br><br>
	    </div>
	</div> 
	
	<%@ include file="../common/footer.jsp" %>
	
	<script src="resources/js/project/projectSearch.js"></script>
</body>
</html>