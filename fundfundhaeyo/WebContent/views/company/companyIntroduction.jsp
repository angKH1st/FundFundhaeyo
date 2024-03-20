<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>뻔뻔해요</title>
<link rel="stylesheet" href="resources/css/company/companyIntroduction.css">
</head>
<link rel="icon" href="data:;base64,iVBORw0KGgo=" />
<body>
    <%@ include file="../common/header.jsp" %>

    <div class="introduction_outer font_outer">
        <div class="blank_top"><%-- 여백 --%></div>

        <div class="introduction_main brlg br5 shadow">
            <div class="title">
            	<h1>뻔뻔해요</h1>
            </div>
        	<br>
	        <div class="content">
	          	<table>
	            	<tr>
	              		<td>
	                		<p>
			                  아이디어를 가진 당신의 꿈을 현실로 만들어주는 크라우드펀딩
			                  플랫폼, <br>
			                  이제 아이디어가 현실로 이루어지지 못하는 아쉬움은 없습니다.
			                  <br><br>
			
			                  창의적인 아이디어가 즐비하고, 그 아이디어를 실현하고자 하는
			                  열정이 넘치지만, 이를 현실로 만들기 <br>
			                  위한 자금이 부족하다는 아쉬움을 느낄 때가 많습니다. 이러한
			                  아쉬움을 해소하고, 누구나 자신의 <br>
			                  아이디어를 실현할 수 있는 기회를 제공하기 위한 크라우드펀딩
			                  사이트입니다. <br><br>
			
			                  FundFundhaeyo (뻔뻔해요)는 아이디어를 가진 사람들이 자금을
			                  모집하고, 다양한 사람들이 <br>
			                  그 아이디어를 후원하며 함께 만들어가는 공간입니다. 사용자
			                  친화적인 인터페이스로 사용자들이 <br>
			                  쉽고 편리하게 프로젝트를 등록하고, 찾아볼 수 있습니다.
			                  <br><br>
			
			                  또한, Q&A와 채팅 기능을 활용하여 창작자와 후원자간의 소통이
			                  가능하여 프로젝트를 더욱 <br>
			                  발전시킬 수 있는 기회도 제공합니다. 이렇게 함께 만들어가는
			                  과정 속에서 창의력이 새로운 가치를 창출하고, <br>
			                  그 가치가 사회에 기여하게 되는 순환 구조를 만들어 나가고자
			                  합니다. <br><br>
			
			                  이렇게 우리의 크라우드펀딩 사이트 FundFundhaeyo (뻔뻔해요)는
			                  아이디어를 가진 모든 사람들이 <br>
			                  자신의 꿈을 펼칠 수 있는 장을 제공합니다. 더 이상 아이디어가
			                  현실로 이루어지지 못하는 아쉬움은 없습니다. <br>
			                  우리의 목표는 창의적인 아이디어와 열정이 모여 새로운 가치를
			                  창출하는 크라우드펀딩 커뮤니티를 만드는 것입니다.
			                </p>
	              		</td>
	              		<td colspan="2">
	                		<img src="resources/image/logo.gif" width="400" height="500" />
	              		</td>
	           		</tr>
	          	</table>
	          	<h5>멤버 깃허브 & 노션</h5>
	          
		        <div class="member_outer pd15 brlg br5">
		          	<div class="member1 brlg br5 fl">
		          		<div class="member_name"><i class="fa-solid fa-address-book"></i> 김재영</div>
		          		<div class="member_info">
			          		<div class="member_profile centerXY pd15 fl">
			          			 <img src="resources/image/FFHY/Nano.png">
			          		</div>
				        	 <div class="member_social fl">
				          		 <div class="member_github github" onclick="githubNano();">
				          			 <div class="github_logo fl"><i class="fa-brands fa-github"></i></div>
				          			 <div class="github_title fl">https://github.com/NanoKim</div>
				          		 </div>
				          		 <div class="member_notion notion" onclick="notionNano();">
				          			 <div class="notion_logo fl"><i class="fa-solid fa-n"></i></div>
				          			 <div class="notion_title fl">https://notion.so/NanoKim</div>
				          		 </div>
				          	 </div>
			          	 </div>
	          		</div>
	          		<div class="member2 brlg br5 fl">
		          		<div class="member_name"><i class="fa-solid fa-address-book"></i> 어수지</div>
		          		<div class="member_info">
			          		<div class="member_profile centerXY pd15 fl">
			          			 <img src="#">
			          		</div>
				        	 <div class="member_social fl">
				          		 <div class="member_github github" onclick="githubSuuuji();">
				          			 <div class="github_logo fl"><i class="fa-brands fa-github"></i></div>
				          			 <div class="github_title fl">https://github.com/Suuujii</div>
				          		 </div>
				          		 <div class="member_notion notion" onclick="notionSuuuji();">
				          			 <div class="notion_logo fl"><i class="fa-solid fa-n"></i></div>
				          			 <div class="notion_title fl">https://notion.so/Suuujii</div>
				          		 </div>
				          	 </div>
			          	 </div>
	          		</div>
	          		<div class="member3 brlg br5 fl">
		          		<div class="member_name"><i class="fa-solid fa-address-book"></i> 뻔뻔하조</div>
		          		<div class="member_info">
			          		<div class="member_profile centerXY pd15 fl">
			          			 <img src="resources/image/FFHY/FFHY.png">
			          		</div>
				        	 <div class="member_social fl">
				          		 <div class="member_github github" onclick="githubFFHY();">
				          			 <div class="github_logo fl"><i class="fa-brands fa-github"></i></div>
				          			 <div class="github_title fl">https://github.com/angKH1st</div>
				          		 </div>
				          		 <div class="member_notion notion" onclick="notionFFHY();">
				          			 <div class="notion_logo fl"><i class="fa-solid fa-n"></i></div>
				          			 <div class="notion_title fl">https://notion.so/angKH1st</div>
				          		 </div>
				          	 </div>
			          	 </div>
	          		</div>
	      		</div>
			</div>
		</div>
	</div>
    	<div class="blank_bottom"><%-- 여백 --%></div>

    <%@ include file="../common/footer.jsp" %>

    <script src="resources/js/company/companyIntroduction.js"></script>
  </body>
</html>
