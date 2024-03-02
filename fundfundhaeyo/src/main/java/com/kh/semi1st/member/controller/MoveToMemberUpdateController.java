package com.kh.semi1st.member.controller;

import java.io.IOException;
import java.util.ArrayList;

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
 * Servlet implementation class MoveToMyUpdateController
 */
@WebServlet("/moveToUpdate.me")
public class MoveToMemberUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MoveToMemberUpdateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		Member loginUser = (Member)session.getAttribute("loginUser");

		if(loginUser != null) {
		    int userNo = loginUser.getUserNo();
		    Attachment at = MemberService.selectMemberAttachment(userNo);
		    request.setAttribute("at", at);
		    request.getRequestDispatcher("views/member/memberUpdateForm.jsp").forward(request, response);
		} else {
		    // 로그인 페이지로 리다이렉트하거나 오류 메시지를 출력하는 등의 처리
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
