package com.kh.semi1st.project.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.kh.semi1st.member.model.vo.Member;
import com.kh.semi1st.project.model.service.ProjectService;
import com.kh.semi1st.project.model.vo.Project;

/**
 * Servlet implementation class ProjectAllListController
 */
@WebServlet("/allList.pr")
public class ProjectAllListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProjectAllListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Project> newList = new ProjectService().selectThumbnailList();
		request.setAttribute("newList", newList);
		
		ArrayList<Project> deadlineList = new ArrayList<>(newList);
	    Collections.reverse(deadlineList);
	    request.setAttribute("deadlineList", deadlineList);
	    
	    ArrayList<Project> randomList = new ArrayList<>(newList);
	    Collections.shuffle(randomList);
	    request.setAttribute("randomList", randomList);
	    
	    ArrayList<Project> rankList = new ProjectService().selectRankThumbnailList();
	    request.setAttribute("rankList", rankList);
	    
		RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");
	    dispatcher.forward(request, response);
		/*
		response.setContentType("application/json; charset=utf-8");
		new Gson().toJson(list, response.getWriter());
		*/
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
