package com.kh.semi1st.member.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.semi1st.common.model.vo.PageInfo;
import com.kh.semi1st.member.model.service.MemberService;
import com.kh.semi1st.member.model.vo.Member;
import com.kh.semi1st.member.model.vo.Seller;

/**
 * Servlet implementation class MemberSelectFundingProjectListController
 */
@WebServlet("/fundingProject.me")
public class MemberSelectFundingProjectListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberSelectFundingProjectListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int listCount;   // (현) 총 게시글 개수
		int currentPage; // (현) 페이지
		int pageLimit;   // 페이징바의 페이지 최대 수
		int boardLimit;  // 한 페이지 내 보여질 게시글 최대 수
		
		int maxPage;     // 가장 마지막 페이지 (총 페이지 수)
		int startPage;   // 페이징바의 시작 수
		int endPage;	 // 페이징바의 끝 수
		
		int userNo = ((Member)(request.getSession().getAttribute("loginUser"))).getUserNo();
		listCount = new MemberService().selectMemberMyFundingListCount(userNo);
		currentPage = Integer.parseInt(request.getParameter("cpage"));
		pageLimit = 5;
		boardLimit = 10;
		
		maxPage = (int)Math.ceil((double)listCount / boardLimit);
		startPage = ((currentPage - 1) / pageLimit) * pageLimit + 1;
		endPage = startPage + pageLimit - 1;
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		PageInfo pi = new PageInfo(listCount, currentPage, pageLimit, boardLimit, maxPage, startPage, endPage);
		ArrayList<Seller> list = new MemberService().selectMemberMyFundingList(pi, userNo); 
		
		request.setAttribute("pi", pi);
		request.setAttribute("list", list);
		
		request.getRequestDispatcher("views/member/memberFundingProjectList.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
