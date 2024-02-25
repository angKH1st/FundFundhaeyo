<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
   SimpleDateFormat formatter = new SimpleDateFormat("yyyy.MM.dd HH:mm");
   String dateString = formatter.format(new Date());
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뻔뻔해요</title>
<link rel="stylesheet" href="resources/css/index.css">
</head>
<body>
	<%@ include file="views/common/header.jsp" %>
	
	<div class="main_outer font_outer">
		<div class="ffh_content">
			<div class="ffh_content_adv fl">
				<div id="demo" class="carousel slide" data-ride="carousel">
					<ul class="carousel-indicators">
						<li data-target="#demo" data-slide-to="0" class="active"></li>
						<li data-target="#demo" data-slide-to="1"></li>
						<li data-target="#demo" data-slide-to="2"></li>
					</ul>
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img src="resources/image/temp1.jpg" alt="TBU">
							<div class="carousel-caption">
							<h3>상품1 제목</h3>
							<p>상품1 소개문구 간략히</p>
							</div>   
						</div>
						<div class="carousel-item">
							<img src="resources/image/temp2.jpg" alt="Chicago">
							<div class="carousel-caption">
							<h3>상품2 제목</h3>
							<p>상품2 소개문구 간략히</p>
							</div>   
						</div>
						<div class="carousel-item">
							<img src="resources/image/temp3.jpg" alt="New York">
							<div class="carousel-caption">
							<h3>상품3 제목</h3>
							<p>상품3 소개문구 간략히</p>
							</div>   
						</div>
					</div>
					<a class="carousel-control-prev" href="#demo" data-slide="prev">
						<span class="carousel-control-prev-icon"></span>
					</a>
					<a class="carousel-control-next" href="#demo" data-slide="next">
						<span class="carousel-control-next-icon"></span>
					</a>
				</div>
			</div>
			<div class="ffh_content_top fl">
				<div class="ffh_content_top_left fl">
					<div class="ffh_content_top_left1">
						<div class="ffh_content_top_left1_col1 fl"><h2 class="title_text" style="margin-top: 40px; margin-left: 20px;">🎈 전체 프로젝트 🎈</h2></div>
						<div class="ffh_content_top_left1_col2 fl">
							<div class="ffh_content_top_left1_col2_row1"></div>
							<div class="ffh_content_top_left1_col2_row2">
								<div class="ffh_content_top_left1_col2_row2_col1 fl more_left_text"><%-- 여백 --%></div>
								<div class="ffh_content_top_left1_col2_row2_col2 fl"><a href="<%= contextPath %>/all.pr"><button type="button" class="more_btn" style="background-color:white; margin-top: 15px;">더보기</button></a></div>
							</div>
						</div>
					</div>
					<div class="ffh_content_top_left2">
						<div class="ffh_content_top_left2_all fl">
							<div class="ffh_content_top_left2_p1_row1 pr1"><%-- 여백 --%></div>
							<div class="ffh_content_top_left2_p1_row2 pr2">
								<a href="#"><img src="resources/image/temp2.jpg" alt="" width="190px" height="180px"></a>
							</div>
							<div class="ffh_content_top_left2_p1_row3 pr3">
								<div class="pr3_r1"><a href="#" class="pca">언더웨어</a></div>
								<div class="pr3_r2"><a href="#"><strong class="ptitle">[모아주문] 10년차 디자이너의 진심트렁크, 누드팬츠</strong></a></div>
								<div class="pr3_r3">
									<div class="pr3_r3_col1 fl"><span class="percentage">222% 달성</span></div>
									<div class="pr3_r3_col2 fl"></div>
								</div>
							</div>
						</div>
						<div class="ffh_content_top_left2_all fl">
							<div class="ffh_content_top_left2_p1_row1 pr1"><%-- 여백 --%></div>
							<div class="ffh_content_top_left2_p1_row2 pr2">
								<a href="#"><img src="resources/image/temp2.jpg" alt="" width="190px" height="180px"></a>
							</div>
							<div class="ffh_content_top_left2_p1_row3 pr3">
								<div class="pr3_r1"><a href="#" class="pca">언더웨어</a></div>
								<div class="pr3_r2"><a href="#"><strong class="ptitle">[모아주문] 10년차 디자이너의 진심트렁크, 누드팬츠</strong></a></div>
								<div class="pr3_r3">
									<div class="pr3_r3_col1 fl"><span class="percentage">511% 달성</span></div>
									<div class="pr3_r3_col2 fl"></div>
								</div>
							</div>
						</div>
						<div class="ffh_content_top_left2_all fl">
							<div class="ffh_content_top_left2_p1_row1 pr1"><%-- 여백 --%></div>
							<div class="ffh_content_top_left2_p1_row2 pr2">
								<a href="#"><img src="resources/image/temp2.jpg" alt="" width="190px" height="180px"></a>
							</div>
							<div class="ffh_content_top_left2_p1_row3 pr3">
								<div class="pr3_r1"><a href="#" class="pca">언더웨어</a></div>
								<div class="pr3_r2"><a href="#"><strong class="ptitle">[모아주문] 10년차 디자이너의 진심트렁크, 누드팬츠</strong></a></div>
								<div class="pr3_r3">
									<div class="pr3_r3_col1 fl"><span class="percentage">1541% 달성</span></div>
									<div class="pr3_r3_col2 fl"></div>
								</div>
							</div>
						</div>
						<div class="ffh_content_top_left2_all fl">
							<div class="ffh_content_top_left2_p1_row1 pr1"><%-- 여백 --%></div>
							<div class="ffh_content_top_left2_p1_row2 pr2">
								<a href="#"><img src="resources/image/temp2.jpg" alt="" width="190px" height="180px"></a>
							</div>
							<div class="ffh_content_top_left2_p1_row3 pr3">
								<div class="pr3_r1"><a href="#" class="pca">언더웨어</a></div>
								<div class="pr3_r2"><a href="#"><strong class="ptitle">[모아주문] 10년차 디자이너의 진심트렁크, 누드팬츠</strong></a></div>
								<div class="pr3_r3">
									<div class="pr3_r3_col1 fl"><span class="percentage">131% 달성</span></div>
									<div class="pr3_r3_col2 fl"></div>
								</div>
							</div>
						</div>
						<div class="ffh_content_top_left2_all fl">
							<div class="ffh_content_top_left2_p1_row1 pr1"><%-- 여백 --%></div>
							<div class="ffh_content_top_left2_p1_row2 pr2">
								<a href="#"><img src="resources/image/temp2.jpg" alt="" width="190px" height="180px"></a>
							</div>
							<div class="ffh_content_top_left2_p1_row3 pr3">
								<div class="pr3_r1"><a href="#" class="pca">언더웨어</a></div>
								<div class="pr3_r2"><a href="#"><strong class="ptitle">[모아주문] 10년차 디자이너의 진심트렁크, 누드팬츠</strong></a></div>
								<div class="pr3_r3">
									<div class="pr3_r3_col1 fl"><span class="percentage">442% 달성</span></div>
									<div class="pr3_r3_col2 fl"></div>
								</div>
							</div>
						</div>
						<div class="ffh_content_top_left2_all fl">
							<div class="ffh_content_top_left2_p1_row1 pr1"><%-- 여백 --%></div>
							<div class="ffh_content_top_left2_p1_row2 pr2">
								<a href="#"><img src="resources/image/temp2.jpg" alt="" width="190px" height="180px"></a>
							</div>
							<div class="ffh_content_top_left2_p1_row3 pr3">
								<div class="pr3_r1"><a href="#" class="pca">언더웨어</a></div>
								<div class="pr3_r2"><a href="#"><strong class="ptitle">[모아주문] 10년차 디자이너의 진심트렁크, 누드팬츠</strong></a></div>
								<div class="pr3_r3">
									<div class="pr3_r3_col1 fl"><span class="percentage">369% 달성</span></div>
									<div class="pr3_r3_col2 fl"></div>
								</div>
							</div>
						</div>
						<div class="ffh_content_top_left2_all fl">
							<div class="ffh_content_top_left2_p1_row1 pr1"><%-- 여백 --%></div>
							<div class="ffh_content_top_left2_p1_row2 pr2">
								<a href="#"><img src="resources/image/temp2.jpg" alt="" width="190px" height="180px"></a>
							</div>
							<div class="ffh_content_top_left2_p1_row3 pr3">
								<div class="pr3_r1"><a href="#" class="pca">언더웨어</a></div>
								<div class="pr3_r2"><a href="#"><strong class="ptitle">[모아주문] 10년차 디자이너의 진심트렁크, 누드팬츠</strong></a></div>
								<div class="pr3_r3">
									<div class="pr3_r3_col1 fl"><span class="percentage">250% 달성</span></div>
									<div class="pr3_r3_col2 fl"></div>
								</div>
							</div>
						</div>
						<div class="ffh_content_top_left2_all fl">
							<div class="ffh_content_top_left2_p1_row1 pr1"><%-- 여백 --%></div>
							<div class="ffh_content_top_left2_p1_row2 pr2">
								<a href="#"><img src="resources/image/temp2.jpg" alt="" width="190px" height="180px"></a>
							</div>
							<div class="ffh_content_top_left2_p1_row3 pr3">
								<div class="pr3_r1"><a href="#" class="pca">언더웨어</a></div>
								<div class="pr3_r2"><a href="#"><strong class="ptitle">[모아주문] 10년차 디자이너의 진심트렁크, 누드팬츠</strong></a></div>
								<div class="pr3_r3">
									<div class="pr3_r3_col1 fl"><span class="percentage">170% 달성</span></div>
									<div class="pr3_r3_col2 fl"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="ffh_content_top_middle fl"><%-- 여백 --%></div>
				<div class="ffh_content_top_right fl">
					<div class="ffh_content_top_right_row1">
						<div class="ffh_content_top_right_row1_col1 fl">
							<h2 class="title_text" style="margin-top: 40px;">프로젝트 랭킹</h2>
						</div>
						<div class="ffh_content_top_right_row1_col2 fl" style="font-size: 12px; text-align: right; line-height:130px;">
						    <span style="vertical-align: bottom;"><%= dateString %> 기준</span>
						</div>
					</div>
					<div class="ffh_content_top_right_row2">
						<div class="ffh_content_top_right_row2_rk fl">
							<div class="rk_r1"><%--여백--%></div>
							<div class="rk_r2">
								<div class="rk_col1 fl">
									<a href="#"><img src="resources/image/temp2.jpg" alt="" width="100px" height="90px"></a>
								</div>
								<div class="rk_col2 fl">
									<div class="rk_col2_row1 fl">
										<div class="rk_col2_row1_col1 fl"><a href="#" class="pca">언더웨어</a></div>
										<div class="rk_col2_row1_col2 fl" style="text-align: right"><a href="#"><span class="percentage">10000% 달성</span></a></div>
									</div>
									<div class="rk_col2_row2 fl">
										<div class="rk_col2_row2_row1"><a href="#"><strong class="ptitle">[모아주문] 10년차 디자이너의 진심트렁크, 누드팬츠</strong></a></div>
									</div>
								</div>
							</div>
						</div>
						<div class="ffh_content_top_right_row2_rk fl">
							<div class="rk_r1"><%--여백--%></div>
							<div class="rk_r2">
								<div class="rk_col1 fl">
									<a href="#"><img src="resources/image/temp2.jpg" alt="" width="100px" height="90px"></a>
								</div>
								<div class="rk_col2 fl">
									<div class="rk_col2_row1 fl">
										<div class="rk_col2_row1_col1 fl"><a href="#" class="pca">언더웨어</a></div>
										<div class="rk_col2_row1_col2 fl" style="text-align: right"><a href="#"><span class="percentage">10000% 달성</span></a></div>
									</div>
									<div class="rk_col2_row2 fl">
										<div class="rk_col2_row2_row1"><a href="#"><strong class="ptitle">[모아주문] 10년차 디자이너의 진심트렁크, 누드팬츠</strong></a></div>
									</div>
								</div>
							</div>
						</div>
						<div class="ffh_content_top_right_row2_rk fl">
							<div class="rk_r1"><%--여백--%></div>
							<div class="rk_r2">
								<div class="rk_col1 fl">
									<a href="#"><img src="resources/image/temp2.jpg" alt="" width="100px" height="90px"></a>
								</div>
								<div class="rk_col2 fl">
									<div class="rk_col2_row1 fl">
										<div class="rk_col2_row1_col1 fl"><a href="#" class="pca">언더웨어</a></div>
										<div class="rk_col2_row1_col2 fl" style="text-align: right"><a href="#"><span class="percentage">10000% 달성</span></a></div>
									</div>
									<div class="rk_col2_row2 fl">
										<div class="rk_col2_row2_row1"><a href="#"><strong class="ptitle">[모아주문] 10년차 디자이너의 진심트렁크, 누드팬츠</strong></a></div>
									</div>
								</div>
							</div>
						</div>
						<div class="ffh_content_top_right_row2_rk fl">
							<div class="rk_r1"><%--여백--%></div>
							<div class="rk_r2">
								<div class="rk_col1 fl">
									<a href="#"><img src="resources/image/temp2.jpg" alt="" width="100px" height="90px"></a>
								</div>
								<div class="rk_col2 fl">
									<div class="rk_col2_row1 fl">
										<div class="rk_col2_row1_col1 fl"><a href="#" class="pca">언더웨어</a></div>
										<div class="rk_col2_row1_col2 fl" style="text-align: right"><a href="#"><span class="percentage">10000% 달성</span></a></div>
									</div>
									<div class="rk_col2_row2 fl">
										<div class="rk_col2_row2_row1"><a href="#"><strong class="ptitle">[모아주문] 10년차 디자이너의 진심트렁크, 누드팬츠</strong></a></div>
									</div>
								</div>
							</div>
						</div>
						<div class="ffh_content_top_right_row2_rk fl">
							<div class="rk_r1"><%--여백--%></div>
							<div class="rk_r2">
								<div class="rk_col1 fl">
									<a href="#"><img src="resources/image/temp2.jpg" alt="" width="100px" height="90px"></a>
								</div>
								<div class="rk_col2 fl">
									<div class="rk_col2_row1 fl">
										<div class="rk_col2_row1_col1 fl"><a href="#" class="pca">언더웨어</a></div>
										<div class="rk_col2_row1_col2 fl" style="text-align: right"><a href="#"><span class="percentage">10000% 달성</span></a></div>
									</div>
									<div class="rk_col2_row2 fl">
										<div class="rk_col2_row2_row1"><a href="#"><strong class="ptitle">[모아주문] 10년차 디자이너의 진심트렁크, 누드팬츠</strong></a></div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="ffh_content_top_right_row3">
						<a href="<%= contextPath %>/rank.pr"><button style="width: 100%; height: 50%; border-radius: 10px; padding: 10px 30px;">인기 프로젝트 더보기</button></a>
					</div>
				</div>
			</div>
			<div class="ffh_frame1 fl">
				<div class="ffh_frame1_top fl">
					<div class="ffh_frame1_top_col1 fl">
						<h2 class="title_text" style="margin-top: 40px;">✨ 신규 프로젝트 ✨</h2>
					</div>
					<div class="ffh_frame1_top_col2 fl">
						<div class="ffh_frame1_top_col2_row1"></div>
						<div class="ffh_frame1_top_col2_row2">
							<div class="ffh_frame1_top_col2_row2_left fl more_left_text"><%-- 여백 --%></div>
							<div class="ffh_frame1_top_col2_row2_right fl"><a href="<%= contextPath %>/new.pr"><button type="button" class="more_btn" style="background-color:white; margin-top: 15px;">더보기</button></a></div>
						</div>
					</div>
				</div>
				<div class="ffh_frame1_body fl">
					<div class="ffh_frame2 fl" >
						<div class="pr1"></div>
						<div class="pr2">
							<a href="#"><img src="resources/image/temp2.jpg" alt="" width="240px" height="200px"></a>
						</div>
						<div class="pr3">
							<div class="pr3_r1"><a href="#" class="pca">언더웨어</a></div>
							<div class="pr3_r2"><a href="#"><strong class="ptitle">[모아주문] 10년차 디자이너의 진심트렁크, 누드팬츠</strong></a></div>
							<div class="pr3_r3">
								<div class="pr3_r3_col1 fl"><span class="percentage">111% 달성</span></div>
								<div class="pr3_r3_col2 fl"></div>
							</div>
						</div>
					</div>
					<div class="ffh_frame2 fl">
						<div class="pr1"></div>
						<div class="pr2">
							<a href="#"><img src="resources/image/temp2.jpg" alt="" width="240px" height="200px"></a>
						</div>
						<div class="pr3">
							<div class="pr3_r1"><a href="#" class="pca">언더웨어</a></div>
							<div class="pr3_r2"><a href="#"><strong class="ptitle">[모아주문] 10년차 디자이너의 진심트렁크, 누드팬츠</strong></a></div>
							<div class="pr3_r3">
								<div class="pr3_r3_col1 fl"><span class="percentage">555% 달성</span></div>
								<div class="pr3_r3_col2 fl"></div>
							</div>
						</div>
					</div>
					<div class="ffh_frame2 fl">
						<div class="pr1"></div>
						<div class="pr2">
							<a href="#"><img src="resources/image/temp2.jpg" alt="" width="240px" height="200px"></a>
						</div>
						<div class="pr3">
							<div class="pr3_r1"><a href="#" class="pca">언더웨어</a></div>
							<div class="pr3_r2"><a href="#"><strong class="ptitle">[모아주문] 10년차 디자이너의 진심트렁크, 누드팬츠</strong></a></div>
							<div class="pr3_r3">
								<div class="pr3_r3_col1 fl"><span class="percentage">346% 달성</span></div>
								<div class="pr3_r3_col2 fl"></div>
							</div>
						</div>
					</div>
					<div class="ffh_frame2 fl">
						<div class="pr1"></div>
						<div class="pr2">
							<a href="#"><img src="resources/image/temp2.jpg" alt="" width="240px" height="200px"></a>
						</div>
						<div class="pr3">
							<div class="pr3_r1"><a href="#" class="pca">언더웨어</a></div>
							<div class="pr3_r2"><a href="#"><strong class="ptitle">[모아주문] 10년차 디자이너의 진심트렁크, 누드팬츠</strong></a></div>
							<div class="pr3_r3">
								<div class="pr3_r3_col1 fl"><span class="percentage">172% 달성</span></div>
								<div class="pr3_r3_col2 fl"></div>
							</div>
						</div>
					</div>
					<div class="ffh_frame2 fl" style="margin:0">
						<div class="pr1"></div>
						<div class="pr2">
							<a href="#"><img src="resources/image/temp2.jpg" alt="" width="240px" height="200px"></a>
						</div>
						<div class="pr3">
							<div class="pr3_r1"><a href="#" class="pca">언더웨어</a></div>
							<div class="pr3_r2"><a href="#"><strong class="ptitle">[모아주문] 10년차 디자이너의 진심트렁크, 누드팬츠</strong></a></div>
							<div class="pr3_r3">
								<div class="pr3_r3_col1 fl"><span class="percentage">111% 달성</span></div>
								<div class="pr3_r3_col2 fl"></div>
							</div>
						</div>
					</div>
					<div class="ffh_frame2 fl">
						<div class="pr1"></div>
						<div class="pr2">
							<a href="#"><img src="resources/image/temp2.jpg" alt="" width="240px" height="200px"></a>
						</div>
						<div class="pr3">
							<div class="pr3_r1"><a href="#" class="pca">언더웨어</a></div>
							<div class="pr3_r2"><a href="#"><strong class="ptitle">[모아주문] 10년차 디자이너의 진심트렁크, 누드팬츠</strong></a></div>
							<div class="pr3_r3">
								<div class="pr3_r3_col1 fl"><span class="percentage">340% 달성</span></div>
								<div class="pr3_r3_col2 fl"></div>
							</div>
						</div>
					</div>
					<div class="ffh_frame2 fl">
						<div class="pr1"></div>
						<div class="pr2">
							<a href="#"><img src="resources/image/temp2.jpg" alt="" width="240px" height="200px"></a>
						</div>
						<div class="pr3">
							<div class="pr3_r1"><a href="#" class="pca">언더웨어</a></div>
							<div class="pr3_r2"><a href="#"><strong class="ptitle">[모아주문] 10년차 디자이너의 진심트렁크, 누드팬츠</strong></a></div>
							<div class="pr3_r3">
								<div class="pr3_r3_col1 fl"><span class="percentage">100% 달성</span></div>
								<div class="pr3_r3_col2 fl"></div>
							</div>
						</div>
					</div>
					<div class="ffh_frame2 fl">
						<div class="pr1"></div>
						<div class="pr2">
							<a href="#"><img src="resources/image/temp2.jpg" alt="" width="240px" height="200px"></a>
						</div>
						<div class="pr3">
							<div class="pr3_r1"><a href="#" class="pca">언더웨어</a></div>
							<div class="pr3_r2"><a href="#"><strong class="ptitle">[모아주문] 10년차 디자이너의 진심트렁크, 누드팬츠</strong></a></div>
							<div class="pr3_r3">
								<div class="pr3_r3_col1 fl"><span class="percentage">170% 달성</span></div>
								<div class="pr3_r3_col2 fl"></div>
							</div>
						</div>
					</div>
					<div class="ffh_frame2 fl">
						<div class="pr1"></div>
						<div class="pr2">
							<a href="#"><img src="resources/image/temp2.jpg" alt="" width="240px" height="200px"></a>
						</div>
						<div class="pr3">
							<div class="pr3_r1"><a href="#" class="pca">언더웨어</a></div>
							<div class="pr3_r2"><a href="#"><strong class="ptitle">[모아주문] 10년차 디자이너의 진심트렁크, 누드팬츠</strong></a></div>
							<div class="pr3_r3">
								<div class="pr3_r3_col1 fl"><span class="percentage">5521% 달성</span></div>
								<div class="pr3_r3_col2 fl"></div>
							</div>
						</div>
					</div>
					<div class="ffh_frame2 fl" style="margin:0;">
						<div class="pr1"></div>
						<div class="pr2">
							<a href="#"><img src="resources/image/temp2.jpg" alt="" width="240px" height="200px"></a>
						</div>
						<div class="pr3">
							<div class="pr3_r1"><a href="#" class="pca">언더웨어</a></div>
							<div class="pr3_r2"><a href="#"><strong class="ptitle">[모아주문] 10년차 디자이너의 진심트렁크, 누드팬츠</strong></a></div>
							<div class="pr3_r3">
								<div class="pr3_r3_col1 fl"><span class="percentage">123% 달성</span></div>
								<div class="pr3_r3_col2 fl"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="ffh_frame1 fl">
				<div class="ffh_frame1_top fl">
					<div class="ffh_frame1_top_col1 fl">
						<h2 class="title_text" style="margin-top: 40px;">⏱ 마감임박 프로젝트 ⏱</h2>
					</div>
					<div class="ffh_frame1_top_col2 fl">
						<div class="ffh_frame1_top_col2_row1"></div>
						<div class="ffh_frame1_top_col2_row2">
							<div class="ffh_frame1_top_col2_row2_left fl more_left_text"><%-- 여백 --%></div>
							<div class="ffh_frame1_top_col2_row2_right fl"><a href="<%= contextPath %>/deadline.pr"><button type="button" class="more_btn" style="background-color:white; margin-top: 15px;">더보기</button></a></div>
						</div>
					</div>
				</div>
				<div class="ffh_frame1_body fl">
					<div class="ffh_frame2 fl">
						<div class="pr1"></div>
						<div class="pr2">
							<a href="#"><img src="resources/image/temp2.jpg" alt="" width="240px" height="200px"></a>
						</div>
						<div class="pr3">
							<div class="pr3_r1"><a href="#" class="pca">언더웨어</a></div>
							<div class="pr3_r2"><a href="#"><strong class="ptitle">[모아주문] 10년차 디자이너의 진심트렁크, 누드팬츠</strong></a></div>
							<div class="pr3_r3">
								<div class="pr3_r3_col1 fl"><span class="percentage">466% 달성</span></div>
								<div class="pr3_r3_col2 fl"></div>
							</div>
						</div>
					</div>
					<div class="ffh_frame2 fl">
						<div class="pr1"></div>
						<div class="pr2">
							<a href="#"><img src="resources/image/temp2.jpg" alt="" width="240px" height="200px"></a>
						</div>
						<div class="pr3">
							<div class="pr3_r1"><a href="#" class="pca">언더웨어</a></div>
							<div class="pr3_r2"><a href="#"><strong class="ptitle">[모아주문] 10년차 디자이너의 진심트렁크, 누드팬츠</strong></a></div>
							<div class="pr3_r3">
								<div class="pr3_r3_col1 fl"><span class="percentage">777% 달성</span></div>
								<div class="pr3_r3_col2 fl"></div>
							</div>
						</div>
					</div>
					<div class="ffh_frame2 fl">
						<div class="pr1"></div>
						<div class="pr2">
							<a href="#"><img src="resources/image/temp2.jpg" alt="" width="240px" height="200px"></a>
						</div>
						<div class="pr3">
							<div class="pr3_r1"><a href="#" class="pca">언더웨어</a></div>
							<div class="pr3_r2"><a href="#"><strong class="ptitle">[모아주문] 10년차 디자이너의 진심트렁크, 누드팬츠</strong></a></div>
							<div class="pr3_r3">
								<div class="pr3_r3_col1 fl"><span class="percentage">570% 달성</span></div>
								<div class="pr3_r3_col2 fl"></div>
							</div>
						</div>
					</div>
					<div class="ffh_frame2 fl">
						<div class="pr1"></div>
						<div class="pr2">
							<a href="#"><img src="resources/image/temp2.jpg" alt="" width="240px" height="200px"></a>
						</div>
						<div class="pr3">
							<div class="pr3_r1"><a href="#" class="pca">언더웨어</a></div>
							<div class="pr3_r2"><a href="#"><strong class="ptitle">[모아주문] 10년차 디자이너의 진심트렁크, 누드팬츠</strong></a></div>
							<div class="pr3_r3">
								<div class="pr3_r3_col1 fl"><span class="percentage">101% 달성</span></div>
								<div class="pr3_r3_col2 fl"></div>
							</div>
						</div>
					</div>
					<div class="ffh_frame2 fl" style="margin:0;">
						<div class="pr1"></div>
						<div class="pr2">
							<a href="#"><img src="resources/image/temp2.jpg" alt="" width="240px" height="200px"></a>
						</div>
						<div class="pr3">
							<div class="pr3_r1"><a href="#" class="pca">언더웨어</a></div>
							<div class="pr3_r2"><a href="#"><strong class="ptitle">[모아주문] 10년차 디자이너의 진심트렁크, 누드팬츠</strong></a></div>
							<div class="pr3_r3">
								<div class="pr3_r3_col1 fl"><span class="percentage">196% 달성</span></div>
								<div class="pr3_r3_col2 fl"></div>
							</div>
						</div>
					</div>
					<div class="ffh_frame2 fl">
						<div class="pr1"></div>
						<div class="pr2">
							<a href="#"><img src="resources/image/temp2.jpg" alt="" width="240px" height="200px"></a>
						</div>
						<div class="pr3">
							<div class="pr3_r1"><a href="#" class="pca">언더웨어</a></div>
							<div class="pr3_r2"><a href="#"><strong class="ptitle">[모아주문] 10년차 디자이너의 진심트렁크, 누드팬츠</strong></a></div>
							<div class="pr3_r3">
								<div class="pr3_r3_col1 fl"><span class="percentage">2500% 달성</span></div>
								<div class="pr3_r3_col2 fl"></div>
							</div>
						</div>
					</div>
					<div class="ffh_frame2 fl">
						<div class="pr1"></div>
						<div class="pr2">
							<a href="#"><img src="resources/image/temp2.jpg" alt="" width="240px" height="200px"></a>
						</div>
						<div class="pr3">
							<div class="pr3_r1"><a href="#" class="pca">언더웨어</a></div>
							<div class="pr3_r2"><a href="#"><strong class="ptitle">[모아주문] 10년차 디자이너의 진심트렁크, 누드팬츠</strong></a></div>
							<div class="pr3_r3">
								<div class="pr3_r3_col1 fl"><span class="percentage">170% 달성</span></div>
								<div class="pr3_r3_col2 fl"></div>
							</div>
						</div>
					</div>
					<div class="ffh_frame2 fl">
						<div class="pr1"></div>
						<div class="pr2">
							<a href="#"><img src="resources/image/temp2.jpg" alt="" width="240px" height="200px"></a>
						</div>
						<div class="pr3">
							<div class="pr3_r1"><a href="#" class="pca">언더웨어</a></div>
							<div class="pr3_r2"><a href="#"><strong class="ptitle">[모아주문] 10년차 디자이너의 진심트렁크, 누드팬츠</strong></a></div>
							<div class="pr3_r3">
								<div class="pr3_r3_col1 fl"><span class="percentage">3333% 달성</span></div>
								<div class="pr3_r3_col2 fl"></div>
							</div>
						</div>
					</div>
					<div class="ffh_frame2 fl">
						<div class="pr1"></div>
						<div class="pr2">
							<a href="#"><img src="resources/image/temp2.jpg" alt="" width="240px" height="200px"></a>
						</div>
						<div class="pr3">
							<div class="pr3_r1"><a href="#" class="pca">언더웨어</a></div>
							<div class="pr3_r2"><a href="#"><strong class="ptitle">[모아주문] 10년차 디자이너의 진심트렁크, 누드팬츠</strong></a></div>
							<div class="pr3_r3">
								<div class="pr3_r3_col1 fl"><span class="percentage">190% 달성</span></div>
								<div class="pr3_r3_col2 fl"></div>
							</div>
						</div>
					</div>
					<div class="ffh_frame2 fl" style="margin:0;">
						<div class="pr1"></div>
						<div class="pr2">
							<a href="#"><img src="resources/image/temp2.jpg" alt="" width="250px" height="200px"></a>
						</div>
						<div class="pr3">
							<div class="pr3_r1"><a href="#" class="pca">언더웨어</a></div>
							<div class="pr3_r2"><a href="#"><strong class="ptitle">[모아주문] 10년차 디자이너의 진심트렁크, 누드팬츠</strong></a></div>
							<div class="pr3_r3">
								<div class="pr3_r3_col1 fl"><span class="percentage">200% 달성</span></div>
								<div class="pr3_r3_col2 fl"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<br><br><br>
		<div class="ffh_selfAdv" style="border: 1px solid red;">
			광고
			<br>
			광고ㅂㅈㄷㅈㅂㄷㅈㅂㄷㅈㅂㄷㅂㅈㄷ
			<br>
			광고
			<br>
			광고
			<br>
			광고
			<br>
			광고
			<br>
			광고
			<br>
			광고
			<br>
			광고
			<br>
			광고
			<br>
		</div>
	</div>
	
	<%@ include file="views/common/footer.jsp" %>
</body>
</html>