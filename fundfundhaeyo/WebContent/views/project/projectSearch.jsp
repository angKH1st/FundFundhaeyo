<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뻔뻔해요</title>
<link rel="stylesheet" href="resources/css/project/projectSearch.css">
<style>
	.project_search_main {
		display: flex; 
		justify-content: center; 
		align-items: center;
	}

	.search_form input{
		width: 1100px;
		height: 50px;
		border-top: none;
		border-left: none;
		border-right: none;
		margin: auto;

	}
	
	.search_form>#search_area_btn{
		/* display: inline; */
		height: 60px;
		width: 70px;
		/* background-color: white; */
	}

	#search_area_btn, #search_area{
		float: left;
		border-top: none;
		border-left: none;
		border-right: none;
	}
</style>
</head>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<body>
	<%@ include file="../common/header.jsp" %>
	
	<div class="project_search_outer">
		<div class="blank_top"><%-- 여백 --%></div>
		<div class="project_search_main">
			<!-- <form action="<%= contextPath %>/moveSearch.pr?keyword=" class="search_form" id="search_form"> -->
				<div class="search_area" id="search_area">
					<img src="resources/image/icons8-search-50.png" style="height: 40px;">
					<input type="text" id="keyword" name="keyword" placeholder=" 검색어를 입력해주세요" style="font-size: 20px;">
				</div>
				 <div class="search_area_btn" id="search_area_btn">
					<button onclick="search_btn();" class="btn btn-primary">검색</button>			
				</div>
			<!-- </form> -->

			<br><br><br>
			<!-- <div class="search_recent" id="search_recent"  style="border: solid 1px; color: black;">
				<span>최근 검색어</span>
				</div> -->
	    </div>
	    
			<script>
				function search_btn(){

					location.href = '<%= contextPath %>/searchPage.pr?keyword=' + $("#keyword").val();
				};
			</script> 
	</div> 
</body>
</html>