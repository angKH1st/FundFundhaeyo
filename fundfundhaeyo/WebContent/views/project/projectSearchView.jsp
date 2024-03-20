<%@page import="java.time.LocalDate"%>
<%@page import="com.kh.semi1st.project.model.vo.Project"%> <%@ page
language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%
	ArrayList<Project> list = (ArrayList<Project>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>뻔뻔해요</title>
<link rel="stylesheet" href="resources/css/project/projectSearchView.css" />
</head>
<link rel="icon" href="data:;base64,iVBORw0KGgo=" />
<body>
    <%@ include file="../common/header.jsp" %>

    <div class="project_search_view_outer font_outer">
      <div class="blank_top"><%-- 여백 --%></div>
      <div class="project_search_view_main" align="center">
        <table>
          <tbody class="tbody_main">
				<% if(list.size() == 0){ %>
					<div class="project_area_pr fl">
						<tr>
		                    <td colspan="2" style="text-align: center; border:none;">
		                        조회 결과가 없습니다.
		                    </td>
		                </tr>
					</div>
				<% }else{ %>
					<% for(int i = 0; i < list.size(); i++) { %>
					<div class="project_area_pr fl" style="margin: 0 6px;">
					<br>
						<div class="project_area_head prHoverContainer">
							<a href="<%= contextPath %>/detail.pr?pno=<%= list.get(i).getProjectNo() %>"><img class="prHover br10" src="<%= list.get(i).getProjectTitleImg() %>" width="245" height="180"></a>
						</div>
						<div class="project_area_body">
							<div class="project_area_body_row1">
								<a href="<%= contextPath %>/category.pr?cno=<%= list.get(i).getProjectCategoryNo() %>" class="pca"><%= list.get(i).getProjectCategoryName() %></a>
							</div>
							<div class="project_area_body_row2">
								<a href="<%= contextPath %>/detail.pr?pno=<%= list.get(i).getProjectNo() %>"><strong class="ptitle"><%= list.get(i).getProjectTitle() %></strong></a>
							</div>
							<div class="project_area_body_row3">
								<div class="project_area_body_row3_col1 fl">
									<span class="percentage"><%= list.get(i).getProjectFunding() %>% 달성</span>
								</div>
								<div class="project_area_body_row3_col2 fl"></div>
							</div>
							<div class="project_area_body_row4">
								<div class="progress-bar-pr">
									<div class="progressA" style="width: <%= (list.get(i).getProjectFunding() > 100 ? 100 : list.get(i).getProjectFunding()) %>%;"></div>
								</div>
							</div>
						</div>
					</div>
					<% } %>
				<% } %>
          </tbody>
        </table>
      </div>
    </div>

    <%@ include file="../common/footer.jsp" %>
</body>
</html>