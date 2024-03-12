package com.kh.semi1st.helpCenter.model.dao;

import static com.kh.semi1st.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.semi1st.common.model.vo.PageInfo;
import com.kh.semi1st.helpCenter.model.dao.AnnouncementDao;
import com.kh.semi1st.helpCenter.model.vo.Announcement;

public class AnnouncementDao {
	
private Properties prop = new Properties();
	
	public AnnouncementDao() {
		try {
			prop.loadFromXML(new FileInputStream(AnnouncementDao.class.getResource("/db/sql/tb-announcement-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<Announcement> selectAnnouncementList(Connection conn) {
		ArrayList<Announcement> list = new ArrayList<Announcement>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectAnnouncementList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Announcement(rset.getInt("announcement_no"),
									      rset.getString("announcement_title"),
									      rset.getString("user_nickname"),
									      rset.getInt("announcement_count"),
									      rset.getDate("announcement_create_date")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	/** 공지사항 제한 조회
	 *  @param  conn
	 *  @param  pi : 페이징 처리 객체
	 *  @return list : 공지사항 제한 list
	 */
	public ArrayList<Announcement> selectAnnouncementLimitList(Connection conn, PageInfo pi) {
		ArrayList<Announcement> list = new ArrayList<Announcement>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectAnnouncementLimitList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int startRow = (pi.getCurrentPage()-1) * pi.getBoardLimit() + 1;
			int endRow = startRow + pi.getBoardLimit() - 1;
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Announcement(rset.getInt("announcement_no"),
									      rset.getString("announcement_title"),
									      rset.getString("user_nickname"),
									      rset.getInt("announcement_count"),
									      rset.getDate("announcement_create_date")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}

	/** 공지사항 전체 게시글 수 조회
	 *  @param conn
	 *  @return listCount : 전체 개시글 수
	 */
	public int selectAnnouncementListCount(Connection conn) {
		int listCount = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectAnnouncementListCount");
		
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
	
	/** 공지사항 조회시 조회수 증가
	 *  @param conn
	 *  @param announcementNo
	 *  @return
	 */
	public int increaseCount(Connection conn, int announcementNo) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("increaseCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, announcementNo);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	

	/** 공지사항 상세조회
	 *  @param conn
	 *  @param announcementNo
	 *  @return
	 */
	public Announcement selectAnnouncement(Connection conn, int announcementNo) {
		Announcement a = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectAnnouncement");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, announcementNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				a = new Announcement(rset.getInt("announcement_no"),
						             rset.getString("announcement_title"),
						             rset.getString("announcement_content"),
						             rset.getString("user_nickname"),
						             rset.getInt("announcement_count"),
						             rset.getDate("announcement_create_date"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return a;
	}
	
	/** 공지사항 상세조회 이전버튼
	 *  @param conn
	 *  @param announcementNo
	 *  @return
	 */
	public Announcement selectAnnouncementBefore(Connection conn, int announcementNo) {
		Announcement before = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectAnnouncementBefore");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, announcementNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				before = new Announcement(rset.getInt("announcement_no"),
										  rset.getString("announcement_title")); 
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return before;
	}
	
	/** 공지사항 상세조회 다음버튼
	 *  @param conn
	 *  @param announcementNo
	 *  @return
	 */
	public Announcement selectAnnouncementAfter(Connection conn, int announcementNo) {
		Announcement after = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectAnnouncementAfter");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, announcementNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				after = new Announcement(rset.getInt("announcement_no"),
						 				 rset.getString("announcement_title"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return after;
	}

}
