package com.kh.semi1st.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.semi1st.member.model.service.MemberService;
import com.kh.semi1st.member.model.vo.Member;

/**
 * Servlet implementation class MyPageController
 */
@WebServlet("/mypage.me")
public class MemberMyPageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberMyPageController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int userNo = ((Member)request.getSession().getAttribute("loginUser")).getUserNo();
		
		MemberService ms = new MemberService();
		
		Member seller = ms.selectMemberSellerList(userNo);
		Member buyer = ms.selectMemberBuyerList(userNo);
		int likes = ms.selectMemberLikesProjectCount(userNo);
		
		request.setAttribute("seller", seller);
		request.setAttribute("buyer", buyer);
		request.setAttribute("likes", likes);
		
		request.getRequestDispatcher("views/member/memberMypage.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
