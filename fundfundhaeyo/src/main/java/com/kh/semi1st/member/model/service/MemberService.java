package com.kh.semi1st.member.model.service;

import static com.kh.semi1st.common.JDBCTemplate.*;
import java.sql.Connection;
import java.util.ArrayList;

import com.kh.semi1st.common.model.vo.PageInfo;
import com.kh.semi1st.member.model.dao.MemberDao;
import com.kh.semi1st.member.model.vo.Attachment;
import com.kh.semi1st.member.model.vo.Member;
import com.kh.semi1st.project.model.vo.Project;

public class MemberService {

	/** 아이디와 비밀번호를 입력받아 로그인을 처리하는 메소드
	 *  @param userId : 로그인하고자하는 회원의 id
	 *  @param userPwd : 로그인하고자하는 회원의 pwd
	 *  @return m : 로그인 세션에 담기는 객체 m
	 */
	public Member loginMember(String userId, String userPwd) {
		Connection conn = getConnection();
		
		Member m = new MemberDao().loginMember(conn, userId, userPwd);
		
		close(conn);
		
		return m; 
	}

	/** 회원가입을 위해 입력한 정보들로 멤버 객체를 받아 가입을 처리하는 메소드
	 *  @param m : 회원 테이블에 추가되는 객체 m
	 *  @param at : 회원의 기본 프로필 이미지로 추가되는 첨부파일 at
	 *  @return result1 * result2 : 처리 결과 (1 = 성공 / 0 = 실패) 
	 */
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
	
	/** 아이디를 입력받아 중복확인을 처리하는 메소드
	 *  @param checkId
	 *  @return count : 처리 결과 (1 = 중복 / 0 = 중복없음) 
	 */
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

	/** 회원의 차단/차단해제를 처리하는 메소드
	 *  @param userId : 차단/차단해제 하고자 하는 회원의 id
	 *  @param userStatus : 해당 회원의 차단/차단해제 상태값
	 *  @return result : 처리 결과 (1 = 성공 / 0 = 실패) 
	 */
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

	
	/** 회원의 Id를 검색해주는 메소드 
	 *  @param name : 검색하고자 하는 회원의 이름
	 *  @param email : 검색하고자 하는 회원의 이메일
	 *  @return userId : 검색된 회원의 id
	 */
	public String searchIdMember(String name, String email){
		Connection conn = getConnection();
		
		String userId = new MemberDao().searchIdMember(conn, name, email);
		
		close(conn);
		
		return userId;
	}
	
	/** 회원의 pw를 검색해주는 메소드
	 *  @param userId : 검색하고자 하는 회원의 id
	 *  @param name : 검색하고자 하는 회원의 이름
	 *  @param email : 검색하고자 하는 회원의 이메일
	 *  @return userPw : 검색된 회원의 pw
	 */
	public String searchPwMember(String userId, String name, String email) {
		Connection conn = getConnection();
		
		String userPw = new MemberDao().searchPwMember(conn, userId, name, email);
		
		close(conn);
		
		return userPw;
	}

	/** 회원탈퇴를 처리해주는 메소드
	 *  @param userId : 탈퇴하고자 하는 회원의 id
	 *  @param userPwd : 탈퇴하고자 하는 회원의 pwd
	 *  @return result : 처리 결과 (1 = 성공 / 0 = 실패) 
	 */
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

	/** 회원정보수정을 처리해주는 메소드
	 *  @param m : 수정하고자 하는 회원 객체 m
	 *  @param at : 수정하고자 하는 회원 사진 at
	 *  @return result1 * result2 : 처리 결과 (1 = 성공 / 0 = 실패) 
	 */
	public int updateMember(Member m, Attachment at) {
		Connection conn = getConnection();
		int result1 = new MemberDao().updateMember(conn, m);
		
		int result2 = 1;
		if(at != null) {
			if(at.getAttachmentNo() != 0) {
				result2 = new MemberDao().updateMemberAttachment(conn, m, at);
			}
		}
		
		if(result1 > 0 && result2 > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result1 * result2;
	}
	
	/** 회원정보수정 전, 기존의 프로필 사진을 조회해주는 메소드
	 *  @param userNo : 조회하고자 하는 회원의 no
	 *  @return at : 조회된 회원의 기존 프로필 사진
	 */
	public static Attachment selectMemberAttachment(int userNo) {
		Connection conn = getConnection();
		
		Attachment at = new MemberDao().selectMemberAttachment(conn, userNo);
		
		close(conn);
		
		return at;
	}
	
	/** 회원정보수정 이후, 갱신된 회원 정보를 조회해주는 메소드
	 *  @param userNo : 조회하고자 하는 회원의 no
	 *  @param at : 조회하고자 하는 회원의 프로필 사진 at
	 *  @return updateMem : 갱신된 회원 객체
	 */
	public Member selectMember(int userNo, Attachment at) {
		Connection conn = getConnection();
		
		Member updateMem = new MemberDao().selectMember(conn, userNo);
		
		close(conn);
		
		return updateMem;
	}
	
	/** 회원의 찜/찜해제 상태를 조회해주는 메소드
	 *  @param userNo : 조회하고자 하는 회원의 no
	 *  @param projectNo : 조회하고자 하는 프로젝트의 no
	 *  @return result : 조회 결과 (true = 찜 / false = 찜 해제)
	 */
	public boolean checkMemberLikes(int userNo, int projectNo) {
		Connection conn = getConnection();
		
		boolean result = new MemberDao().checkMemberLikes(conn, userNo, projectNo);
		
		close(conn);
		
		return result;
	}

	/** 회원의 찜/찜해제를 처리해주는 메소드
	 *  @param userNo : 처리하고자 하는 회원의 no
	 *  @param projectNo : 처리하고자 하는 프로젝트의 no
	 *  @param likes : 현 상태값
	 *  @return result : 처리 결과 (1 = 성공 / 0 = 실패) 
	 */
	public int updateMemberLikes(int userNo, int projectNo, boolean likes) {
		Connection conn = getConnection();
		
		int result = 0;
		
		if(likes == true) {
			result = new MemberDao().deleteMemberLikes(conn, userNo, projectNo, likes);
		}else{
			result = new MemberDao().insertMemberLikes(conn, userNo, projectNo, likes);
		}
		
		close(conn);
		
		return result;
	}
	
	/** 찜등록된 프로젝트를 조회해주는 메소드
	 *  @param pi : 페이징 처리 객체
	 *  @return list : 찜목록 리스트
	 */
	public ArrayList<Project> selectProjectLikesList(PageInfo pi, int userNo) {
		Connection conn = getConnection();
		
		ArrayList<Project> list = new MemberDao().selectProjectLikesList(conn, pi, userNo);
		
		close(conn);
		
		return list;
	}

	/** 회원의 창작자 정보를 조회해주는 메소드
	 *  @param userNo : 조회하고자 하는 회원의 번호
	 *  @return m : 창작자 정보
	 */
	public Member selectMemberSellerList(int userNo) {
		Connection conn = getConnection();
		
		Member m = new MemberDao().selectMemberSellerList(conn, userNo);
		
		close(conn);
		
		return m;
	}

	/** 회원의 후원자 정보를 조회해주는 메소드
	 *  @param userNo : 조회하고자 하는 회원의 번호
	 *  @return m : 후원자 정보
	 */
	public Member selectMemberBuyerList(int userNo) {
		Connection conn = getConnection();
		
		Member m = new MemberDao().selectMemberBuyerList(conn, userNo);
		
		close(conn);
		
		return m;
	}
	
	public int loginKakao(String userId) {
		Connection conn = getConnection();
		
		int statusCount = new MemberDao().loginKakao(conn, userId);
		
		close(conn);
		
		return statusCount;
		
	}
	
	public Member selectKakao(Member m) {
		Connection conn = getConnection();
		
		Member m1 = new MemberDao().selectKakao(conn, m);
		
		// System.out.println(m); 있음
		close(conn);
		
		return m1;
		
		
	}
	

	public int enrollKakao(Member m) {
		Connection conn = getConnection();
		
		int result= new MemberDao().enrollKakao(conn, m);
		
		
		//System.out.println(m);
		
		if(result > 0 ) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
	
	
	
}
