package com.kh.semi1st.admin.member.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.kh.semi1st.member.model.service.MemberService;
import com.kh.semi1st.member.model.vo.Member;

/**
 * Servlet implementation class AdminMemberSearchIdController
 */
@WebServlet("/admSearchId.me")
public class AdminMemberSearchIdController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminMemberSearchIdController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
String searchId = request.getParameter("searchId");
		
		Member m = new MemberService().memberSearchId(searchId);
		Member sm = new MemberService().selectMemberSellerList(m.getUserNo());
		Member bm = new MemberService().selectMemberBuyerList(m.getUserNo());
		
		HashMap<String, Object> members = new HashMap<>();
		members.put("m", m);
		members.put("sm", sm);
		members.put("bm", bm);
		
		response.setContentType("application/json; charset=utf-8");
		new Gson().toJson(members, response.getWriter());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
