package com.kh.semi1st.admin.project;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.semi1st.project.model.service.ProjectService;

/**
 * Servlet implementation class AdminProjectBanAllowUpdateController
 */
@WebServlet("/admUpdateBanAllow.pr")
public class AdminProjectBanAllowUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminProjectBanAllowUpdateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int projectNo = Integer.parseInt(request.getParameter("projectNo"));
		String projectStatus = request.getParameter("projectStatus"); 
		String projectReason = null;
		int projectPrice = Integer.parseInt(request.getParameter("projectPrice"));
		
		if(request.getParameter("projectReason") != null) {
			projectReason = request.getParameter("projectReason");
		}
		
		int result = new ProjectService().updateProjectBanAllow(projectNo, projectStatus, projectReason, projectPrice);
		
		response.setContentType("text/html; charset=UTF-8");
		response.getWriter().print(result);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
