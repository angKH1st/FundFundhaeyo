<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Locale"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="java.sql.Date"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.time.temporal.ChronoUnit"%>
<%@page import="com.kh.semi1st.member.model.vo.Attachment"%>
<%@page import="com.kh.semi1st.project.model.vo.Project"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Project p = (Project)request.getAttribute("p");
	ArrayList<Attachment> list = (ArrayList<Attachment>)request.getAttribute("list");
	Member sellerCount = (Member)request.getAttribute("sellerCount");
	Member seller = (Member)request.getAttribute("seller");
	
	// 현재 날짜
	LocalDate now = LocalDate.now();
	
	// 원화 처리
	NumberFormat nf = NumberFormat.getInstance(Locale.KOREA);
	
	// 날짜 양식
	SimpleDateFormat df = new SimpleDateFormat("yyyy.MM.dd");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뻔뻔해요</title>
<link rel="stylesheet" href="resources/css/project/projectOrderForm.css">
</head>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<body>
	<%@ include file="../common/header.jsp" %>
	
	<div class="project_order_outer font_outer">
		<div class="blank_top"><%-- 여백 --%></div>
		<div class="project_order_main">
			<div class="project_order_top">
				<div class="project_order_top_col1 fl"><img width=100% height=100% src="<%= contextPath %>/<%= list.get(0).getAttachmentPath() + list.get(0).getAttachmentUpdateName() %>"></div>
				<div class="project_order_top_col2 fl">
					<div class="project_order_top_col2_row1"><%= p.getProjectCategoryName() %></div>
					<div class="project_order_top_col2_row2"><%= p.getProjectTitle() %></div>
					<div class="project_order_top_col2_row3">
						<div class="project_order_top_col2_row3_price fl"><span><%= nf.format(p.getProjectSellerFunding()) %></span>원</div>
						<div class="project_order_top_col2_row3_percentage fl"><span class="percentage"><%= p.getProjectFunding() %>%</span></div>
						<div class="project_order_top_col2_row3_dday fl"><span><%= (long)(ChronoUnit.DAYS.between(now, ((Date)p.getProjectEnd()).toLocalDate())) %></span>일 남음</div>
						<div class="project_order_top_col2_row3_blank fl"><%-- 여백 --%></div>
					</div>
				</div>
				<div class="project_order_top_col3 fl"><%-- 여백 --%></div>
			</div>
			<div class="project_order_content">
				<div class="project_order_content_col1 fl">
					<div class="project_order_content_col1_row1">
						<div class="project_order_content_col1_row1_title">선물 정보</div>
						<div class="project_order_content_col1_row1_content brlg br5 pd15">
							<div class="project_order_content_gift_row1">
								<div class="project_order_content_gift_row1_col1 fl">선물 옵션</div>
								<div class="project_order_content_gift_row1_col2 fl">
									<input type="radio" id="1" name="group1" value="<%= (int)(p.getProjectPrice() * 0.1) %>" checked>
								    <label for="option1">옵션1. 상품 1개</label>
								    <input type="radio" id="2" name="group1" value="<%= (int)(p.getProjectPrice() * 0.5) %>">
								    <label for="option2">옵션2. 상품 3개</label>
								    <input type="radio" id="3" name="group1" value="<%= p.getProjectPrice() %>">
								    <label for="option3">옵션3. 상품 5개 + 선물 포장</label>
								</div>
							</div>
							<div class="project_order_content_gift_row2">
								<div class="project_order_content_gift_row2_col1 fl">선물 금액</div>
								<div id="giftPrice" class="project_order_content_gift_row2_col2 fl"><%= nf.format((int)(p.getProjectPrice() * 0.1)) %> 원</div>
							</div>
						</div>
					</div>
					<div class="project_order_content_col1_row2"><%-- 여백 --%></div>
					<div class="project_order_content_col1_row3">
						<div class="project_order_content_col1_row3_title">후원자 정보</div>
						<div class="project_order_content_col1_row3_content brlg br5 pd15">
							<div class="project_order_info_name">
								<div class="project_order_info_name_title fl">이름</div>
								<div class="project_order_info_name_input fl"><input type="text" name="userName" value="<%= loginUser.getUserName() %>" readonly></div>
							</div>
							<div class="project_order_info_ssn">
								<div class="project_order_info_ssn_title fl">주민등록번호</div>
								<div class="project_order_info_ssn_input fl"><input type="text" name="userSsn" value="<%= loginUser.getUserSsn() %>" readonly></div>
							</div>
							<div class="project_order_info_phone">
								<div class="project_order_info_phone_title fl">연락처</div>
								<div class="project_order_info_phone_input fl"><input type="text" name="userPhone" value="<%= loginUser.getUserPhone() %>" readonly></div>
							</div>
							<div class="project_order_info_email">
								<div class="project_order_info_email_title fl">이메일</div>
								<div class="project_order_info_email_input fl"><input type="text" name="userEmail" value="<%= loginUser.getUserEmail() %>" readonly></div>
							</div>
							<div class="project_order_info_address">
								<div class="project_order_info_address_title fl">주소</div>
								<div class="project_order_info_address_input fl"><input type="text" name="userAddress" value="<%= loginUser.getUserAddress() %>" readonly></div>
							</div>
							<div class="project_order_info_update">개인정보가 변경되었나요? <a href="<%= contextPath %>/moveToUpdate.me">변경하러 가기</a></div>
						</div>
					</div>
					<div class="project_order_content_col1_row4"><%-- 여백 --%></div>
					<div class="project_order_content_col1_row5">
						<div class="project_order_content_col1_row5_title">결제수단</div>
						<div class="project_order_content_col1_row5_content brlg br5">
							<input type="radio" id="pay1" name="group2" value="naverpay" checked>
						    <label for="pay1">네이버페이</label>
						    <input type="radio" id="pay2" name="group2" value="tosspay">
						    <label for="pay2">토스페이</label>
						    <input type="radio" id="pay3" name="group2" value="kakaopay">
						    <label for="pay3">카카오페이</label>
						</div>
					</div>
				</div>
				<div class="project_order_content_col2 fl"><%-- 여백 --%></div>
				<div class="project_order_content_col3 fl">
					<div class="project_order_content_col3_row1 brlg br5 pd15 centerXY">
						<div class="project_order_content_col3_row1_title fl">최종 후원 금액</div>
						<div class="project_order_content_col3_row1_blank fl"></div>
						<div id="totalPrice" class="project_order_content_col3_row1_price fl"><%= nf.format((int)(p.getProjectPrice() * 0.1)) %> 원</div>
					</div>
					<div class="project_order_content_col3_row2">
						<p>프로젝트 성공 시, 결제는 <span class="percentage"><%= p.getProjectPaymentBuyer() %></span> 까지 가능합니다. 프로젝트가 무산되거나 중단된 경우, 결제는 자동으로 취소됩니다.</p>
					</div>
					<div class="project_order_content_col3_row3">
						<div class="project_order_content_col3_row3_title"><input type="checkbox"> 후원 유의사항 확인</div>
						<div class="project_order_content_col3_row3_content">
							후원은 구매가 아닌 창의적인 계획에 자금을 지원하는 일입니다. <br>
							뻔뻔해요에서의 후원은 아직 실현되지 않은 프로젝트가 실현될 수 있도록 제작비를 후원하는 과정으로, 기존의 상품 또는 용역을 거래의 대상으로 하는 매매와는 차이가 있습니다. 따라서 전자상거래법상 청약철회 등의 규정이 적용되지 않습니다. <br><br>
							
							프로젝트는 계획과 달리 진행될 수 있습니다. <br>
							예상을 뛰어넘는 멋진 결과가 나올 수 있지만 진행 과정에서 계획이 지연, 변경되거나 무산될 수도 있습니다. 본 프로젝트를 완수할 책임과 권리는 창작자에게 있습니다.
						</div>
					</div>
					<input type="hidden" id="sno" value=<%= p.getProjectSeller() %>>
					<input type="hidden" id="pno" value=<%= p.getProjectNo() %>>
					<input type="hidden" id="uno" value=<%= loginUser.getUserNo() %>>
					<div class="project_order_content_col3_row4"><button type="button" id="payButton" class="br5" disabled>후원하기</button></div>
					<script src="https://cdn.iamport.kr/v1/iamport.js"></script>
					<script src="resources/js/project/pay.js"></script>
				</div>
			</div>
	    </div>
	    <div class="blank_bottom"><%-- 여백 --%></div>
    </div>
	
	<%@ include file="../common/footer.jsp" %>
	
	<script src="resources/js/project/projectOrderForm.js"></script>
</body>
</html>