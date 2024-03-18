<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>뻔뻔해요</title>
    <link
      rel="stylesheet"
      href="resources/css/company/companyIntroduction.css"
      rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css"
    />
    <script src="/jquery-3.6.0.min.js"></script>
    <style>
      * { box-sizing: border-box; }
      a { text-decoration: none; }
      #headerWrap { position: absolute; width: 1100px; height: 80px; border: 1px solid gray; border-radius: 10px;}
      #gnbWrap { height: 100%; }
      #gnbWrap ul { display: flex; align-items: center; justify-content: space-around; height: 100%; list-style-type: none;}
      #gnbWrap .gnb > li { width: 20%; height: 110px; text-align: center; text-decoration: none; margin-right: 10px;}
      #gnbWrap .gnb > li >  a:hover {color: skyblue;}
      #gnbWrap .gnb > li > a { display: block; font-size: 20px; font-weight: 600; color: black; padding: 43px 10px; text-decoration: none;}
      .sub-wrap { display: none; position: absolute; top:80px; left: 0; width: 100%; background-color: skyblue; overflow: hidden; border-radius: 10px;}
      .sub-wrap > ul { max-width: 900px; width: 100%; margin: 0 auto; }
      .sub-wrap > ul > li > a { display: block; padding: 21px 12px; color: #fff; font-size: 18px; font-weight: bold; opacity: .5; transition: all .3s; -webkit-transition: all .3s; -moz-transition: all .3s; -ms-transition: all .3s; -o-transition: all .3s; }
      .sub-wrap > ul > li > a:hover { opacity: 1; text-decoration: none;}
    </style>
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
        <br /><br /><br />

        <div class="content">
          <table>
            <tr>
              <td>
                <p>
                  아이디어를 가진 당신의 꿈을 현실로 만들어주는 크라우드펀딩
                  플랫폼, <br />
                  이제 아이디어가 현실로 이루어지지 못하는 아쉬움은 없습니다.
                  <br /><br />

                  창의적인 아이디어가 즐비하고, 그 아이디어를 실현하고자 하는
                  열정이 넘치지만, 이를 현실로 만들기 <br />
                  위한 자금이 부족하다는 아쉬움을 느낄 때가 많습니다. 이러한
                  아쉬움을 해소하고, 누구나 자신의 <br />
                  아이디어를 실현할 수 있는 기회를 제공하기 위한 크라우드펀딩
                  사이트입니다. <br /><br />

                  FundFundhaeyo (뻔뻔해요)는 아이디어를 가진 사람들이 자금을
                  모집하고, 다양한 사람들이 <br />
                  그 아이디어를 후원하며 함께 만들어가는 공간입니다. 사용자
                  친화적인 인터페이스로 사용자들이 <br />
                  쉽고 편리하게 프로젝트를 등록하고, 찾아볼 수 있습니다.
                  <br /><br />

                  또한, Q&A와 리뷰 기능을 활용하여 창작자와 후원자간의 소통이
                  가능하여 프로젝트를 더욱 <br />
                  발전시킬 수 있는 기회도 제공합니다. 이렇게 함께 만들어가는
                  과정 속에서 창의력이 새로운 가치를 창출하고, <br />
                  그 가치가 사회에 기여하게 되는 순환 구조를 만들어 나가고자
                  합니다. <br /><br />

                  이렇게 우리의 크라우드펀딩 사이트 FundFundhaeyo (뻔뻔해요)는
                  아이디어를 가진 모든 사람들이 <br />
                  자신의 꿈을 펼칠 수 있는 장을 제공합니다. 더 이상 아이디어가
                  현실로 이루어지지 못하는 아쉬움은 없습니다. <br />
                  우리의 목표는 창의적인 아이디어와 열정이 모여 새로운 가치를
                  창출하는 크라우드펀딩 커뮤니티를 만드는 것입니다.
                </p>
              </td>
              <td colspan="2">
                <img src="resources/image/logo.gif" width="400" height="500" />
              </td>
            </tr>
          </table>
          <h5>맴버 깃허브 & 노션</h5>
          <header id="headerWrap">
            <nav id="gnbWrap">
              <ul class="gnb">
                <li>
                  <a href="">김재영</a>
                  <div class="sub-wrap">
                    <ul>
                      <li><a href="https://github.com/NanoKim">깃허브</a></li>
                      <li><a href="https://simple-impala-444.notion.site/System-out-print-NanoKim-fe3040183c5a459cb14b6abff5977fd0">노션</a></li>
                    </ul>
                  </div>
                </li>
                <li>
                  <a href="">어수지</a>
                  <div class="sub-wrap">
                    <ul>
                      <li><a href="https://github.com/Suuujii">깃허브</a></li>
                      <li><a href="https://www.notion.so/0bb3297fd8f54aec8c7a08eca6103e35?v=1aada94f39684bff90c70bc58d973a51">노션</a></li>
                    </ul>
                  </div>
                </li>
                <li>
                  <a href="">뻔뻔해요</a>
                  <div class="sub-wrap">
                    <ul>
                      <li><a href="https://github.com/angKH1st">깃허브</a></li>
                      <li><a href="https://autumn-tithonia-b02.notion.site/FundFundhaeyo-9f4a1fd055464a6985ea2d9424e0d857">노션</a></li>
                    </ul>
                  </div>
                </li>
        </div>
      </div>




     
        <script type="text/javascript">
          $(function(){
            $('.gnb > li').on('mouseover', function(){
              $('.sub-wrap').stop().slideUp(200)
                    $(this).children('.sub-wrap').stop().slideDown(200)
            });

            $('.gnb > li').on('mouseleave', function(){
              $(this).children('.sub-wrap').stop().slideUp(200)
            });
          });
        </script>

      <div class="blank_bottom"><%-- 여백 --%></div>
    </div>

    <%@ include file="../common/footer.jsp" %>

    <script
      src="resources/js/company/companyIntroduction.js"
      rel="javascript"
    ></script>
  </body>
</html>
