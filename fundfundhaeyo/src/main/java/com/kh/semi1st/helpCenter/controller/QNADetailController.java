package com.kh.semi1st.helpCenter.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.semi1st.helpCenter.model.service.QNAService;
import com.kh.semi1st.helpCenter.model.vo.QNA;
import com.kh.semi1st.helpCenter.model.vo.Reply;
import com.kh.semi1st.helpCenter.model.vo.Attachment;

/**
 * Servlet implementation class QNADetailController
 */
@WebServlet("/qnaDetail.hp")
public class QNADetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QNADetailController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int qNo = Integer.parseInt(request.getParameter("qNo"));
		
		QNA q = new QNAService().selectQNA(qNo);
		Attachment at = new QNAService().selectAttachment(qNo);
		
		if(q.getQnaAnswerStatus().equals("Y")) {
			Reply r = new QNAService().selectQNAReply(qNo);
			request.setAttribute("r", r);
		}
		
		request.setAttribute("q", q);
		request.setAttribute("at", at);

		request.getRequestDispatcher("views/helpCenter/qnaDetail.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
