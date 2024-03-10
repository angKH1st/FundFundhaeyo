package com.kh.semi1st.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.semi1st.project.model.service.ProjectService;

/**
 * Servlet implementation class InsertMemberOrderController
 */
@WebServlet("/paySuccess.me")
public class InsertMemberOrderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertMemberOrderController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String ordId = request.getParameter("merchant_uid");
		int userNo = Integer.parseInt(request.getParameter("uno"));
		int pno = Integer.parseInt(request.getParameter("pno"));
		int sno = Integer.parseInt(request.getParameter("sno"));
		int amount = Integer.parseInt(request.getParameter("amount"));
		String optionAmount = request.getParameter("option");
		
		int result = 0;
		
		int resultOption = new ProjectService().selectProjectOption(pno, amount);
		
		if(resultOption == 1) {
			int resultB = new ProjectService().insertProjectBuyer(userNo, pno, amount);
			int resultS = new ProjectService().updateProjectSeller(sno, pno, amount);
			
			result = resultB * resultS;
		}
		
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
