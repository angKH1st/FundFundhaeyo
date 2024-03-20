package com.kh.semi1st.project.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;

import com.google.gson.Gson;
import com.kh.semi1st.project.model.service.ProjectService;
import com.kh.semi1st.project.model.vo.Project;

/**
 * Servlet implementation class SelectRecentClickProjectController
 */
@WebServlet("/selectRecent.pr")
public class SelectRecentClickProjectController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectRecentClickProjectController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] projectIds = request.getParameterValues("projectIds");
		ArrayList<Project> list = new ArrayList<Project>();
		Project p = null;
		
	    if(projectIds != null){
	        for(String projectId : projectIds){
	        	p = new ProjectService().selectRecentProject(Integer.parseInt(projectId));
	        	list.add(p);
	        }
	    }
	    
	    if(list != null) {
	    	request.setAttribute("list", list);
	    	JSONArray jArr = new JSONArray();
			
			response.setContentType("application/json; charset=UTF-8");
			new Gson().toJson(list, response.getWriter());	
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
