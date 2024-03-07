package com.kh.semi1st.project.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.kh.semi1st.common.MyFileRenamePolicy;
import com.kh.semi1st.member.model.vo.Attachment;
import com.kh.semi1st.member.model.vo.Member;
import com.kh.semi1st.project.model.service.ProjectService;
import com.kh.semi1st.project.model.vo.Project;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class ProjectInsertController
 */
@WebServlet("/enroll.pr")
public class ProjectInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProjectInsertController() {
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
			
			String savePath = request.getSession().getServletContext().getRealPath("/resources/project_upfiles/");
			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());

			Project p = new Project();
			
			p.setProjectSeller(Integer.toString(((Member)request.getSession().getAttribute("loginUser")).getUserNo()));
			p.setProjectCategoryNo(Integer.parseInt(multiRequest.getParameter("pjCategory")));
			p.setProjectTitle(multiRequest.getParameter("pjTitle"));
			p.setProjectOverview(multiRequest.getParameter("pjOverview"));
			p.setProjectTag(multiRequest.getParameter("pjTag"));
			p.setProjectPrice(Integer.parseInt(multiRequest.getParameter("pjPrice")));
			p.setProjectContent(multiRequest.getParameter("pjContent"));
			try {
				p.setProjectStart(new java.sql.Date(new SimpleDateFormat("yyyy.MM.dd").parse(multiRequest.getParameter("pjStart")).getTime()));
				p.setProjectEnd(new java.sql.Date(new SimpleDateFormat("yyyy.MM.dd").parse(multiRequest.getParameter("pjEnd")).getTime()));
				p.setProjectPaymentBuyer(new java.sql.Date(new SimpleDateFormat("yyyy.MM.dd").parse(multiRequest.getParameter("pjPaymentBuyer")).getTime()));
				p.setProjectPaymentSeller(new java.sql.Date(new SimpleDateFormat("yyyy.MM.dd").parse(multiRequest.getParameter("pjPaymentSeller")).getTime()));
			} catch (ParseException e) {
				e.printStackTrace();
			}
			ArrayList<Attachment> list = new ArrayList<Attachment>();
			
			for(int i = 1; i <= 4; i++) {
				String key = "file" + i;
				if(multiRequest.getOriginalFileName(key) != null) {
					Attachment at = new Attachment();
					at.setAttachmentOriginName(multiRequest.getOriginalFileName(key));
					at.setAttachmentUpdateName(multiRequest.getFilesystemName(key));
					at.setAttachmentPath("resources/project_upfiles/");
					
					if(i == 1) {
						at.setAttachmentLevel(1);
					}else {
						at.setAttachmentLevel(2);
					}
					list.add(at);
				}
			}
			
			int result = new ProjectService().insertProject(p, list);
			
			if(result > 0) {  
				request.getSession().setAttribute("alertMsg", "등록신청이 성공적으로 완료되었습니다. 추후 결과가 안내될 예정입니다.");
				response.sendRedirect(request.getContextPath());
			}else {
				request.getSession().setAttribute("errorMsg", "등록신청에 실패하였습니다.");
				// request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
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
