package com.kh.semi1st.admin.helpCenter.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.semi1st.helpCenter.model.service.AnnouncementService;

/**
 * Servlet implementation class AdminUpdateAnnouncementCenterController
 */
@WebServlet("/admUpdateAnnouncement.hp")
public class AdminUpdateAnnouncementCenterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminUpdateAnnouncementCenterController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int type = Integer.parseInt(request.getParameter("actionType"));
		int result = 0;
		int aNo = Integer.parseInt(request.getParameter("aNo"));
		
		if(type == 0) {
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			result = new AnnouncementService().updateAnnouncement(aNo, title, content);
		}else {
			result = new AnnouncementService().deleteAnnouncement(aNo);
		}
		
		if(result > 0 && type == 0) {
			request.setAttribute("alertMsg", "성공적으로 수정되었습니다.");
		}else if(result > 0 && type == 1) {
			request.setAttribute("alertMsg", "성공적으로 삭제되었습니다.");
		}
		response.sendRedirect(request.getContextPath() + "/admAnnouncement.hp?cpage=1");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
