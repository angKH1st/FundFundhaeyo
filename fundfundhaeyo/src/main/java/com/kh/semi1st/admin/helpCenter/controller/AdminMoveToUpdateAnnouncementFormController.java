package com.kh.semi1st.admin.helpCenter.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.semi1st.helpCenter.model.service.AnnouncementService;
import com.kh.semi1st.helpCenter.model.vo.Announcement;

/**
 * Servlet implementation class AdminMoveToUpdateAnnouncementFormController
 */
@WebServlet("/admMoveToUpdateAnnouncementForm.hp")
public class AdminMoveToUpdateAnnouncementFormController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminMoveToUpdateAnnouncementFormController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int aNo = 0;
		if(request.getParameter("aNo") != null) {
			aNo = Integer.parseInt(request.getParameter("aNo"));
		}
		Announcement a = null;
		
		if(aNo != 0) {
			a = new AnnouncementService().selectAnnouncement(aNo);
		}
		
		if(a != null) {
			request.setAttribute("a", a);
		}
		request.getRequestDispatcher("views/admin/helpCenter/adminUpdateAnnouncementForm.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
