package com.kh.semi1st.member.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import static com.kh.semi1st.common.JDBCTemplate.*;

import com.kh.semi1st.common.model.vo.PageInfo;
import com.kh.semi1st.member.model.vo.Member;

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
	 * @param conn
	 * @param userId
	 * @param userPwd
	 * @return
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
							   rset.getString("user_status"));
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
	 * @param conn
	 * @param m
	 * @return
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
	
	/** 아이디를 입력받아 중복확인을 처리하는 메소드
	 * @param conn
	 * @param checkId
	 * @return
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
								  , rset.getString("user_status")));
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
						  , rset.getString("user_status")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}
	
	public ArrayList<Member> searchIdMember(Connection conn, String name, String email){
		
		ArrayList<Member> list = new ArrayList<Member>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("searchId");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, name);
			pstmt.setString(2, email);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				list.add(new Member(rset.getString("user_id")));
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
}
