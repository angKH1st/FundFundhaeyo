package com.kh.semi1st.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.semi1st.member.model.vo.Member;

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
	    	request.getRequestDispatcher("views/admin/adminIndex.jsp").forward(request, response);
	    }else {
	    	// 로그인 정보가 없거나, 관리자가 아닌 경우 처리
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
