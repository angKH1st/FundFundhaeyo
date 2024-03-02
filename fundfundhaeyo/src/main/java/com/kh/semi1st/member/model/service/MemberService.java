package com.kh.semi1st.member.model.service;

import static com.kh.semi1st.common.JDBCTemplate.*;
import java.sql.Connection;
import java.util.ArrayList;

import com.kh.semi1st.common.model.vo.PageInfo;
import com.kh.semi1st.member.model.dao.MemberDao;
import com.kh.semi1st.member.model.vo.Attachment;
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

	public int insertMember(Member m, Attachment at) {
		Connection conn = getConnection();
		
		int result1 = new MemberDao().insertMember(conn, m);
		
		int result2 = new MemberDao().insertMemberAttachment(conn, m, at);
		
		if(result1 > 0 && result2 > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result1 * result2;
	}
	
	public int idCheck(String checkId) {
		Connection conn = getConnection();
		
		int count = new MemberDao().idCheck(conn, checkId);

		close(conn);
		
		return count;
	}

	/** 전체 회원 정보 조회
	 *  @return list : 전체 회원 정보가 담긴 list
	 */
	public ArrayList<Member> selectMemberList() {
		Connection conn = getConnection();
		
		ArrayList<Member> list = new MemberDao().selectMemberList(conn);
		
		close(conn);
		
		return list;
	}

	/** 전체 회원 숫자 조회
	 *  @return listCount : 전체 회원 숫자
	 */
	public int selectMemberListCount() {
		Connection conn = getConnection();
		
		int listCount = new MemberDao().selectMemberListCount(conn);
		
		close(conn);
		
		return listCount;
	}

	/** 회원 제한 조회
	 *  @param pi : 페이징 처리 객체
	 *  @return list : 회원 제한 list
	 */
	public ArrayList<Member> selectMemberList(PageInfo pi) {
		Connection conn = getConnection();
		
		ArrayList<Member> list = new MemberDao().selectMemberLimitList(conn, pi);
		
		close(conn);
		
		return list;
	}

	/** 회원 id로 검색
	 *  @param searchId : 조회하고자 하는 회원 id
	 *  @return m : 조회된 회원 객체 m
	 */
	public Member memberSearchId(String searchId) {
		Connection conn = getConnection();
		
		Member m = new MemberDao().memberSearchId(conn, searchId);
		
		close(conn);
		
		return m;
	}

	public int updateMemberBanAllow(String userId, String userStatus) {
		Connection conn = getConnection();
		
		int result = new MemberDao().updateMemberBanAllow(conn, userId, userStatus);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
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

	public int deleteMember(String userId, String userPwd) {
		Connection conn = getConnection();
		int result = new MemberDao().deleteMember(conn, userId, userPwd);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		return result;
	}

	public int updateMember(Member m, Attachment at) {
		Connection conn = getConnection();
		int result1 = new MemberDao().updateMember(conn, m);
		
		int result2 = 1;
		if(at != null) {// 새로운 첨파가 있을 경우
			if(at.getAttachmentNo() != 0) {
				result2 = new MemberDao().updateMemberAttachment(conn, m, at);
			}
		}
		
		// int result2 = new MemberDao().updateMemberAttachment(conn, m, at);
		
		if(result1 > 0 && result2 > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result1 * result2;
	}
	
	public Member selectMember(int userNo, Attachment at) {
		Connection conn = getConnection();
		
		Member updateMem = new MemberDao().selectMember(conn, userNo);
		
		close(conn);
		
		return updateMem;
	}

	public static Attachment selectMemberAttachment(int userNo) {
		Connection conn = getConnection();
		
		Attachment at = new MemberDao().selectMemberAttachment(conn, userNo);
		
		close(conn);
		
		return at;
	}

}
