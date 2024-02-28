package com.kh.semi1st.member.model.service;

import static com.kh.semi1st.common.JDBCTemplate.*;
import java.sql.Connection;
import java.util.ArrayList;

import com.kh.semi1st.member.model.dao.MemberDao;
import com.kh.semi1st.member.model.vo.Member;

public class MemberService {

	/** 로그인
	 * @param userId
	 * @param userPwd
	 * @return
	 */
	public Member loginMember(String userId, String userPwd) {
		Connection conn = getConnection();
		
		Member m = new MemberDao().loginMember(conn, userId, userPwd);
		
		close(conn);
		
		return m; 
	}

	public int insertMember(Member m) {
		Connection conn = getConnection();
		
		int result = new MemberDao().insertMember(conn, m);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
	
	public int idCheck(String checkId) {
		Connection conn = getConnection();
		
		int count = new MemberDao().idCheck(conn, checkId);

		close(conn);
		
		return count;
	}
	
	public String searchIdMember(String name, String email){
		Connection conn = getConnection();
		String userId = new MemberDao().searchIdMember(conn, name, email);
		
		close(conn);
		return userId;
	}
	
	public String searchPwMember(String userId, String name, String email) {
		Connection conn = getConnection();
		String userPw = new MemberDao().searchPwMember(conn, userId, name, email);
		
		close(conn);
		return userPw;
	}
	
}
