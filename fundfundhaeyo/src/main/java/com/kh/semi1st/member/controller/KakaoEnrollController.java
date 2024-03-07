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
		
		
		// 셀렉트로 넘어가는 서비스 만들어서 아이디 있는지 체크하기.	
		int statusCount = new MemberService().loginKakao(userId);
		
		if(statusCount > 0) { // 1
			// 로그인
			// 1을 loginUser에 넣을 수 없으니 select문 만들어서 조회하기.
			
			Member m1 = new MemberService().selectKakao(m);
			
			
			if(m1 != null) {
				HttpSession session = request.getSession();
				session.setAttribute("loginUser", m1);
				
				response.sendRedirect(request.getContextPath());
			}else {
				HttpSession session = request.getSession();
				session.setAttribute("alerMsg", "회원가입에 실패했습니다.");
			}

		} else { // 0
			// 회원가입
			int result = new MemberService().enrollKakao(m);
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
