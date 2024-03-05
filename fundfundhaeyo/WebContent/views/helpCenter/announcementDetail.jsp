<%@page import="com.kh.semi1st.company.model.vo.Announcement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Announcement a = (Announcement)request.getAttribute("a");
	Announcement before = (Announcement)request.getAttribute("before");
	Announcement after = (Announcement)request.getAttribute("after");
	int count = (int)request.getAttribute("count");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.outer{
		width: 700px;
		height: 700px;
		margin: auto;
		margin-top: 50px;
	}
	
	.btn:hover{
		cursor: pointer;
		background-color: lightgray;
	}

	#list{
		color: black;
		text-decoration: none;
	}
	#list:hover{color: lightgray;}
</style>
</head>
<body>
	<%@ include file="../common/header.jsp" %>
	
	<div class="introduction_outer font_outer">
	<div class="blank_top"><%-- 여백 --%></div>
	
	<div class="outer" align="center">
        
        <br>
        <h2 align="center">공지사항</h2>
        <br>
		<hr>

		<div class="tb">
        <table id="detail-area" align="left" style="width: 700px;">
            <tr>
                <th style="font-size: 26px;" colspan="4"><%= a.getAnnouncementTitle() %></th>
            </tr>
            <tr>
                <td colspan="4" align="right"><%= a.getAnnouncementCreateDate() %></td>
            </tr>
			<tr>
				<td colspan="4" align="right"><%= a.getAnnouncementWriter() %></td>
			</tr>
            <tr>
                <td colspan="4" style="padding-top: 15px;">
                    <p style="height: 300px;"><%= a.getAnnouncementContent() %></p>
                </td>
            </tr>
			<tr>
				<td colspan="4" align="right">조회수 : <%= a.getAnnouncementCount() %></td>
			</tr>
            <tr>
				<td style="width: 70px; padding-top: 15px;">이전글</td>
				<% if(before != null) { %>
				<td colspan="3" align="left" class="btn" onclick="before();"><%= before.getAnnouncementTitle() %></td>
				<% }else { %>
				<td colspan="3" align="left">이전글이 없습니다.</td>
				<% } %>
			</tr>
			<tr>
				<td>다음글</td>
				<% if(after != null && after.getAnnouncementTitle() != null) { %> 
				<td colspan="2" align="left" class="btn" onclick="after();"><%= after.getAnnouncementTitle() %></td>
				<% }else { %>
				<td colspan="2" align="left">다음글이 없습니다.</td>
				<% } %>
				<td align="right"><a id="list" href="<%= request.getContextPath() %>/announcement.hp?cpage=1">목록가기</a></td>
			</tr>
        </table>
		<br><br><br>
		</div>

        <br>
		
		
		<script>
			
		function before(){
			<% if(before != null) { %>
			location.href = "<%= request.getContextPath() %>/announcementDetail.hp?aNo=<%= before.getAnnouncementNo() %>"; 
			<% } %>
		}
		
		function after(){
			<% if (after != null) { %>
            	location.href = "<%= request.getContextPath() %>/announcementDetail.hp?aNo=<%= after.getAnnouncementNo() %>";
       		<% } %>
		}
		</script>
		
        
		</div>
	<div class="blank_bottom"><%-- 여백 --%></div>
    </div>
    
	<%@ include file="../common/footer.jsp" %>
</body>
</html>