package com.kh.semi1st.project.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.semi1st.member.model.vo.Attachment;
import com.kh.semi1st.project.model.service.ProjectService;
import com.kh.semi1st.project.model.vo.Project;

/**
 * Servlet implementation class MoveToProjectOrderFormController
 */
@WebServlet("/moveToOrderForm.pr")
public class MoveToProjectOrderFormController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MoveToProjectOrderFormController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int pno = Integer.parseInt(request.getParameter("pno"));
		
		ProjectService ps = new ProjectService();
		
		Project p = ps.selectProject(pno);
		ArrayList<Attachment> list = ps.selectAttachmentList(pno);
		
		request.setAttribute("p", p);
		request.setAttribute("list", list);
		
		request.getRequestDispatcher("views/project/projectOrderForm.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
