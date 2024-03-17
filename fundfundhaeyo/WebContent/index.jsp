<%@page import="java.time.LocalDate"%>
<%@page import="java.util.Random"%>
<%@page import="com.kh.semi1st.member.model.service.MemberService"%>
<%@page import="com.kh.semi1st.project.model.vo.Project"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
   SimpleDateFormat formatter = new SimpleDateFormat("yyyy.MM.dd HH:mm");
   String dateString = formatter.format(new Date());
   
   ArrayList<Project> newList = (ArrayList<Project>)request.getAttribute("newList");
   ArrayList<Project> randomList = (ArrayList<Project>)request.getAttribute("randomList");
   ArrayList<Project> deadlineList = (ArrayList<Project>)request.getAttribute("deadlineList");
   ArrayList<Project> rankList = (ArrayList<Project>)request.getAttribute("rankList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뻔뻔해요</title>
<link rel="stylesheet" href="resources/css/index.css">
</head>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
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
						<% ArrayList<Project> copyList = new ArrayList<>(randomList); %>
						<% for(int i = 0; i < 3; i++){ %>
							<% int randomIndex = new Random().nextInt(copyList.size()); %>
							<% Project selectedProject = copyList.get(randomIndex); %>
							<% copyList.remove(randomIndex); %>
						<div class="carousel-item <%= (i == 0) ? "active" : "" %>" style="height: 300px; overflow: hidden;" onclick="detail('<%= selectedProject.getProjectNo() %>');">
				        	<img src="<%= selectedProject.getProjectTitleImg() %>" style="width: 100%; height: 100%; object-fit: cover;">
					        <div class="carousel-caption">
					            <h3><%= selectedProject.getProjectTitle() %></h3>
					            <p><%= selectedProject.getProjectOverview() %></p>
					        </div>   
					    </div>
						<% } %>
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
								<div class="ffh_content_top_left1_col2_row2_col2 fl"><a href="<%= contextPath %>/all.pr"><button type="button" class="more_btn" style="background-color:white; margin-top: 15px; padding-right: 8px;">더보기</button></a></div>
							</div>
						</div>
					</div>
					<div class="ffh_content_top_left2">
						<% for(int i = randomList.size() - 8; i < randomList.size(); i++) { %>
                		<div class="ffh_content_top_left2_all fl">
	                        <div class="ffh_content_top_left2_p1_row1 pr1"></div>
	                        <div class="ffh_content_top_left2_p1_row2 prHoverContainer pr2">
	                        	<a href="<%= contextPath %>/detail.pr?pno=<%= randomList.get(i).getProjectNo() %>"><img class="prHover br10" src="<%= randomList.get(i).getProjectTitleImg() %>" width="200" height="180"></a>
	                        	<% if(loginUser != null) { %>
	                        		<span class="likes" style="position: absolute; bottom: 10px; right: 12px; z-index: 10;" data-projectNo="<%= randomList.get(i).getProjectNo() %>"><i class="fa-solid fa-heart fa-xl"></i></span>
	                        	<% } %>
	                        </div>
	                        <div class="ffh_content_top_left2_p1_row3 pr3">
	                        	<div class="pr3_r1"><a href="<%= contextPath %>/category.pr?cno=<%= randomList.get(i).getProjectCategoryNo() %>" class="pca"><%= randomList.get(i).getProjectCategoryName() %></a></div>
	                            <div class="pr3_r2"><a href="<%= contextPath %>/detail.pr?pno=<%= randomList.get(i).getProjectNo() %>"><strong class="ptitle"><%= randomList.get(i).getProjectTitle() %></strong></a></div>
	                            <div class="pr3_r3">
	                            	<div class="pr3_r3_col1 fl"><span class="percentage"><%= randomList.get(i).getProjectFunding() %>% 달성</span></div>
	                            	<div class="pr3_r3_col2 fl"></div>
	                            </div>
	                        </div>
                    	</div>
            			<% } %>
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
						<% for(int i = 0; i < 5; i++) { %>
						<div class="ffh_content_top_right_row2_rk fl">
							<div class="rk_r1"><%--여백--%></div>
							<div class="rk_r2">
								<div class="rk_col1 prHoverContainer fl">
									<a href="<%= contextPath %>/detail.pr?pno=<%= rankList.get(i).getProjectNo() %>"><img class="br10" src="<%= rankList.get(i).getProjectTitleImg() %>" width="100px" height="85px"></a>
									<% if(loginUser != null) { %>
		                        		<span class="likes" style="position: absolute; bottom: 4px; right: 15px; z-index: 10;" data-projectNo="<%= rankList.get(i).getProjectNo() %>"><i class="fa-solid fa-heart fa-lg"></i></span>
		                        	<% } %>
								</div>
								<div class="rk_col2 fl">
									<div class="rk_col2_row1 fl">
										<div class="rk_col2_row1_col1 fl"><a href="<%= contextPath %>/category.pr?cno=<%= rankList.get(i).getProjectCategoryNo() %>" class="pca"><%= rankList.get(i).getProjectCategoryName() %></a></div>
										<div class="rk_col2_row1_col2 fl" style="text-align: right"><a href="<%= contextPath %>/detail.pr?pno=<%= rankList.get(i).getProjectNo() %>"><span class="percentage"><%= rankList.get(i).getProjectFunding() %>% 달성</span></a></div>
									</div>
									<div class="rk_col2_row2 fl">
										<div class="rk_col2_row2_row1"><a href="#"><strong class="ptitle"><%= rankList.get(i).getProjectTitle() %></strong></a></div>
									</div>
								</div>
							</div>
						</div>
						<% } %>
					</div>
					<div class="ffh_content_top_right_row3">
						<a href="<%= contextPath %>/rank.pr"><button class="shadow brlg" style="width: 100%; height: 50%; border-radius: 20px; background-color: white; padding: 10px 30px;">인기 프로젝트 더보기</button></a>
					</div>
				</div>
			</div>
			<div class="ffh_frame1_form fl">
				<div class="ffh_frame1_top fl">
					<div class="ffh_frame1_top_col1 fl">
						<h2 class="title_text" style="margin-top: 40px;">✨ 신규 프로젝트 ✨</h2>
					</div>
					<div class="ffh_frame1_top_col2 fl">
						<div class="ffh_frame1_top_col2_row1"></div>
						<div class="ffh_frame1_top_col2_row2">
							<div class="ffh_frame1_top_col2_row2_left fl more_left_text"><%-- 여백 --%></div>
							<div class="ffh_frame1_top_col2_row2_right fl"><a href="<%= contextPath %>/new.pr"><button type="button" class="more_btn" style="background-color:white; margin-top: 15px; padding-right: 10px;">더보기</button></a></div>
						</div>
					</div>
				</div>
				<div class="ffh_frame1_body fl">
					<% for(int i = newList.size()-1; i >= newList.size()-10; i--) { %>
					<div class="ffh_frame2 fl">
                    	<div class="pr1"></div>
                        <div class="pr2 prHoverContainer">
                        	<a href="<%= contextPath %>/detail.pr?pno=<%= newList.get(i).getProjectNo() %>"><img class="prHover br10" src="<%= newList.get(i).getProjectTitleImg() %>" width="248" height="200"></a>
                        	<% if(loginUser != null) { %>
                        		<span class="likes" style="position: absolute; bottom: 10px; right: 10px; z-index: 10;" data-projectNo="<%= newList.get(i).getProjectNo() %>"><i class="fa-solid fa-heart fa-xl"></i></span>
                        	<% } %>
                        </div>
                        <div class="pr3">
	                        <div class="pr3_r1"><a href="<%= contextPath %>/category.pr?cno=<%= newList.get(i).getProjectCategoryNo() %>" class="pca"><%= newList.get(i).getProjectCategoryName() %></a></div>
	                        <div class="pr3_r2"><a href="<%= contextPath %>/detail.pr?pno=<%= newList.get(i).getProjectNo() %>"><strong class="ptitle"><%= newList.get(i).getProjectTitle() %></strong></a></div>
	                        <div class="pr3_r3">
	                        	<div class="pr3_r3_col1 fl"><span class="percentage"><%= newList.get(i).getProjectFunding() %>% 달성</span></div>
	                        	<div class="pr3_r3_col2 fl"></div>
                            </div>
                        </div>
                    </div>
            		<% } %>
				</div>
			</div>
			<div class="ffh_frame2_form fl">
				<div class="ffh_frame2_top fl">
					<div class="ffh_frame2_top_col1 fl">
						<h2 class="title_text" style="margin-top: 40px;">⏱ 마감임박 프로젝트 ⏱</h2>
					</div>
					<div class="ffh_frame2_top_col2 fl">
						<div class="ffh_frame2_top_col2_row1"></div>
						<div class="ffh_frame2_top_col2_row2">
							<div class="ffh_frame2_top_col2_row2_left fl more_left_text"><%-- 여백 --%></div>
							<div class="ffh_frame2_top_col2_row2_right fl"><a href="<%= contextPath %>/deadline.pr"><button type="button" class="more_btn" style="background-color:white; margin-top: 15px; padding-right: 10px;">더보기</button></a></div>
						</div>
					</div>
				</div>
				<div class="ffh_frame2_body fl">
					<% for(int i = deadlineList.size() - 1; i >= deadlineList.size()-10; i--) { %>
					<div class="ffh_frame2 fl">
						<div class="pr1"></div>
						<div class="pr2 prHoverContainer">
							<a href="<%= contextPath %>/detail.pr?pno=<%= deadlineList.get(i).getProjectNo() %>"><img class="prHover br10" src="<%= deadlineList.get(i).getProjectTitleImg() %>" width="248px" height="200px"></a>
							<% if(loginUser != null) { %>
                        		<span class="likes" style="position: absolute; bottom: 10px; right: 10px; z-index: 10;" data-projectNo="<%= deadlineList.get(i).getProjectNo() %>"><i class="fa-solid fa-heart fa-xl"></i></span>
                        	<% } %>
						</div>
						<div class="pr3">
							<div class="pr3_r1"><a href="<%= contextPath %>/category.pr?cno=<%= deadlineList.get(i).getProjectCategoryNo() %>" class="pca"><%= deadlineList.get(i).getProjectCategoryName() %></a></div>
							<div class="pr3_r2"><a href="<%= contextPath %>/detail.pr?pno=<%= deadlineList.get(i).getProjectNo() %>"><strong class="ptitle"><%= deadlineList.get(i).getProjectTitle() %></strong></a></div>
							<div class="pr3_r3">
								<div class="pr3_r3_col1 fl"><span class="percentage"><%= deadlineList.get(i).getProjectFunding() %>% 달성</span></div>
								<div class="pr3_r3_col2 fl"></div>
							</div>
						</div>
					</div>
					<% } %>
				</div>
			</div>
		</div>
		<br><br><br>
		<div class="ffh_selfAdv">
			<a href="<%= contextPath %>/moveToEnrollIntroduction.pr"><img src="resources/image/adv.png" width=1300 height=250></a>
		</div>
	</div>
	
	<%@ include file="views/common/footer.jsp" %>
	
	<script src="resources/js/index.js"></script>
</body>
</html>