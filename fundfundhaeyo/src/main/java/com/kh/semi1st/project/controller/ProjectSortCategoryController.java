package com.kh.semi1st.project.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.semi1st.project.model.service.ProjectService;
import com.kh.semi1st.project.model.vo.Project;

/**
 * Servlet implementation class ProjectSortCategoryController
 */
@WebServlet("/category.pr")
public class ProjectSortCategoryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProjectSortCategoryController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int option = 0;
		int cno = 0;
		
		if(request.getParameter("option") != null) {
			option = Integer.parseInt(request.getParameter("option"));
		}
		
		if(request.getParameter("cno") != null) {
			cno = Integer.parseInt(request.getParameter("cno"));
		}

		ArrayList<Project> categoryList = null;
		
		if (option == 0) {
			if(cno == 0) {
				categoryList = new ProjectService().selectThumbnailList();
			}else {
				categoryList = new ProjectService().selectCategoryThumbnailList(cno);
			}
		} else {
			if(cno == 0) {
				categoryList = new ProjectService().selectThumbnailListByOption(option);
			}else {
				categoryList = new ProjectService().selectCategoryThumbnailListByOption(option, cno);
			}
		}
		
	    request.setAttribute("categoryList", categoryList);
	    
		request.setAttribute("currentPage", "category");
		request.getRequestDispatcher("views/project/projectSortCategory.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
