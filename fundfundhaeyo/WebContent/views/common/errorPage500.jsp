<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>뻔뻔해요</title>
    <style>
      .errorPage_outer{
        text-align : center;
      }

      .errorPage_outer img {
        display: block;
        margin: 0 auto;
      }

      .errorPage_outer h1,
      .errorPage_outer p {
        margin: 0;
      }
      
      .errorPage_outer{font-family: 'KNUTRUTHTTF', sans-serif;}

    </style>
  </head>
  <body>
    <%@ include file="../common/header.jsp"%>

    <div class="errorPage_outer">
      <div class="blank_top"><%-- 여백 --%></div>
      <br><br><br><br><br><br><br><br>

      <img src="resources/image/free-icon-500-error-7486789.png">
      <br><br>
      <p style="font-size: 25px">
      	죄송합니다. 웹 페이지를 표시할 수 없습니다. <br> 
      </p><br><br><br>

      <button class="btn btn-primary" onclick="goToHomaPage()">
        홈으로 돌아가기
      </button>
    </div>
    
    <script>
      function goToHomaPage() {
        location.href = "/fund/";
      }
    </script>
    
    <br><br><br><br><br><br><br>
    <%@ include file="../common/footer.jsp"%>
    <script src="resources/js/member/memberAttendProject.js"></script>
  </body>
</html>