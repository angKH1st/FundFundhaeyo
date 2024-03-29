package com.kh.semi1st.project.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.semi1st.project.model.service.ProjectService;
import com.kh.semi1st.project.model.vo.Project;

/**
 * Servlet implementation class ProjectSortNewController
 */
@WebServlet("/new.pr")
public class ProjectSortNewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProjectSortNewController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int option = 0;
		
		if(request.getParameter("option") != null) {
			option = Integer.parseInt(request.getParameter("option"));
		}

		ArrayList<Project> newList = null;
		
		if (option == 0) {
			newList = new ProjectService().selectThumbnailList();
		} else {
			newList = new ProjectService().selectThumbnailListByOption(option);
		}
		
	    request.setAttribute("newList", newList);
	    
		request.setAttribute("currentPage", "new");
		request.getRequestDispatcher("views/project/projectSortNew.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
