package com.kh.semi1st.admin;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.semi1st.member.model.service.MemberService;
import com.kh.semi1st.member.model.vo.Member;
import com.kh.semi1st.project.model.service.ProjectService;

/**
 * Servlet implementation class AdminIndexController
 */
@WebServlet("/admin")
public class AdminIndexController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminIndexController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
	    Member loginUser = (Member) session.getAttribute("loginUser");
		
	    if(loginUser != null && loginUser.getUserId().equals("admin")) {
	    	int mCount = new MemberService().selectMemberListCount();
	    	int aCount = new ProjectService().selectProjectAllListCount();
	    	int pCount = new ProjectService().selectProjectListCount();
	    	int nCount = new ProjectService().selectProjectUpdateListCount();
	    	int fMoney = new ProjectService().selectTotalProjectFunding();
	    	
	    	ArrayList<Member> bList = new MemberService().selectBestBuyerList();
	    	ArrayList<Member> sList = new MemberService().selectBestSellerList();
	    	
	    	request.setAttribute("mCount", mCount);
	    	request.setAttribute("aCount", aCount);
	    	request.setAttribute("pCount", pCount);
	    	request.setAttribute("nCount", nCount);
	    	request.setAttribute("fMoney", fMoney);
	    	
	    	request.setAttribute("bList", bList);
	    	request.setAttribute("sList", sList);
	    	
	    	request.getRequestDispatcher("views/admin/adminIndex.jsp").forward(request, response);
	    }else {
	    	request.getRequestDispatcher("views/admin/errorPage404.jsp").forward(request, response);
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
