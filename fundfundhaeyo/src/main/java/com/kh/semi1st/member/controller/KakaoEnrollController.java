package com.kh.semi1st.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.semi1st.member.model.service.MemberService;
import com.kh.semi1st.member.model.vo.Member;

/**
 * Servlet implementation class KakaoEnrollController
 */
@WebServlet("/enrollKakao.me")
public class KakaoEnrollController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public KakaoEnrollController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userId");
		String userName = request.getParameter("nickname");
		String userSsn = "카카오";
		String nickname = request.getParameter("nickname");
		String phone = "카카오 폰";
		String email = request.getParameter("email");
		String address = "카카오 주소";
		
		
		
		Member m = new Member(userId, userPwd, userName, userSsn, nickname, phone, email, address);
		
		int result = new MemberService().enrollKakao(m);


		if (result > 0) {	
			response.sendRedirect(request.getContextPath() + "/loginKakao.me");
		} else {
			response.sendRedirect(request.getContextPath() + "/moveToLogin.me");
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
