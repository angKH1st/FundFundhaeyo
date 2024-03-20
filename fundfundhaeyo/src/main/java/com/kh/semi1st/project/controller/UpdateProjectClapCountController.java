package com.kh.semi1st.project.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.kh.semi1st.project.model.service.ProjectService;

/**
 * Servlet implementation class UpdateProjectClapCountController
 */
@WebServlet("/updateClapCount.pr")
public class UpdateProjectClapCountController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateProjectClapCountController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int projectNo = Integer.parseInt(request.getParameter("projectNo"));
		int clap = new ProjectService().updateProjectClapCount(projectNo);
		
		if(clap > 0) {
			clap = new ProjectService().selectProjectClapCount(projectNo);
		}
		
		response.setContentType("application/json; charset=UTF-8");
        new Gson().toJson(clap, response.getWriter());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
