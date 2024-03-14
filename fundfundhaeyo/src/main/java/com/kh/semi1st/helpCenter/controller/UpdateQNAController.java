package com.kh.semi1st.helpCenter.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.kh.semi1st.common.MyFileRenamePolicy;
import com.kh.semi1st.helpCenter.model.service.QNAService;
import com.kh.semi1st.helpCenter.model.vo.Attachment;
import com.kh.semi1st.helpCenter.model.vo.QNA;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class UpdateQNAController
 */
@WebServlet("/updateQna.hp")
public class UpdateQNAController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateQNAController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		if(ServletFileUpload.isMultipartContent(request)) {
			int maxSize = 10 * 1024 * 1024;
			
			String savePath = request.getSession().getServletContext().getRealPath("/resources/helpCenter_upfiles/");

			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
			
			int qNo = Integer.parseInt(multiRequest.getParameter("qNo"));
			String qnaTitle = multiRequest.getParameter("title");
			String qnaContent = multiRequest.getParameter("content");
			int qnaWriter = Integer.parseInt(multiRequest.getParameter("userNo"));
			
			QNA q = new QNA();
			q.setQnaNo(qNo);
			q.setQnaTitle(qnaTitle);
			q.setQnaContent(qnaContent);
			q.setQnaWriter(String.valueOf(qnaWriter));
			
			Attachment at = null;
			
			if(multiRequest.getOriginalFileName("upfile") != null) {
				at = new Attachment();
				at.setAttachmentOriginName(multiRequest.getOriginalFileName("upfile"));
				at.setAttachmentUpdateName(multiRequest.getFilesystemName("upfile"));
				at.setAttachmentPath("resources/helpCenter_upfiles/");
				
				if(multiRequest.getParameter("originFileNo") != null) {
					at.setAttachmentNo(Integer.parseInt(multiRequest.getParameter("originFileNo")));
				}else {
					at.setAttachmentQnaNo(qNo);
				}
			}
			
			int result = new QNAService().updateQNA(q, at);

			if(result > 0) {
				request.getSession().setAttribute("alertMsg", "성공적으로 수정되었습니다.");
				response.sendRedirect(request.getContextPath() + "/qnaDetail.hp?qNo=" + qNo);
			}else {
				/*
				request.setAttribute("errorMsg", "실패");
				request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
				*/
			}
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
