package com.kh.semi1st.admin.helpCenter.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.semi1st.helpCenter.model.service.QNAService;

/**
 * Servlet implementation class AdminUpdateQnaCenterController
 */
@WebServlet("/admUpdateQna.hp")
public class AdminUpdateQnaCenterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminUpdateQnaCenterController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int actionType = Integer.parseInt(request.getParameter("actionType"));
		int qNo = Integer.parseInt(request.getParameter("qNo"));
		String type = "";
		int result = 0;
		String msg = "";
		
		switch(actionType) {
		case 0 : // 제출 
			type = request.getParameter("type");
			String answer = request.getParameter("answer");
			if(type.equals("update")) {
				result = new QNAService().updateReply(qNo, answer);
			}else if(type.equals("insert")) {
				result = new QNAService().insertReply(qNo, answer);
			}
			msg = "성공적으로 등록되었습니다.";
			break;
		case 1 : // 게시글 삭제
			result = new QNAService().deleteForcedQNA(qNo);
			msg = "성공적으로 삭제되었습니다.";
			break;
		case 2 : // 답변 삭제
			result = new QNAService().deleteReply(qNo);
			msg = "성공적으로 삭제되었습니다.";
			break;
		}
		
		if(result > 0) {
			request.setAttribute("alertMsg", msg);
		}
		response.sendRedirect(request.getContextPath() + "/admQna.hp?cpage=1");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
