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
 * Servlet implementation class ProjectDetailViewController
 */
@WebServlet("/detail.pr")
public class ProjectDetailViewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProjectDetailViewController() {
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
		
		if(p != null) {
			int buyer = ps.selectProjectBuyer(pno);
			int liker = ps.selectProjectLiker(pno);
			ArrayList<Attachment> list = ps.selectAttachmentList(pno);
			
			request.setAttribute("p", p);
			request.setAttribute("buyer", buyer);
			request.setAttribute("liker", liker);
			request.setAttribute("list", list);
			request.getRequestDispatcher("views/project/projectDetailView.jsp").forward(request, response);
		}else {
			
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
