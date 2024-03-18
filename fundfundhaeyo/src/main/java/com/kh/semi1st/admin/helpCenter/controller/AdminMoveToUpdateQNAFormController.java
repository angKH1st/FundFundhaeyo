package com.kh.semi1st.admin.helpCenter.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.semi1st.helpCenter.model.service.QNAService;
import com.kh.semi1st.helpCenter.model.vo.Attachment;
import com.kh.semi1st.helpCenter.model.vo.QNA;
import com.kh.semi1st.helpCenter.model.vo.Reply;

/**
 * Servlet implementation class AdminMoveToUpdateQNAFormController
 */
@WebServlet("/admMoveToUpdateQnaForm.hp")
public class AdminMoveToUpdateQNAFormController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminMoveToUpdateQNAFormController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int qNo = 0;
		if(request.getParameter("qNo") != null) {
			qNo = Integer.parseInt(request.getParameter("qNo"));
		}
		
		QNA q = null;
		Attachment at = null;
		Reply r = null;
		
		if(qNo != 0) {
			q = new QNAService().selectQNA(qNo);
			at = new QNAService().selectAttachment(qNo);
			r = new QNAService().selectQNAReply(qNo);
		}
		
		if(q != null) {
			request.setAttribute("q", q);
			request.setAttribute("at", at);
			request.setAttribute("r", r);
		}
		request.getRequestDispatcher("views/admin/helpCenter/adminUpdateQnaForm.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
