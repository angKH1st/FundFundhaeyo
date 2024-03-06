package com.kh.semi1st.project.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.semi1st.project.model.service.ProjectService;

/**
 * Servlet implementation class MoveToEnrollProjectFinalFormController
 */
@WebServlet("/moveToEnrollFinal.pr")
public class MoveToEnrollProjectFinalFormController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MoveToEnrollProjectFinalFormController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String pjCno = request.getParameter("category");
	    String pjTitle = request.getParameter("pjTitle");
	    String pjOverview = request.getParameter("pjOverview");
	    String pjTag = request.getParameter("pjTag");
	    String pjPrice = request.getParameter("pjPrice");
	    String pjContent = request.getParameter("pjContent");
	    
	    int pjCategory = new ProjectService().selectCategoryNo(pjCno);
	    
	    request.setAttribute("pjCategory", pjCategory);
	    request.setAttribute("pjTitle", pjTitle);
	    request.setAttribute("pjOverview", pjOverview);
	    request.setAttribute("pjTag", pjTag);
	    request.setAttribute("pjPrice", pjPrice);
	    request.setAttribute("pjContent", pjContent);
		
		request.getRequestDispatcher("views/project/projectEnrollFinalForm.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
