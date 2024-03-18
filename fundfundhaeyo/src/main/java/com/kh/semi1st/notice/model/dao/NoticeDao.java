package com.kh.semi1st.notice.model.dao;

import static com.kh.semi1st.common.JDBCTemplate.*;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.semi1st.notice.model.vo.Notice;
import com.kh.semi1st.project.model.dao.ProjectDao;

public class NoticeDao {
	
private Properties prop = new Properties();
	
	public NoticeDao() {
		String filePath = NoticeDao.class.getResource("/db/sql/tb_notice-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(filePath));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/** 알림 전체 조회 메소드
	 *  @param conn
	 *  @param userNo : 알림 수신자
	 *  @return list : 조회된 알림 목록
	 */
	public ArrayList<Notice> selectMemberNoticeAllList(Connection conn, int userNo) {
		ArrayList<Notice> list = new ArrayList<Notice>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectMemberNoticeAllList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, userNo);
			pstmt.setInt(2, userNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Notice n = new Notice();
				n.setNoticeNo(rset.getInt("notice_no"));
				n.setNoticeTitle(rset.getString("notice_title"));
				n.setNoticeContent(rset.getString("notice_content"));
				n.setNoticeWriter(rset.getString("notice_writer"));
				n.setNoticeCreateDate(rset.getString("notice_create_date"));
				n.setNoticeType(rset.getInt("notice_type"));
				n.setNoticeStatus(rset.getString("notice_status"));
				n.setNoticeReceiverNo(rset.getInt("notice_receiver_no"));
				n.setNoticeAnnouncementNo(rset.getInt("notice_announcement_no"));
				n.setNoticeProjectNo(rset.getInt("notice_project_no"));
				n.setNoticeQnaNo(rset.getInt("notice_qna_no"));
				n.setNoticeImg(rset.getString("notice_img"));
				
				list.add(n);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}

	/** 공지 알림 조회 메소드
	 *  @param conn
	 *  @param type : 조회하고자 하는 알림 타입(공지)
	 *  @return list : 조회된 알림 목록
	 */
	public ArrayList<Notice> selectMemberNoticeAnnouncementList(Connection conn, int type) {
		ArrayList<Notice> list = new ArrayList<Notice>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectMemberNoticeAnnouncementList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, type);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Notice n = new Notice();
				n.setNoticeNo(rset.getInt("notice_no"));
				n.setNoticeTitle(rset.getString("notice_title"));
				n.setNoticeContent(rset.getString("notice_content"));
				n.setNoticeWriter(rset.getString("notice_writer"));
				n.setNoticeCreateDate(rset.getString("notice_create_date"));
				n.setNoticeType(rset.getInt("notice_type"));
				n.setNoticeStatus(rset.getString("notice_status"));
				n.setNoticeReceiverNo(rset.getInt("notice_receiver_no"));
				n.setNoticeAnnouncementNo(rset.getInt("notice_announcement_no"));
				
				list.add(n);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	/** 프로젝트 알림 조회 메소드
	 *  @param conn
	 *  @param type : 조회하고자 하는 알림 타입(프로젝트)
	 *  @return list : 조회된 알림 목록
	 */
	public ArrayList<Notice> selectMemberNoticeProjectList(Connection conn, int userNo, int type) {
		ArrayList<Notice> list = new ArrayList<Notice>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectMemberNoticeProjectList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, type);
			pstmt.setInt(2, userNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Notice n = new Notice();
				n.setNoticeNo(rset.getInt("notice_no"));
				n.setNoticeTitle(rset.getString("notice_title"));
				n.setNoticeContent(rset.getString("notice_content"));
				n.setNoticeWriter(rset.getString("notice_writer"));
				n.setNoticeCreateDate(rset.getString("notice_create_date"));
				n.setNoticeType(rset.getInt("notice_type"));
				n.setNoticeStatus(rset.getString("notice_status"));
				n.setNoticeReceiverNo(rset.getInt("notice_receiver_no"));
				n.setNoticeImg(rset.getString("notice_img"));
				n.setNoticeProjectNo(rset.getInt("notice_project_no"));
				
				list.add(n);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}

	/** QNA 알림 조회 메소드
	 *  @param conn
	 *  @param type : 조회하고자 하는 알림 타입(QNA)
	 *  @return list : 조회된 알림 목록
	 */
	public ArrayList<Notice> selectMemberNoticeQNAList(Connection conn, int userNo, int type) {
		ArrayList<Notice> list = new ArrayList<Notice>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectMemberNoticeQNAList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, type);
			pstmt.setInt(2, userNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Notice n = new Notice();
				n.setNoticeNo(rset.getInt("notice_no"));
				n.setNoticeTitle(rset.getString("notice_title"));
				n.setNoticeContent(rset.getString("notice_content"));
				n.setNoticeWriter(rset.getString("notice_writer"));
				n.setNoticeCreateDate(rset.getString("notice_create_date"));
				n.setNoticeType(rset.getInt("notice_type"));
				n.setNoticeStatus(rset.getString("notice_status"));
				n.setNoticeReceiverNo(rset.getInt("notice_receiver_no"));
				n.setNoticeQnaNo(rset.getInt("notice_qna_no"));
				
				list.add(n);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}

}
