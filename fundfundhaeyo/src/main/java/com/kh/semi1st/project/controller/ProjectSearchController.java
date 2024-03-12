package com.kh.semi1st.project.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.semi1st.member.model.service.MemberService;
import com.kh.semi1st.project.model.service.ProjectService;
import com.kh.semi1st.project.model.vo.Project;

/**
 * Servlet implementation class ProjectSearchController
 */
@WebServlet("/searchPage.pr")
public class ProjectSearchController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProjectSearchController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String keyword = request.getParameter("keyword");
			
		
		ArrayList<Project> list = new ProjectService().searchPageList(keyword);
		
		
		request.setAttribute("list", list);
		request.getRequestDispatcher("views/project/projectSearchView.jsp").forward(request, response);

		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
