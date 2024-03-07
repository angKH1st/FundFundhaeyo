package com.kh.semi1st.admin.project;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.kh.semi1st.member.model.service.MemberService;
import com.kh.semi1st.member.model.vo.Attachment;
import com.kh.semi1st.member.model.vo.Member;
import com.kh.semi1st.project.model.service.ProjectService;
import com.kh.semi1st.project.model.vo.Project;

/**
 * Servlet implementation class AdminProjectSearchNoController
 */
@WebServlet("/admSearchNo.pr")
public class AdminProjectSearchNoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminProjectSearchNoController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int searchNo = Integer.parseInt(request.getParameter("searchNo"));
		
		Project p = new ProjectService().projectSearchNo(searchNo); 
		
		if(p != null) {
			ArrayList<Attachment> list = new ProjectService().selectAttachmentList(searchNo);
			Member seller = new MemberService().memberSearchNo(Integer.parseInt(p.getProjectSeller()));
			Member sm = new MemberService().selectMemberSellerList(Integer.parseInt(p.getProjectSeller()));
			Member bm = new MemberService().selectMemberBuyerList(Integer.parseInt(p.getProjectSeller()));
			
			HashMap<String, Object> project = new HashMap<>();
			project.put("p", p);
			project.put("list", list);
			project.put("seller", seller);
			project.put("sm", sm);
			project.put("bm", bm);
			
			response.setContentType("application/json; charset=utf-8");
			new Gson().toJson(project, response.getWriter());
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
