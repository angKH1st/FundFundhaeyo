package com.kh.semi1st.member.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import javax.naming.spi.DirStateFactory.Result;

import static com.kh.semi1st.common.JDBCTemplate.*;

import com.kh.semi1st.common.model.vo.PageInfo;
import com.kh.semi1st.member.model.vo.Attachment;
import com.kh.semi1st.member.model.vo.Member;
import com.kh.semi1st.project.model.vo.Project;

public class MemberDao {
	
	private Properties prop = new Properties();
	
	public MemberDao() {
		String filePath = MemberDao.class.getResource("/db/sql/tb_member-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(filePath));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	/** 아이디와 비밀번호를 입력받아 로그인을 처리하는 메소드
	 *  @param conn
	 *  @param userId : 로그인하고자하는 회원의 id
	 *  @param userPwd : 로그인하고자하는 회원의 pwd
	 *  @return m : 로그인 세션에 담기는 객체 m
	 */
	public Member loginMember(Connection conn, String userId, String userPwd) {
		Member m = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("loginMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, userId);
			pstmt.setString(2, userPwd);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				m = new Member(rset.getInt("user_no"), 
							   rset.getString("user_id"), 
							   rset.getString("user_pwd"), 
							   rset.getString("user_name"),
							   rset.getString("user_ssn"),
							   rset.getString("user_nickname"),
							   rset.getString("user_phone"), 
							   rset.getString("user_email"), 
							   rset.getString("user_address"), 
							   rset.getString("user_profile"),
							   rset.getInt("user_grade"),
							   rset.getString("user_marketing"),
							   rset.getDate("user_enroll_date"),
							   rset.getDate("user_modify_date"),
							   rset.getString("user_type"),
							   rset.getString("user_status"),
							   rset.getString("user_img"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return m;
	}

	/** 회원가입을 위해 입력한 정보들로 멤버 객체를 받아 가입을 처리하는 메소드
	 *  @param conn
	 *  @param m : 회원 테이블에 추가되는 객체 m
	 *  @return  result : 처리 결과 (1 = 성공 / 0 = 실패) 
	 */
	public int insertMember(Connection conn, Member m) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, m.getUserId());
			pstmt.setString(2, m.getUserPwd());
			pstmt.setString(3, m.getUserName());
			pstmt.setString(4, m.getUserSsn());
			pstmt.setString(5, m.getUserNickname());
			pstmt.setString(6, m.getUserPhone());
			pstmt.setString(7, m.getUserEmail());
			pstmt.setString(8, m.getUserAddress());
			pstmt.setString(9, m.getUserMarketing());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	public int insertMemberAttachment(Connection conn, Member m, Attachment at) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertMemberAttachment");
				
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, at.getAttachmentOriginName());
			pstmt.setString(2, at.getAttachmentUpdateName());
			pstmt.setString(3, at.getAttachmentPath());
			pstmt.setInt(4, at.getAttachmentLevel());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	/** 아이디를 입력받아 중복확인을 처리하는 메소드
	 *  @param conn
	 *  @param checkId : 중복확인하고자 하는 id
	 *  @return count : 처리 결과 (1 = 중복 / 0 = 중복없음)
	 */
	public int idCheck(Connection conn, String checkId) {
		int count = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("idCheck");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, checkId);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				count = rset.getInt("count");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return count;
	}

	/** 전체 회원 정보 조회
	 *  @param conn 
	 *  @return list : 전체 회원 정보가 담긴 list
	 */
	public ArrayList<Member> selectMemberList(Connection conn) {
		ArrayList<Member> list = new ArrayList<Member>();
		
		ResultSet rset = null;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("selectMemberList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Member(rset.getInt("user_no")
								  , rset.getString("user_id")
								  , rset.getString("user_pwd")
								  , rset.getString("user_name")
								  , rset.getString("user_ssn")
								  , rset.getString("user_nickname")
								  , rset.getString("user_phone")
								  , rset.getString("user_email")
								  , rset.getString("user_address")
								  , rset.getString("user_profile")
								  , rset.getInt("user_grade")
								  , rset.getString("user_marketing")
								  , rset.getDate("user_enroll_date")
								  , rset.getDate("user_modify_date")
								  , rset.getString("user_type")
								  , rset.getString("user_status")
								  , rset.getString("user_img")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}

	/** 전체 회원 숫자 조회
	 *  @param conn
	 *  @return listCount : 전체 회원 숫자
	 */
	public int selectMemberListCount(Connection conn) {
		int listCount = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectMemberListCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				listCount = rset.getInt("COUNT");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return listCount;
	}

	/** 회원 제한 조회
	 *  @param conn
	 *  @param pi : 페이징 처리 객체
	 *  @return list : 회원 제한 list
	 */
	public ArrayList<Member> selectMemberLimitList(Connection conn, PageInfo pi) {
		ArrayList<Member> list = new ArrayList<Member>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectMemberLimitList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int startRow = (pi.getCurrentPage()-1) * pi.getBoardLimit() + 1;
			int endRow = startRow + pi.getBoardLimit() - 1;
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Member(rset.getInt("user_no")
						  , rset.getString("user_id")
						  , rset.getString("user_pwd")
						  , rset.getString("user_name")
						  , rset.getString("user_ssn")
						  , rset.getString("user_nickname")
						  , rset.getString("user_phone")
						  , rset.getString("user_email")
						  , rset.getString("user_address")
						  , rset.getString("user_profile")
						  , rset.getInt("user_grade")
						  , rset.getString("user_marketing")
						  , rset.getDate("user_enroll_date")
						  , rset.getDate("user_modify_date")
						  , rset.getString("user_type")
						  , rset.getString("user_status")
						  , rset.getString("user_img")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}

	/** 회원 id로 검색
	 *  @param conn
	 *  @param searchId : 조회하고자 하는 회원 id
	 *  @return m : 조회된 회원 객체 m
	 */
	public Member memberSearchId(Connection conn, String searchId) {
		Member m = null;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("memberSearchId");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, searchId);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				m = new Member(rset.getInt("user_no")
						     , rset.getString("user_id")
						     , rset.getString("user_pwd")
						     , rset.getString("user_name")
						     , rset.getString("user_ssn")
						     , rset.getString("user_nickname")
						     , rset.getString("user_phone")
						     , rset.getString("user_email")
						     , rset.getString("user_address")
						     , rset.getString("user_profile")
						     , rset.getInt("user_grade")
						     , rset.getString("user_marketing")
						     , rset.getDate("user_enroll_date")
						     , rset.getDate("user_modify_date")
						     , rset.getString("user_type")
						     , rset.getString("user_status")
						     , rset.getString("user_img"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return m;
	}

	/** 회원의 차단/차단해제를 처리하는 메소드
	 *  @param conn
	 *  @param userId : 차단/차단해제 하고자 하는 회원의 id
	 *  @param userStatus : 해당 회원의 차단/차단해제 상태값
	 *  @return result : 처리 결과 (1 = 성공 / 0 = 실패) 
	 */
	public int updateMemberBanAllow(Connection conn, String userId, String userStatus) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateMemberBanAllow");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, userStatus);
			pstmt.setString(2, userId);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	/** 회원의 Id를 검색해주는 메소드 
	 *  @param conn
	 *  @param name : 검색하고자 하는 회원의 이름
	 *  @param email : 검색하고자 하는 회원의 이메일
	 *  @return userId : 검색된 회원의 id
	 */
	public String searchIdMember(Connection conn, String name, String email){
		String userId = "";
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("searchId");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, name);
			pstmt.setString(2, email);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				userId = rset.getString("user_id");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return userId;
	}
	
	/** 회원의 pw를 검색해주는 메소드
	 *  @param conn
	 *  @param userId : 검색하고자 하는 회원의 id
	 *  @param name : 검색하고자 하는 회원의 이름
	 *  @param email : 검색하고자 하는 회원의 이메일
	 *  @return userPw : 검색된 회원의 pw
	 */
	public String searchPwMember(Connection conn, String userId, String name, String email) {
		
		String userPw = "";
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("searchPw");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, userId);
			pstmt.setString(2, name);
			pstmt.setString(3, email);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				userPw = rset.getString("user_pwd");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return userPw;
	}

	/** 회원탈퇴를 처리해주는 메소드
	 *  @param conn
	 *  @param userId : 탈퇴하고자 하는 회원의 id
	 *  @param userPwd : 탈퇴하고자 하는 회원의 pwd
	 *  @return result : 처리 결과 (1 = 성공 / 0 = 실패) 
	 */
	public int deleteMember(Connection conn, String userId, String userPwd) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, userId);
			pstmt.setString(2, userPwd);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	/** 회원정보수정을 처리해주는 메소드
	 *  @param conn
	 *  @param m : 수정하고자 하는 회원 객체 m
	 *  @return result : 처리 결과 (1 = 성공 / 0 = 실패) 
	 */
	public int updateMember(Connection conn, Member m) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, m.getUserPhone());
			pstmt.setString(2, m.getUserEmail());
			pstmt.setString(3, m.getUserAddress());
			pstmt.setString(4, m.getUserMarketing());
			pstmt.setString(5, m.getUserProfile());
			pstmt.setInt(6, m.getUserNo());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			close(pstmt);
		}
		return result;
	}
	
	/** 회원프로필사진수정을 처리해주는 메소드
	 *  @param conn
	 *  @param m : 수정하고자 하는 회원 객체 m
	 *  @param at : 수정하고자 하는 회원 사진 at
	 *  @return result : 처리 결과 (1 = 성공 / 0 = 실패)
	 */
	public int updateMemberAttachment(Connection conn, Member m, Attachment at) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateMemberAttachment");
				
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, m.getUserNo());
			pstmt.setString(2, at.getAttachmentOriginName());
			pstmt.setString(3, at.getAttachmentUpdateName());
			pstmt.setString(4, at.getAttachmentPath());
			pstmt.setInt(5, at.getAttachmentNo());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	/** 회원정보수정 이후, 갱신된 회원 정보를 조회해주는 메소드
	 *  @param conn
	 *  @param userNo : 조회하고자 하는 회원의 no
	 *  @return at : 조회하고자 하는 회원의 프로필 사진 at
	 */
	public Attachment selectMemberAttachment(Connection conn, int userNo) {
		Attachment at = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectMemberAttachment");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, userNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				at = new Attachment();
				at.setAttachmentNo(rset.getInt("attachment_no"));
				at.setAttachmentOriginName(rset.getString("attachment_origin_name"));
				at.setAttachmentUpdateName(rset.getString("attachment_update_name"));
				at.setAttachmentPath(rset.getString("attachment_path"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return at;
	}
	
	/** 회원정보수정 이후, 갱신된 회원 정보를 조회해주는 메소드
	 *  @param conn
	 *  @param userNo : 조회하고자 하는 회원의 no
	 *  @return updateMem : 갱신된 회원 객체
	 */
	public Member selectMember(Connection conn, int userNo) {
		Member m = null;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, userNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				m = new Member(rset.getInt("user_no")
					     , rset.getString("user_id")
					     , rset.getString("user_pwd")
					     , rset.getString("user_name")
					     , rset.getString("user_ssn")
					     , rset.getString("user_nickname")
					     , rset.getString("user_phone")
					     , rset.getString("user_email")
					     , rset.getString("user_address")
					     , rset.getString("user_profile")
					     , rset.getInt("user_grade")
					     , rset.getString("user_marketing")
					     , rset.getDate("user_enroll_date")
					     , rset.getDate("user_modify_date")
					     , rset.getString("user_type")
					     , rset.getString("user_status")
					     , rset.getString("user_img"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return m;
	}
	
	/** 회원의 찜/찜해제 상태를 조회해주는 메소드
	 *  @param conn
	 *  @param userNo : 조회하고자 하는 회원의 no
	 *  @param projectNo : 조회하고자 하는 프로젝트의 no
	 *  @return result : 조회 결과 (true = 찜 / false = 찜 해제)
	 */
	public boolean checkMemberLikes(Connection conn, int userNo, int projectNo) {
		boolean result = false;
		ResultSet rset = null;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("checkMemberLikes");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, userNo);
			pstmt.setInt(2, projectNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				String answer = rset.getString("likes_status");
				if(answer.equals("Y")) {
					result = true;
				}else {
					result = false;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	/** 회원의 찜 추가를 처리해주는 메소드
	 *  @param conn
	 *  @param userNo : 처리하고자 하는 회원의 no
	 *  @param projectNo : 처리하고자 하는 프로젝트의 no
	 *  @param likes : 현 상태값
	 *  @return result : 처리 결과 (1 = 성공 / 0 = 실패) 
	 */
	public int insertMemberLikes(Connection conn, int userNo, int projectNo, boolean likes) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertMemberLikes");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, userNo);
			pstmt.setInt(2, projectNo);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	/** 회원의 찜 해제를 처리해주는 메소드
	 *  @param conn
	 *  @param userNo : 처리하고자 하는 회원의 no
	 *  @param projectNo : 처리하고자 하는 프로젝트의 no
	 *  @param likes : 현 상태값
	 *  @return result : 처리 결과 (1 = 성공 / 0 = 실패) 
	 */
	public int deleteMemberLikes(Connection conn, int userNo, int projectNo, boolean likes) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteMemberLikes");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, userNo);
			pstmt.setInt(2, projectNo);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	/** 찜등록된 프로젝트를 조회해주는 메소드
	 *  @param conn
	 *  @param pi : 페이징 처리 객체
	 *  @return list : 찜목록 리스트
	 */
	public ArrayList<Project> selectProjectLikesList(Connection conn, PageInfo pi, int userNo) {
		ArrayList<Project> list = new ArrayList<Project>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectProjectLikesList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int startRow = (pi.getCurrentPage()-1) * pi.getBoardLimit() + 1;
			int endRow = startRow + pi.getBoardLimit() - 1;
			
			pstmt.setInt(1, userNo);
			pstmt.setInt(2, startRow);
			pstmt.setInt(3, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Project p = new Project();
				p.setProjectNo(rset.getInt("likes_project_no"));
				p.setProjectTitle(rset.getString("project_title"));
				p.setProjectTitleImg(rset.getString("titleimg"));
				p.setProjectFunding(rset.getInt("funding"));
				p.setProjectEnd(rset.getDate("project_end"));
				
				list.add(p);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}

	/** 회원의 창작자 정보를 조회해주는 메소드
	 *  @param conn
	 *  @param userNo : 조회하고자 하는 회원의 번호
	 *  @return m : 창작자 정보
	 */
	public Member selectMemberSellerList(Connection conn, int userNo) {
		Member m = null;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectMemberSellerList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, userNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				m = new Member();
				m.setSellerCount(rset.getInt("count"));
				m.setSellerFunding(rset.getInt("funding"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return m;
	}

	/** 회원의 창작자 정보를 조회해주는 메소드
	 *  @param conn
	 *  @param userNo : 조회하고자 하는 회원의 번호
	 *  @return m : 후원자 정보
	 */
	public Member selectMemberBuyerList(Connection conn, int userNo) {
		Member m = null;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectMemberBuyerList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, userNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				m = new Member();
				m.setBuyerCount(rset.getInt("count"));
				m.setBuyerFunding(rset.getInt("funding"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return m;
	}
	
	public int enrollKakao(Connection conn, Member m) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("enrollKakao");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, m.getUserId());
			pstmt.setString(2, m.getUserPwd());
			pstmt.setString(3, m.getUserName());
			pstmt.setString(4, m.getUserSsn());
			pstmt.setString(5, m.getUserNickname());
			pstmt.setString(6, m.getUserPhone());
			pstmt.setString(7, m.getUserEmail());
			pstmt.setString(8, m.getUserAddress());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
		
	}
	
	
}
