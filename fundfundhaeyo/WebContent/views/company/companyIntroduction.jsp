<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뻔뻔해요</title>
<link rel="stylesheet" href="resources/css/company/companyIntroduction.css">
<script src="resources/js/company/companyIntroduction.js" rel="javascript"></script>
<style>
/* 기본 셋업 */
	.introduction_outer{width:100%; height: 1000px; padding: 0 300px;}
	.introduction_outer>div{width:100%;}
	.blank_top{height: 15%;}
	.blank_bottom{height: 5%;}

	/* 메인 영역 시작 */
	.introduction_main{height: 80%;}
</style>
</head>
<body>
	<%@ include file="../common/header.jsp" %>
	
	<div class="introduction_outer">
		<div class="blank_top"><%-- 여백 --%></div>
		
		<div class="introduction_main">
			
			<div class="title">
				<h1>뻔뻔해요</h1>
			</div>
			<br><br><br>

			<div class="content">
				<table>
					<tr>
						<td>
							<p>
							아이디어를 가진 당신의 꿈을 현실로 만들어주는 크라우드펀딩 플랫폼, <br>
							이제 아이디어가 현실로 이루어지지 못하는 아쉬움은 없습니다. <br><br>
							
							창의적인 아이디어가 즐비하고, 그 아이디어를 실현하고자 하는 열정이 넘치지만, 이를 현실로 만들기 <br> 
							위한 자금이 부족하다는 아쉬움을 느낄 때가 많습니다. 이러한 아쉬움을 해소하고, 누구나 자신의 <br> 
							아이디어를 실현할 수 있는 기회를 제공하기 위한 크라우드펀딩 사이트입니다. <br><br>
		
							FundFundhaeyo (뻔뻔해요)는 아이디어를 가진 사람들이 자금을 모집하고, 다양한 사람들이 <br> 
							그 아이디어를 후원하며 함께 만들어가는 공간입니다. 사용자 친화적인 인터페이스로 사용자들이 <br> 
							쉽고 편리하게 프로젝트를 등록하고, 찾아볼 수 있습니다. <br><br>
		
							또한, Q&A와 리뷰 기능을 활용하여 창작자와 후원자간의 소통이 가능하여 프로젝트를 더욱 <br> 
							발전시킬 수 있는 기회도 제공합니다. 이렇게 함께 만들어가는 과정 속에서 창의력이 새로운 가치를 창출하고, <br> 
							그 가치가 사회에 기여하게 되는 순환 구조를 만들어 나가고자 합니다. <br><br>
		
							이렇게 우리의 크라우드펀딩 사이트 FundFundhaeyo (뻔뻔해요)는 아이디어를 가진 모든 사람들이 <br> 
							자신의 꿈을 펼칠 수 있는 장을 제공합니다. 더 이상 아이디어가 현실로 이루어지지 못하는 아쉬움은 없습니다. <br> 
							우리의 목표는 창의적인 아이디어와 열정이 모여 새로운 가치를 창출하는 크라우드펀딩 커뮤니티를 만드는 것입니다.
							</p>
						</td>
						<td>
							<img src="https://help.miricanvas.com/hc/article_attachments/4409250561049/_______5_.png" width="400" height="500">
						</td>
					</tr>
				</table>
				
			</div>

	    </div>
	    
	    <div class="blank_bottom"><%-- 여백 --%></div>
    </div>
    
	<%@ include file="../common/footer.jsp" %>
</body>
</html>