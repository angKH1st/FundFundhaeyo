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
 * Servlet implementation class MemberUpdatePwdController
 */
@WebServlet("/updatePwd.me")
public class MemberUpdatePwdController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberUpdatePwdController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int userNo = ((Member)request.getSession().getAttribute("loginUser")).getUserNo();
		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");
		String updatePwd = request.getParameter("updatePwd");
		
		System.out.println(userNo); // 안탐
		System.out.println(userId); // 안탐
		
		Member updateMem = new MemberService().updatePwdMember(userNo, userId, userPwd, updatePwd);
		HttpSession session = request.getSession();
		if(updateMem == null) { // 실패
			session.setAttribute("alertMsg", "비밀번호 변경에 실패했습니다!");
		}else { // 성공
			session.setAttribute("alertMsg", "성공적으로 비밀번호가 변경되었습니다.");
			session.setAttribute("loginUser", updateMem);
		}
		
		response.sendRedirect(request.getContextPath() + "/moveToUpdate.me");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
