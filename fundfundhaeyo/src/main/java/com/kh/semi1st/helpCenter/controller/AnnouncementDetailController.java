package com.kh.semi1st.helpCenter.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.semi1st.company.model.service.AnnouncementService;
import com.kh.semi1st.company.model.vo.Announcement;

/**
 * Servlet implementation class AnnouncementDetailController
 */
@WebServlet("/announcementDetail.hp")
public class AnnouncementDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AnnouncementDetailController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int announcementNo = Integer.parseInt(request.getParameter("aNo"));
		
		int result = new AnnouncementService().increaseCount(announcementNo);
		
		if(result > 0) {
			Announcement a = new AnnouncementService().selectAnnouncement(announcementNo);
			Announcement before = new AnnouncementService().selectAnnouncementBefore(announcementNo);
			Announcement after = new AnnouncementService().selectAnnouncementAfter(announcementNo);
			int count = new AnnouncementService().selectAnnouncementListCount();
			
			request.setAttribute("a", a);
			request.setAttribute("before", before);
			request.setAttribute("after", after);
			request.setAttribute("count", count);
			request.getRequestDispatcher("views/helpCenter/announcementDetail.jsp").forward(request, response);
		}else {
			// 에러페이지
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
