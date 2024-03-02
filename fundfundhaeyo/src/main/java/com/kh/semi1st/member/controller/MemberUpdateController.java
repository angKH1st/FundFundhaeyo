package com.kh.semi1st.member.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.kh.semi1st.common.MyFileRenamePolicy;
import com.kh.semi1st.member.model.service.MemberService;
import com.kh.semi1st.member.model.vo.Attachment;
import com.kh.semi1st.member.model.vo.Member;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class MemberUpdateController
 */
@WebServlet("/update.me")
public class MemberUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberUpdateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		if(ServletFileUpload.isMultipartContent(request)) {
			// 전송용량제한
			int maxSize = 10 * 1024 * 1024;
			
			// 저장시킬 폴더의 물리적인 경로
			String savePath = request.getSession().getServletContext().getRealPath("/resources/member_upfiles/");
			
			// 전달된 파일 업로드
			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
			
			// Member Update
			Member m = new Member();
			m.setUserNo(Integer.parseInt(multiRequest.getParameter("userNo")));
			m.setUserPhone(multiRequest.getParameter("userPhone"));
			m.setUserEmail(multiRequest.getParameter("userEmail"));
			m.setUserAddress(multiRequest.getParameter("userAddress"));
			m.setUserMarketing(multiRequest.getParameter("userMarketing"));
			m.setUserProfile(multiRequest.getParameter("userProfile"));
			m.setUserImg(multiRequest.getParameter("userImg"));
			
			Attachment at = null;
			
			String key = "file";
			if(multiRequest.getOriginalFileName(key) != null) {
				// 첨파가 존재할 경우
				at = new Attachment();
				at.setAttachmentOriginName(multiRequest.getOriginalFileName(key));
				at.setAttachmentUpdateName(multiRequest.getFilesystemName(key));
				at.setAttachmentPath("resources/member_upfiles/");
				at.setAttachmentLevel(1);
				
				if(multiRequest.getParameter("attachmentOriginNo") != null) {
					at.setAttachmentNo(Integer.parseInt(multiRequest.getParameter("attachmentOriginNo")));
				}else {
					at.setAttachmentUserNo(m.getUserNo());
				}
				
				at.setAttachmentNo(Integer.parseInt(multiRequest.getParameter("attachmentOriginNo")));
			}
			
			int result = new MemberService().updateMember(m, at);
			
			if(result > 0) {  
				Member updateMem = new MemberService().selectMember(m.getUserNo(), at);
				
				HttpSession session = request.getSession();
				session.setAttribute("loginUser", updateMem);
				
				request.getSession().setAttribute("alertMsg", "변경이 완료되었습니다.");
				response.sendRedirect(request.getContextPath() + "/moveToUpdate.me");
			}else {
				request.getSession().setAttribute("errorMsg", "변경에 실패하였습니다.");
				//request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
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
