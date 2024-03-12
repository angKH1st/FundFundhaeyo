package com.kh.semi1st.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.semi1st.member.model.service.MemberService;
import com.kh.semi1st.member.model.vo.Attachment;
import com.kh.semi1st.member.model.vo.Member;

/**
 * Servlet implementation class MemberInsertController
 */
@WebServlet("/insert.me")
public class MemberInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String userId = (String)request.getParameter("userId");
		String userPwd = (String)request.getParameter("userPwd");
		String userName = (String)request.getParameter("userName");
		String userSsn = (String)request.getParameter("userSsn");
		String nickname = (String)request.getParameter("nickname");
		String phone = (String)request.getParameter("phone");
		String email = (String)request.getParameter("emailHead") + "@" + (String)request.getParameter("emailBody");
		String address = (String)request.getParameter("address");
		String marketing = (String)request.getParameter("marketing");
		
		Member m = new Member(userId, userPwd, userName, userSsn, nickname, phone, email, address, marketing);
		
		Attachment at = new Attachment();
		at.setAttachmentOriginName("basicUserProfile.png");
		at.setAttachmentUpdateName("2024022209000081110.png");
		at.setAttachmentPath("resources/member_upfiles/");
		at.setAttachmentLevel(1);
		
		int result = new MemberService().insertMember(m, at);
		
		if(result > 0) {
			HttpSession session = request.getSession();
			session.setAttribute("alertMsg", "성공적으로 회원가입이 되었습니다.");
			response.sendRedirect(request.getContextPath());
		}else {
			// 에러 TBU
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
