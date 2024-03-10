package com.kh.semi1st.project.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.semi1st.member.model.vo.Member;
import com.kh.semi1st.project.model.service.ProjectService;
import com.kh.semi1st.project.model.vo.Chat;

/**
 * Servlet implementation class ProjectChatInsertController
 */
@WebServlet("/chatInsert.pr")
public class ProjectChatInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProjectChatInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String chatInput = request.getParameter("chatInput");
		int projectNo = Integer.parseInt(request.getParameter("projectNo"));
		int userNo = ((Member)(request.getSession().getAttribute("loginUser"))).getUserNo();
		
		Chat c = new Chat();
		c.setChatContent(chatInput);
		c.setChatProjectNo(projectNo);
		c.setChatWriter(String.valueOf(userNo));
		
		int result = new ProjectService().insertProjectChat(c);
		
		response.setContentType("text/html; charset=UTF-8");
		response.getWriter().print(result);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
