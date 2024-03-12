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
import com.kh.semi1st.project.model.vo.Chat;

/**
 * Servlet implementation class ProjectChatListController
 */
@WebServlet("/chatList.pr")
public class ProjectChatListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProjectChatListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int projectNo = Integer.parseInt(request.getParameter("projectNo"));
		
		ArrayList<Chat> list = new ProjectService().selectChatList(projectNo);
		
		JSONArray jArr = new JSONArray();
		
		response.setContentType("application/json; charset=UTF-8");
		new Gson().toJson(list, response.getWriter());	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
